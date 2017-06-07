/**
 * 
 * More info at https://developer.mozilla.org/en-US/docs/AJAX/Getting_Started
 */

makeRequest('foo.php', elem);

function makeRequest(url, elem) {

    httpRequest = new XMLHttpRequest();

    if (!httpRequest) {
        return false;
    }

    httpRequest.onreadystatechange = alertContents;
    httpRequest.open('POST', url);
    httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    httpRequest.send('variable=' + encodeURIComponent(elem));
}



function alertContents() {
    if (httpRequest.readyState === XMLHttpRequest.DONE) {
        if (httpRequest.status === 200) {

            var IhaveFxDetails = JSON.parse(httpRequest.responseText);
        } else {
            return false;
        }
    }
}
