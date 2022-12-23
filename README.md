# extension-twitter-no-views
Hides the annoying view count on Twitter with CSS. No JavaScript 🙅‍♂️

1. Download zip
2. Unzip
3. Go to chrome://extensions
4. Load unpacked extension
5. Choose the zip file
6. ????
7. Profit

---

If you're using [Tampermonkey](https://www.tampermonkey.net/) or [User Javascript and CSS](https://chrome.google.com/webstore/detail/user-javascript-and-css/nbhcbdghjpllgmfilhnhkllmkecfmpld) you can use this CSS

```
div:has(> div > a[href*="analytics"]) {
    display: none !important;
}
```
