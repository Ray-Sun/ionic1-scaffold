#!/bin/bash
echo "Modules Controller Contating..."
gulp js-concat --jsFiles "app/*/*Ctrl.js" --fileName "modulesControllers.js" --des "./app/"
echo "Module Controller Contated."

echo "Module and Main Controller Contating..."
gulp js-concat --jsFiles "app/Application/mainControllers.js-app/modulesControllers.js" --fileName "controllers.js" --des "./www/js/"
echo "Module and Main Controller Contated."

echo "Module Services Contating..."
gulp js-concat --jsFiles "app/*/*Service.js" --fileName "modulesServices.js" --des "./app/"
echo "Module Services Contated."

echo "Module and Main Services Contating..."
gulp js-concat --jsFiles "app/Application/mainServices.js-app/modulesServices.js" --fileName "services.js" --des "./www/js/"
echo "Module and Main Services Contated."

echo "Remove temp files..."
rm app/modulesControllers.js
rm app/modulesServices.js