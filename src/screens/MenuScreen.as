package screens
{
	import starling.display.Button;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextField;
	
	public class MenuScreen extends Sprite
	{
		private var background:Quad; //background color
		private var _game:Game;
		private var _title:TextField;
		private var _startButton:Button;
		
		public function MenuScreen(game:Game)
		{
			super();
			_game = game;
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			initListeners();
			
			initialize();
		}
		
		public function initialize():void
		{
			background = new Quad(_game.screenWidth, _game.screenHeight, 0xFF0000);
			addChild(background);
			
			_title = new TextField(350,50, "Crossword Race", "Arial", 40, 0x000000);
			_title.x = _game.screenWidth / 2 - 175
			_title.y = 100;
			
			addChild(_title);
			
			
			
		}
		
		private function initListeners():void
		{
			
		}
		
		private function killListeners():void
		{
			
		}
	}
}