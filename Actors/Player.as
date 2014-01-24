package Actors
{
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;

	public class Player extends GameObject
	{
		public var sprite : Guy;
		
		public static const speed : Number = 100;
		public static const rotationSpeed : Number = 5;
		
		public function Player()
		{
			super();
			
			sprite = new Guy();
			addChild(sprite);
			Game.singleton.stage.addChild(this); 
				
			// Setup event listeners
			Game.singleton.stage.addEventListener( KeyboardEvent.KEY_UP, keyUp );
		}
		
		
		
		
		
		// Stuff to workout keyboard state.		
		private function keyUp( e : KeyboardEvent ) {
			if ( e.keyCode == 38 ) {
				rotation = -90;
				y -= speed;
			}
			if ( e.keyCode == 37 ) {
				rotation = 180;
				x -= speed;
			}
			if ( e.keyCode == 39 ) {
				x += speed;
				rotation = 0;
			}
			if ( e.keyCode == 40 ) {
				y += speed;
				rotation = 90;
			}
		}
		
		
		
		
		
		
		public override function update() {
			
		}
		
		
	}
}