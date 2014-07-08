package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	public class Assets
	{
		private static var gameTextureAtlas:TextureAtlas;
		private static var birdTextureAtlas:TextureAtlas;
		
		private static var gameTextures:Dictionary = new Dictionary();
		
		[Embed(source="assets/sprites/GameAssets.png")]
		public static const AtlasTextureGame:Class;
		
		[Embed(source="assets/sprites/GameAssets.xml", mimeType="application/octet-stream")]
		public static const AtlasXMLGame:Class;
		
		public static function getAtlas():TextureAtlas
		{
			if(gameTextureAtlas == null)
			{
				var texture:Texture = getTexture("AtlasTextureGame");
				var xml:XML = XML(new AtlasXMLGame);
				gameTextureAtlas =  new TextureAtlas(texture, xml);
			}
			return gameTextureAtlas;
		}
		
		public static function getTexture(name:String):Texture
		{
			if (gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
		}
	}
}