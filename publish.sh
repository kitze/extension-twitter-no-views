#!/bin/bash

# Get the current version from the manifest
current_version=$(grep "\"version\"" manifest.json | awk '{print $2}' | sed 's/[",]//g')

# Split the version into major and minor parts
major=$(echo $current_version | cut -d'.' -f1)
minor=$(echo $current_version | cut -d'.' -f2)

# Increment the minor version
new_minor=$((minor + 1))

# Construct the new version string
new_version="$major.$new_minor"

# Update the manifest with the new version
sed -i '' "s/$current_version/$new_version/" manifest.json

git commit -am "Bump version to $new_version"

# Push the commit to the "main" branch
git push origin main

# Zip the folder and append the new version to the file name
zip -r -X "$(basename $PWD)_$new_version.zip" .

# Open the zipped file in Finder
open .
