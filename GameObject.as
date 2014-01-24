package
{
	import flash.display.Sprite;

	public class GameObject extends Sprite
	{
		public function GameObject()
		{
			Game.singleton.addObject(this);
		}
		
		public function update() {
			
		}
		
		public function destroy() {
			Game.singleton.removeObject(this);
		}
	}
}