FROM node:20-alpine as base
WORKDIR /app

FROM base as dependencies-prod
COPY ["package.json", "package-lock.json", "./"]
RUN npm ci --omit=dev

FROM base as final
ENV NODE_ENV=production
COPY --from=dependencies-prod /app/node_modules ./node_modules
COPY src .
CMD ["node", "index.js"]
