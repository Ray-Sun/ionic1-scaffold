#!/bin/bash
echo "Remove OLD images from www folder..."
rm www/img/*

echo "Move NEW images to www folder..."
cp app/img/* www/img/