

export class RoadHouse extends Object {
   public status: String = "ready";
   private _output: String = "";
   readonly startTime = Date.now();
   private running: boolean = false;

   constructor(private _message: String = "", private _prompt: String = "") {
       super();
       //this.setStatus(_message);
   }

   async execute(): Promise<void> {
       try {
           //await CommandExecutor.execute(this);
       } catch (exception) {
           this.handleError(exception);
       } finally {
           //this.emit("end");
       }
   }

   handleError(message: RoadHouse | string): void {
       this.setStatus("Status.Failed");
       if (message) {
          // 
       }
   }

   isRunning(): boolean {
       return this.running;
   }

   setStatus(value: String) {
       this._output = value;
   }
}