package
{
	import flash.display.Stage;
	import flash.events.Event;
	
	public class Game
	{
		public var stage : Stage;
		public var grid : Grid;
		
		public function Game( s : Stage )
		{
			stage = s;
			s.addEventListener( Event.ENTER_FRAME, update );
			objects = new Vector.<GameObject>();
			
			singleton = this;
			isPlayerTurn = true;
		}
		
		public var objects : Vector.<GameObject>;		
		public static var singleton : Game;
		
		public function addObject( object : GameObject ) : void {
			objects.push(object);
		}
		
		public function removeObject( object : GameObject ) : void {
			var index : int = objects.indexOf(object);
			if ( index != -1 ) {
				objects.splice(index,1);
			}
		}
		
		public function update( e : Event ) : void {
			var anythingNotReady = false;
			
			for each ( var o : GameObject in objects ) {
				o.update();
				if ( !o.ready ) {
					anythingNotReady = true;
				}
			}
			
			if ( !anythingNotReady ) {
				isPlayerTurn = true;
			}
		}
		
		/**
		 * Are we waiting for the player to do stuff?
		 */
		public var isPlayerTurn : Boolean;
		
		public function startTurn() {
			isPlayerTurn = false;
			for each ( var obj : GameObject in objects ) {
				obj.ready = false;
				obj.startTurn();
			}
		}
		
	}
}