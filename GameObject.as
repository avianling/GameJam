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
		
		public function update() {
			
		}
		
		public function destroy() {
			Game.singleton.removeObject(this);
		}

		
		public function setPosition(gridx  :int, gridy : int) {
			
		}
		
		public function getPositon() : Position {
			return pos;
		}

	}
}