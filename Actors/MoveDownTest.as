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
			var i : int = Math.round( Math.random()*3);
			if ( i==0 ) {
				setPosition(pos.Gx, pos.Gy - 1);
			}
			if ( i==1 ) {
				setPosition(pos.Gx, pos.Gy + 1);
			}
			if ( i==2 ) {
				setPosition(pos.Gx-1, pos.Gy);
			}
			if ( i==3 ) {
				setPosition(pos.Gx+1, pos.Gy);
			}
			
			if ( ticks <= 0 ) {
				trace("Is now ready");
				ready = true;
			} else {
				counter = 10;
			}
		}
		
		public override function startTurn() {
			ready = false;
			counter = 0;
			ticks = 2;
		}
	}
}