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
			if ( Game.singleton.isPlayerTurn ) {
				var actionCode : int;
				//up
				if ( e.keyCode == 38 ) {
					rotation = -90;
					setPosition( pos.Gx, pos.Gy-1);
					actionCode = Actions.MOVED_UP;
					Game.singleton.startTurn();
				}
				
				//left
				if ( e.keyCode == 37 ) {
					rotation = 180;
					setPosition( pos.Gx-1, pos.Gy);
					actionCode = Actions.MOVED_LEFT;
					Game.singleton.startTurn();
				}
				
				//right
				if ( e.keyCode == 39 ) {
					setPosition( pos.Gx+1, pos.Gy );
					rotation = 0;
					actionCode = Actions.MOVED_RIGHT;
					Game.singleton.startTurn();
					
				}
				
				//down
				if ( e.keyCode == 40 ) {
					setPosition( pos.Gx, pos.Gy+1);
					rotation = 90;
					actionCode = Actions.MOVED_DOWN;
					Game.singleton.startTurn();
				}
				
				previousActions.push(actionCode);
			}
			
		}
		public override function update() : void {
			
		}
		
		public override function startTurn() {
			ready = true;
		}
		
	}
	
}