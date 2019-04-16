#!/bin/bash
echo "Remove OLD html js to www folder..."
rm www/index.html
rm www/templates/*

echo "Move NEW html js to www folder..."
cp app/index.html www/index.html
cp app/*/*.html www/templates/