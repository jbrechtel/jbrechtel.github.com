#! /bin/bash

#shamelessly stolen from retronym.github.com

LINKS=`for f in $(find . \( ! -path '*/.*' \) \( ! -name 'index.html' \) -type f); do   echo "<a href='$f'>$f</a></br>"; done`

cat <<-EOF 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>jbrechtel.github.com</title>
    <script type="text/javascript" src="script.js"></script>
  </head>
  <body>
  <h1>Repository Contents</h1>
  $LINKS
  </body>
</html>
EOF