package Actors
{
	public class MoveDownTest extends GameObject
	{
		var sprite : Guy;
		
		public function MoveDownTest()
		{
			super();
			
			sprite = new Guy();
			addChild(sprite);
			Game.singleton.stage.addChild(this);
		}
		
		public var counter : int = 0;
		public var ticks : int = 0;
		
		public override function update() : void {
			if ( !ready ) {
				if ( counter <= 0 ) {
					tick();
				} else {
					counter--;
				}
				
			}
		}
		
		public function tick() {
			
			ticks--;
			trace(ticks);
			y += 100;
			if ( ticks <= 0 ) {
				trace("Is now ready");
				ready = true;
			} else {
				counter = 30;
			}
		}
		
		public override function startTurn() {
			ready = false;
			counter = 0;
			ticks = 2;
		}
	}
}