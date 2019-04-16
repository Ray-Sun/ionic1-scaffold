#!/bin/bash
echo "Remove Old app.js and directives.js from www folder..."
rm www/js/app.js
rm www/js/directives.js

echo "Move NEW app.js and directives.js to www folder..."
cp app/Application/app.js www/js/
cp app/Application/directives.js www/js/