package flashx.textLayout.container
{
   import flash.events.Event;
   
   public interface ISandboxSupport
   {
       
      
      function beginMouseCapture() : void;
      
      function endMouseCapture() : void;
      
      function mouseUpSomewhere(event:Event) : void;
      
      function mouseMoveSomewhere(event:Event) : void;
   }
}
