function getXHR(filename) {
  console.info("About to get", chrome.extension.getURL(filename), "with XHR");
  var xhr = new XMLHttpRequest();
  xhr.onload = function() { console.log("Got", this.responseText); }
  xhr.open("GET", chrome.extension.getURL(filename))
  xhr.overrideMimeType("text/plain")
  try {
    xhr.send();
  } catch (e) {
    console.error("Caught error:", e.message);
  }
}

function getFetch(filename) {
  console.info("About to get", chrome.extension.getURL(filename), "with fetch");
  fetch(chrome.extension.getURL(filename))
    .then(response => response.text())
    .then(text => console.log("Got", text))
    .catch(e => console.error("Caught error:", e.message));
}

setTimeout(console.info.bind(console, "-- These should work --"), 0);
setTimeout(getXHR.bind(null, "resource.json"), 250);
setTimeout(getFetch.bind(null, "resource.json"), 500);

setTimeout(console.info.bind(console, "-- These should fail --"), 1000);
setTimeout(getXHR.bind(null, "not-a-resource.json"), 1250);
setTimeout(getFetch.bind(null, "not-a-resource.json"), 1500);
