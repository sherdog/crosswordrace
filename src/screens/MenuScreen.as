package screens
{
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class MenuScreen extends Sprite
	{
		private var background:Quad; //background color
		private var _game:Game;
		private var _title:Image;
		private var _startButton:Button;
		private var background2:Sprite;
		private var playButton:Button;
		
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
			
			background = new Quad(_game.screenWidth, (_game.screenHeight - 100), 0xCCCCCC);
			background.y = 80;
			addChild(background);
			
			_title = new Image(Assets.getAtlas().getTexture("logo_big"));
			_title.x = 40;
			_title.y = 40;
			
			addChild(_title);
			
			playButton = new Button(Assets.getAtlas().getTexture("btn_play"));
			playButton.x = (_game.screenWidth/2) - (playButton.width / 2);
			playButton.y = 400;
			
			addChild(playButton);
			
			
			
		}
		
		private function initListeners():void
		{
			
		}
		
		private function killListeners():void
		{
			
		}
	}
}