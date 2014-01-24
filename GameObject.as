package
{
	import flash.display.Sprite;

	public class GameObject extends Sprite
	{
		public var pos : Position;
		
		public function GameObject()
		{
			Game.singleton.addObject(this);
		}
		
		public function update() : void {
			
		}
		
		public function destroy() : void {
			Game.singleton.removeObject(this);
		}

		
		public function setPosition(gridx : int, gridy : int) : void {
			this.pos = new Position(gridx, gridy);
			x = pos.Px;
			y = pos.Py;
			Game.singleton.grid.setObjectPosition(this);
		}
		
		public function getPositon() : Position {
			return pos;
		}

	}
}