package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	import net.hires.debug.Stats;
	
	import starling.core.Starling;
	
	[SWF(width="800", height="600", frameRate="60")]
	
	public class CrosswordRace extends Sprite
	{
		private var _starling:Starling;
		private var _stats:Stats;
		
		public function CrosswordRace()
		{
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
		}
		
		protected function onAddedToStage(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			_stats = new Stats();
			addChild(_stats);
			
			_starling = new Starling(Game, stage);
			_starling.antiAliasing = 1;
			_starling.start();
			
		}
	}
}