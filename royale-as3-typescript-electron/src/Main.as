
package {

   /**
    * Main entry point for our AS3 
    **/
	public class Main {

		public function Main() {
			messageLabel = document.createElement( "p" ) as HTMLParagraphElement;
			messageLabel.textContent = "This is AS3 (click me)";
         messageLabel.style.setProperty("cursor", "pointer");
         messageLabel.id = "messageLabel";
			document.body.appendChild( messageLabel );
         messageLabel.addEventListener("click", clickHandler);

         // add listeners from our electron main.js
         //console.log("Hello", process.release.name, process.version);
         //dns.lookup("localhost", null, dnsLookupCallback);
         ipcRenderer.on(RENDERER_MESSAGE, rendererMessageHandler);
      }

      // event names
      public const RENDERER_MESSAGE:String = "rendererMessage";

      // vars after constructor
      public var isDesktop:Boolean = window["require"]("electron")!=null;
      public var electron:Object = window["require"]("electron");
      public var ipcRenderer:Object = electron.ipcRenderer;
      public var applicationDirectory:String = window["__dirname"];
      public var fileName:String = window["__filename"];
      public var messageLabel:HTMLParagraphElement;

      public function clickHandler(event:Event):void {
         ipcRenderer.send("callCommand", "hello");
      }

      public function rendererMessageHandler(event:Object, data:Object):void {
         messageLabel.innerText = data;
         
         trace("Data received:", data);
      }
	}
}