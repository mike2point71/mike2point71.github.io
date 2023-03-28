```javascript
Array.prototype.slice.call(document.getElementsByClassName("transaction-amount"),0, -1).map((e)=>{return parseFloat(e.outerText.substring(2));}).reduce((a, b) => a + b, 0);
```
