export class RoadHouse {
    public status: string = "ready";
    private _output: string = "";
    readonly startTime = Date.now();
    private running: boolean = false;
 
    constructor(private _message: String = "", private _prompt: String = "") {
        //super();
        //this.setStatus(_message);
    }
 
    handleError(message: RoadHouse | string): void {
        this.setStatus("Status.Failed");
        if (message) {
           // 
        }
    }
 
    isRunning(): boolean {
        return this.running; // breakpoint set here
    }
 
    setStatus(value: string) {
        this._output = value;
    }
 
    start():void {
        this.running = true;
    }
 
    stop():void {
        this.running = false;
    }
 }