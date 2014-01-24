package Actors
{
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;

	public class Player extends GameObject
	{
		public var sprite : Guy;
		
		public var upDown : Boolean;
		public var backDown : Boolean;
		public var leftDown : Boolean;
		public var rightDown : Boolean;
		
		public static const speed : Number = 2;
		
		public function Player()
		{
			super();
			
			sprite = new Guy();
			addChild(sprite);
			Game.singleton.stage.addChild(this); 
				
			// Setup event listeners
			Game.singleton.stage.addEventListener( KeyboardEvent.KEY_DOWN, keyDown );
			Game.singleton.stage.addEventListener( KeyboardEvent.KEY_UP, keyUp );
		}
		
		
		
		
		
		// Stuff to workout keyboard state.
		
		private function keyDown( e : KeyboardEvent ) {
			if ( e.keyCode == 38 ) {
				upDown = true;
			}
		}
		
		private function keyUp( e : KeyboardEvent ) {
			upDown = false;
			leftDown = false;
			rightDown = false;
			backDown = false;
		}
		
		
		
		
		
		
		public override function update() {
			if ( upDown ) {
				moveForward();
			}
		}
		
		
		
		
		
		
		public function moveForward() {
			y += speed * Math.sin( rotation * (Math.PI/180) );
			x += speed * Math.cos( rotation * (Math.PI/180) );
		}
		
		
	}
}