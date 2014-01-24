package Actors
{
	public class Replay extends GameObject
	{
		private var previousTurns : Vector.<int>;
		private var turnCounter : int;
		private var lastAction : int;
		private var direction : int;
		
		private 

		public function Replay(t : Vector.<int>)
		{
			super();
			previousTurns = t;
			turnCounter = 0;
		}
		
		public function startTurn() {
			if (turnCounter < previousTurns.length) {
				lastAction = previousTurns[turnCounter];
				if ((lastAction >= 0)&& (lastAction<=3)) {
					direction = lastAction;
					// move
				} else if(lastAction = Actions.FIRED_SHOT) {
					//shoot
				}
				
				turnCounter++;
			}
		}
	}
}