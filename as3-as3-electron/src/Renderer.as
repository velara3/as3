
package {

   /**
    * Main entry point for our AS3 
    **/
	public class Renderer {

		public function Renderer() {
         console.log("Renderer AS3 found")
			messageLabel = document.createElement( "p" ) as HTMLParagraphElement;
			messageLabel.textContent = "This is AS3 (click me)";
         messageLabel.style.setProperty("cursor", "pointer");
         messageLabel.id = "messageLabel";
			document.body.appendChild( messageLabel as Node );
         messageLabel.addEventListener("click", clickHandler);

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

      private function dnsLookupCallback(error:Object, address:String):void {
         console.log("The address of localhost is:", address);
      }

      public function clickHandler(event:Event):void {
         ipcRenderer.send("callCommand", "hello");
      }

      public function rendererMessageHandler(event:Object, data:Object):void {
         messageLabel.innerText = data;
         
         trace("Data received:", data);
      }
	}
}