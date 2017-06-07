/**
 * 
 * More info at https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Statements/for...in
 */

var obj = IhaveFxDetails.GBPXR;
for (var prop in obj) {
    GBPXR[prop] = obj[prop];
    GBPXRCUR[prop] = IhaveFxDetails.GBPXRCUR.prop;
}

