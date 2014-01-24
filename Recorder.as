package
{
	public class Recorder extends GameObject
	{
		private var subject : GameObject;
		
		
		
		public function Recorder()
		{
			super();
			
		}
		
		public override function update() {
			
		}
		
		public function changeSubject(newPlayer : GameObject) {
			subject = newPlayer;	
		}
	}
}