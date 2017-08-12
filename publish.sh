#!/bin/bash
rm -R build/*  
cp -r node_modules build/
zip -r build/index.zip node_modules/* index.js
aws lambda update-function-code --function-name CeylonExplorer --zip-file fileb://build/index.zip
