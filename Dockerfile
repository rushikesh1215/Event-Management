
FROM node:20-alpine AS base

WORKDIR /app


COPY package.json package-lock.json* ./
RUN npm ci


COPY . .


RUN npx prisma generate

# Build app with env secret
# $env:DOCKER_BUILDKIT=1 docker build --secret id=envfile,src=.env -t event-app .
#run this command to avoid leak of env vars in you img layers

RUN --mount=type=secret,id=envfile \
    export $(cat /run/secrets/envfile | xargs) && \
    npm run build


FROM node:20-alpine AS runner

WORKDIR /app


COPY --from=base /app/.next/standalone ./
COPY --from=base /app/.next/static ./.next/static
COPY --from=base /app/public ./public


COPY --from=base /app/generated ./generated

EXPOSE 3000

CMD ["node", "server.js"]