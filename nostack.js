var mostRecent = "https://www.facebook.com/?sk=h_chr";
var selector = 'a[href="https://www.facebook.com/?ref=logo"]';
var nodes = document.querySelectorAll(selector);
// for...in construct doesn't work: https://stackoverflow.com/a/53915628/493161
for (var i = 0; i < nodes.length; i++) nodes[i].href = mostRecent;
