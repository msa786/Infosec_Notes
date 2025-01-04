<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Download File</title>
</head>
<body>
    <h1>Welcome! Your file is downloading...</h1>

    <script type="text/javascript">
        // Trigger the download automatically when the page is loaded
        window.onload = function() {
            var link = document.createElement('a'); // Create an anchor element
            link.href = 'path/to/your/file.zip'; // Specify the file path
            link.download = 'your-file.zip'; // Set the file name to be downloaded
            document.body.appendChild(link); // Add the link to the page (not visible)
            link.click(); // Simulate a click to start the download
            document.body.removeChild(link); // Remove the link after download starts
        };
    </script>
</body>
</html>


Explanation:
window.onload: When the page is loaded, the window.onload function is triggered, starting the file download process.
Creating an anchor tag (<a>): The anchor tag is created dynamically using JavaScript (document.createElement('a')).
Setting file path and name: The href attribute is set to the file's path you want to download, and the download attribute is used to specify the filename.
Triggering the download: The click() method is called to simulate a click event, starting the download of the file.
Cleaning up: The link element is removed from the document after the download is triggered.
Notes:
Replace 'path/to/your/file.zip' with the actual path to the file you want to automatically download.
The download attribute works with most modern browsers and can specify the name of the downloaded file.
Ensure the file is accessible on the server, and it's correctly linked.