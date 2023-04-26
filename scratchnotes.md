
## Summing transactions on BofA webpage.

```javascript
var anotherShowMoreButton = () => { return document.evaluate("//a[contains(text(),'Show More')]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; } ;

Array.prototype.slice
    .call(
        document.getElementsByClassName("transaction-amount"),
        0, 
        -1)
    .map((e)=>{
        return parseFloat(e.outerText.substring(2));})
    .reduce((a, b) => a + b, 0);
```


## URL Encode with jq

```bash
jq -rn --arg x 'input text' '$x|@uri'
```
