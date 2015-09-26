try {
  console.info("@@extension_id is", chrome.i18n.getMessage("@@extension_id"));
} catch(e) {
  console.error("Caught error:", e.message);
}
