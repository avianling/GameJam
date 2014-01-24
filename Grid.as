package
{
	import flash.utils.Dictionary;
	import Actors.GridDisplay;

	public class Grid
	{
		public static const PIXELS_PER_GRID : int = 20;
		
		private var grid : Dictionary
		
		public function Grid() {
			grid = new Dictionary();
			
			
		}
		
		public function	getObjectAtPosition(pos: Position) : GameObject {
			return grid[pos.toString()];
		}
		
		public function setObjectPosition(go : GameObject) : void {
			// Using the string representation of positions because otherwise
			// objects are compared by reference
			grid[go.pos.toString()] = go;
		}
	}
}