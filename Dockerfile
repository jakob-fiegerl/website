FROM node:20 AS base

FROM base AS build
RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --frozen-lockfile
RUN pnpm run build

# Ensure `"type": "module"` is set in package.json
COPY --from=build /app/package.json /app/package.json
# Production dependencies
COPY --from=build /app/node_modules /app/node_modules
# Application
COPY --from=build /app/dist /app
ENV NODE_ENV production
CMD ["node", "./dist/index.js"]
