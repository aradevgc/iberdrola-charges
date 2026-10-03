module.exports = {
  uiPort: process.env.PORT || 1880,
  flowFile: "flows.json",
  // flows_cred.json solo contiene la referencia ${TELEGRAM_TOKEN}, no el token real
  credentialSecret: false,
  // Editor desactivado: la URL pública de Suga no expone nada editable
  disableEditor: true,
  logging: { console: { level: "info" } }
};
