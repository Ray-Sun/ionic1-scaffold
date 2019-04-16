# ionic1-scaffold
shell script which can make dev easily with ionic 1 

* init a new project (init.sh)
    * use ionic new a project
    * copy other shell scripts to the project
    * npm install
    * replace the new gulpfile
    * make the main module
    * add differet devices css files based on device config
* make module (makeModule.sh)
    * make dir for the module
    * add controller and service js files for the module
    * add scss and html files for the module
    * add special devices css files for the module
* concat files and replace resources; be ready for building application
    * replace html file
    * replace image files
    * concat css files from the main module and the different sub modules
    * concat js files from the main module and the different sub modules
* build application (ionicBuild)
* config files for different devices
    * androidDeviceList.config
    * iosDeviceList.config
