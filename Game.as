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
			for each ( var o : GameObject in objects ) {
				o.update();
			}
		}
		
	}
}