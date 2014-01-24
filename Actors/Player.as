package Actors
{
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;

	public class Player extends GameObject
	{
		public var sprite : Guy;
		
		public static const speed : Number = 100;
		public static const rotationSpeed : Number = 5;
		
		public var previousActions : Vector.<int>;
		
		public function Player()
		{
			super();
			
			sprite = new Guy();
			addChild(sprite);
			Game.singleton.stage.addChild(this); 
			previousActions = new Vector.<int>();
						
			// Setup event listeners
			Game.singleton.stage.addEventListener( KeyboardEvent.KEY_UP, keyUp );
		}
		
		// Stuff to workout keyboard state.		
		private function keyUp( e : KeyboardEvent ) {
			var actionCode : int;
			//up
			if ( e.keyCode == 38 ) {
				rotation = -90;
				y -= speed;
				actionCode = Actions.MOVED_UP;
			}
			//left
			if ( e.keyCode == 37 ) {
				rotation = 180;
				x -= speed;
				actionCode = Actions.MOVED_LEFT;
			}
			//right
			if ( e.keyCode == 39 ) {
				x += speed;
				rotation = 0;
				actionCode = Actions.MOVED_RIGHT;

			}
			//down
			if ( e.keyCode == 40 ) {
				y += speed;
				rotation = 90;
				actionCode = Actions.MOVED_DOWN;
			}
			
			previousActions.push(actionCode);
		}
		
		
		public override function update() {
			
		}
		
		public function turn(){
			// move
		}
	}
}