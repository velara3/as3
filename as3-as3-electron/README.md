# Electron Example
This project creates a desktop app in Electron using ActionScript 3 and Royale for the page code, the renderer, and ActionScript 3 for the node code, the main process. There should be fall back support for JavaScript but has not been tested. 

This project is mostly meant to be used with Visual Studio Code but you can get it running without it. Related instructions are [here](https://royale.codeoscopic.com/how-to-create-a-desktop-application-with-royale-and-electron/) and [here](https://github.com/BowlerHatLLC/vscode-as3mxml/wiki)

In an Electron app there are two main parts, the Main process and the Renderer process. Electron is basically a browser with a node.js server and the web pages you want to load built in. 

The Main process is the code in Main.as and the code that you want to use for the UI, your web page, the alternative to JavaScript is the ActionScript3 in Renderer.as. 

There is third part of this and that's the template.html page. You can use Web Export plugin for Adobe XD to create the UI and using the template value, export a template that helps you visually design your application. 

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
