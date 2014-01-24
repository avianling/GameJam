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
		
		public static const speed : Number = 5;
		public static const rotationSpeed : Number = 5;
		
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
			if ( e.keyCode == 37 ) {
				leftDown = true;
			}
			if ( e.keyCode == 39 ) {
				rightDown = true;
			}
			if ( e.keyCode == 40 ) {
				backDown == true;
			}
		}
		
		private function keyUp( e : KeyboardEvent ) {
			if ( e.keyCode == 38 ) {
				upDown = false;
			}
			if ( e.keyCode == 37 ) {
				leftDown = false;
			}
			if ( e.keyCode == 39 ) {
				rightDown = false;
			}
			if ( e.keyCode == 40 ) {
				backDown == false;
			}
		}
		
		
		
		
		
		
		public override function update() {
			if ( upDown ) {
				moveForward();
			}
			if ( backDown ) {
				moveBack();
			}
			if ( leftDown ) {
				moveLeft();
			}
			if ( rightDown ) {
				moveRight();
			}
		}
		
		
		
		
		
		
		public function moveForward() {
			y += speed * Math.sin( rotation * (Math.PI/180) );
			x += speed * Math.cos( rotation * (Math.PI/180) );
		}
		
		public function moveBack() {
			y -= speed * Math.sin( rotation * (Math.PI/180) );
			x -= speed * Math.cos( rotation * (Math.PI/180) );
		}
		
		public function moveLeft() {
			rotation -= rotationSpeed;
		}
		
		public function moveRight() {
			rotation += rotationSpeed;
		}
		
		
	}
}