# Electron Example using ActionScript 3 for the Renderer and Main processes
This project creates a desktop app in Electron using ActionScript 3 and Royale for the page code, the renderer, and ActionScript 3 for the node code, the main process. There should be fall back support for JavaScript but has not been tested. 

This project is mostly meant to be used with Visual Studio Code but you can get it running without it. Related instructions are [here](https://royale.codeoscopic.com/how-to-create-a-desktop-application-with-royale-and-electron/) and [here](https://github.com/BowlerHatLLC/vscode-as3mxml/wiki)

In an Electron app there are two main parts, the Main process and the Renderer process. Electron is basically a browser with a node.js server and the web pages you want to load built in. 

The Main process is for the application code and accessing node.js libraries. This is Main.as. 

The UI, provided by your web page, uses ActionScript 3, instead of JavaScript and is Renderer.as. 

In the Main.as process you load in the web page that you will be using as a UI. 

Both the Main.as and Renderer.as ActionScript 3 files are transcoded to JavaScript by mxmljsc called by the [NextGenAS3](https://github.com/BowlerHatLLC/vscode-as3mxml) plugin for VSC. The Renderer.as is initiated as a class on the web page you load in. 

There is third part of this and that's the template.html page in the root directory. You can use Web Export plugin for Adobe XD to create the UI and using the template value, export a template that helps you visually design your application. An example of this will be provided soon or available upon request. 

# To use:

1. Clone this project and open in VSC. 
2. Point to the Apache Royale SDK (required)
2. Open Debug view and click on Debug Main Process or Debug Renderer Process

# Important Notes

Pay attention to the working directory in the launch.jso configuration: 

    "appDir": "${workspaceRoot}/bin/js-debug/"
    "cwd": "${workspaceRoot}/bin/js-debug/"
    
the page you are loading in the Main.as:

    var homePage:String = __dirname + "/index.html";
    win.loadFile(homePage);
    
and the page you are loading in the package.json: 

    "main": "bin/js-debug/Main.js"
