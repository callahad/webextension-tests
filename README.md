# WebExtension Tests

A collection of extensions to test Firefox's support for [WebExtensions](https://wiki.mozilla.org/WebExtensions).

Each folder has its own README describing the test and linking back to Bugzilla.

Most extensions are designed to run on [example.com](http://example.com).

## Using this repository

> Note: To test in Firefox, you must use Nightly or DevEdition and set
> `xpinstall.signatures.required` to `false` in about:config.

1. Clone this repo.
2. Run `make` to zip each add-on into a standalone `.xpi` file.
3. Drag the desired `.xpi` file into Firefox and choose "Install."
4. Visit [example.com](http://example.com) and view the browser console.

To check parity with Chrome:

> Note: To test in Chrome, "Developer Mode" must be enabled in chrome://extensions/.

1. Visit chrome://extensions/.
2. Click "Load Unpacked Extension".
3. Select the desired extension's folder.
4. Visit [example.com](http://example.com) and view the browser console.
