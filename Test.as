package
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import Actors.Player;
	import Actors.MoveDownTest;
	import Actors.GridDisplay;

	
	[SWF(width='801', height='601', backgroundColor='#ffffff', frameRate='60')]
	public class Test extends Sprite
	{
		public function Test()
		{
			var g : Game = new Game( stage );
		
			var player : Player = new Player();
			
			var test : MoveDownTest = new MoveDownTest();
			
			var gridDisplay : GridDisplay = new GridDisplay();
		}
	}
}