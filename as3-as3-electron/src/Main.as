/*
const applications:* = require('electron').app;
const ipcMain:* = require('electron').ipcMain;
const browserWindow:* = require('electron').BrowserWindow;
*/

package {

  /**
  * Main entry point for our AS3 
  Unable to find Electron app at /Users/user/Documents/as3/as3-as3-electron/bin

Cannot find module '/Users/user/Documents/as3/as3-as3-electron/bin'
Require stack:
Unable to find Electron app at /Users/user/Documents/as3/as3-as3-electron/bin

Solution: 
Path to main project not pointed to in package.json: 

{
  "name": "as3-actionscript-electron",
  "version": "1.0.0",
  "description": "Electron, AS3 and ActionScript",
  "main": "bin/main.js", <--- point to correct folder or check launch working directory
- 
  **/
	public class Main {
    
    public var BrowserWindow:Class = require("electron").BrowserWindow;

		public function Main() {
      console.log( "Main process " + process.version);
      // Keep a global reference of the window object. If you don't, the window will
      // close automatically when the JavaScript object is garbage collected.
      var app:* = require("electron").app;
      var ipcMain:* = require("electron").ipcMain;

      // This method will be called when Electron has finished
      // initialization and is ready to create browser windows.
      // Some APIs can only be used after this event occurs.
      app.on('ready', createWindow)

      // Quit when all windows are closed.
      app.on('window-all-closed', function():void {
        // On macOS it is common for applications and their menu bar
        // to stay active until the user quits explicitly with Cmd + Q
        //if (process.platform !== 'darwin') {
          app.quit();
        //}
      })

      app.on('activate', function():void {
        // On macOS it's common to re-create a window in the app when the
        // dock icon is clicked and there are no other windows open.
        if (win === null) {
          createWindow();
        }
      })

      // In this file you can include the rest of your app's specific main process
      // code. You can also put them in separate files and require them here.
      ipcMain.on("callCommand", function(event:Event, item:*):void {
        console.log("Main process received message");
        //var roadHouse:RoadHouse = new RoadHouse();
        //console.log("Is running:" + roadHouse.isRunning());

        var output:String = "Message received. " + process.release.name + " " + process.version;
        win.webContents.send("rendererMessage", "output:" + output);
      })
    }

    public var win:Object;

    public function createWindow ():void {
      // Create the browser window.
      win = new BrowserWindow({
        width: 800,
        height: 600,
        webPreferences: {
          nodeIntegration: true
        }
      })

      // and load the index.html of the app.
      var homePage:String = __dirname + "/index.html";
      console.log("Loading home page: " + homePage);

      win.loadFile(homePage);

      // Open the DevTools.
      //win.webContents.openDevTools()

      // Emitted when the window is closed.
      win.on('closed', function():void {
        // Dereference the window object, usually you would store windows
        // in an array if your app supports multi windows, this is the time
        // when you should delete the corresponding element.
        win = null;
      })
    }
	}
}