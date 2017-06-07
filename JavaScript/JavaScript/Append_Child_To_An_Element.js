
/**
 * 
 * Create a <li> node
 */
var node = document.createElement("LI");

/**
 * 
 * Create a text node
 */
var textnode = document.createTextNode("Water");

/**
 * 
 * Append the text to <li>
 */
node.appendChild(textnode);

/**
 * 
 * Append <li> to <ul> with id="myList"
 */
document.getElementById("myList").appendChild(node);