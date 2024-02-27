#!/bin/bash

img_dir="images/"
output_file="gallery.html"

echo "<html>
<head>
<title>Галерея</title>
<style>
img {
    width: 200px;
    height: 200px;
    padding: 10px;
}
</style>
</head>
<body>
<h1>Галерея</h1>
<div>" > $output_file

for img in $img_dir/*.{jpg,jpeg,png}; do
    echo "<img src=\"$img\" alt=\"\">" >> $output_file
done

echo "</div>
</body>
</html>" >> $output_file

