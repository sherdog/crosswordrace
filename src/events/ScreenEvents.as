package events
{
	import starling.events.Event;
	
	public class ScreenEvents extends Event
	{
		public static const CHANGE_SCREEN:String = "changeScreen";
		
		public var _params:Object;
		
		public function ScreenEvents(type:String, params:Object=null, bubbles:Boolean=false)
		{
			super(type, bubbles);
			this._params = params;
		}
	}
}