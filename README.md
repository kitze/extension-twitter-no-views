# extension-twitter-no-views
Hides the annoying view count on Twitter with CSS. No JavaScript 🙅‍♂️

If you're using [Tampermonkey](https://www.tampermonkey.net/) or [User Javascript and CSS](https://chrome.google.com/webstore/detail/user-javascript-and-css/nbhcbdghjpllgmfilhnhkllmkecfmpld) you can use this CSS

```
div:has(> div > a[href*="analytics"]) {
    display: none !important;
}
```
