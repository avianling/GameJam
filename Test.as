package
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import Actors.Player;

	
	[SWF(width='800', height='600', backgroundColor='#000000', frameRate='30')]
	public class Test extends Sprite
	{
		public function Test()
		{
			var g : Game = new Game( stage );
		
			var player : Player = new Player();
		}
	}
}