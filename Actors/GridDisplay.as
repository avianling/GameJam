package Actors
{
	public class GridDisplay extends GameObject
	{
		public var sprite : GridSprite;
		
		public function GridDisplay()
		{
			super();
			
			sprite = new GridSprite();
			addChild(sprite);
			Game.singleton.stage.addChild(this);
		}
	}
}