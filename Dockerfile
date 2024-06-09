# https://pnpm.io/docker#example-1-build-a-bundle-in-a-docker-container

FROM node:20-slim As base
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

COPY --chown=node:node . ./app
WORKDIR /app
USER node

FROM base AS build
RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --frozen-lockfile
RUN pnpm run build

# Not Natively support ARM64 (M1)
FROM alpine:3.19 As production

ENV PORT=3333

# Make sure `"type": "module"` is set in package.json
COPY --from=build /app/package.json /app/package.json
# Production dependencies
COPY --from=build /app/node_modules /app/node_modules
# Application
COPY --from=build /app/dist /app

RUN apk add --update --no-cache nodejs=$NODE_VERSION


EXPOSE ${PORT}

# Create a group and user
RUN addgroup -g 1000 node \
    && adduser -u 1000 -G node -s /bin/sh -D node

USER node

CMD [ "node", "app/main.js" ]
