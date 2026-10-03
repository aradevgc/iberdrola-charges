   FROM nodered/node-red:latest

   WORKDIR /data
   COPY --chown=node-red:root package.json /data/package.json
   RUN npm install --unsafe-perm --no-update-notifier --no-fund --omit=dev

   COPY --chown=node-red:root settings.js /data/settings.js
   COPY --chown=node-red:root flows.json /data/flows.json
   COPY --chown=node-red:root flows_cred.json /data/flows_cred.json

   WORKDIR /usr/src/node-red
   EXPOSE 1880
