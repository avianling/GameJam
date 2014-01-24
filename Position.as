package
{
	public class Position
	{
		private var px : int;
		private var py : int;
		
		public function Position(gx : int, gy : int) {
			this.px = (gx+0.5) * Grid.PIXELS_PER_GRID;
			this.py = (gy+0.5) * Grid.PIXELS_PER_GRID;
		}
		
		public function PixelPosition(px : int, py : int) : Position {
			return new Position(px / Grid.PIXELS_PER_GRID, py / Grid.PIXELS_PER_GRID);
		}
		
		public function get Px() : int {
			return px;
		}
		
		public function get Py() : int {
			return py;
		}
		
		public function get Gx() : int {
			return px / Grid.PIXELS_PER_GRID;
		}
		
		public function get Gy() : int {
			return py / Grid.PIXELS_PER_GRID;
		}
		
		public function toString() : String {
			return "" + px + "," + py;
		}
	}
}