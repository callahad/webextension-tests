try {
  console.info("chrome.extension.inIncognitoContext is", chrome.extension.inIncognitoContext);
} catch(e) {
  console.error("Caught error:", e.message);
}
