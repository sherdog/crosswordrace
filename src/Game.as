package
{
	import flash.geom.Rectangle;
	
	import events.ScreenEvents;
	
	import screens.MenuScreen;
	
	import starling.core.Starling;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var menuScreen:MenuScreen;
		private var viewPort:Rectangle;
		
		public function Game()
		{
			super();
			viewPort = Starling.current.viewPort;
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			init();
			addEventListener(ScreenEvents.CHANGE_SCREEN, onChangeScreen);
		}		
		
		private function onChangeScreen(event:ScreenEvents):void
		{
			switch(event._params.id)
			{
				case "play":
					//load the game screen now!
					menuScreen.dispose();

					break;
			}
			
		}
		
		public function get screenWidth ():int {
			return viewPort.width;	
		}
		
		public function get screenHeight ():int {
			return viewPort.height;	
		}
		
		private function init():void
		{
			
			trace('boom we are starting the dam game gah!');
			menuScreen = new MenuScreen(this);
			menuScreen.initialize();
			addChild(menuScreen);
			
			
			
		}
		
		protected function updateGame (dt:Number):void {}
		
	}
}