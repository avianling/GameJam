package Actors
{
	public class Replay extends GameObject
	{
		public var sprite : Guy;

		private var previousTurns : Vector.<int>;
		private var turnCounter : int;
		private var lastAction : int;
		private var direction : int;
		
		public function Replay(t : Vector.<int>)
		{
			super();
			previousTurns = t;
			turnCounter = 0;
			
			sprite = new Guy();
			addChild(sprite);
			Game.singleton.stage.addChild(this); 

		}
		
		public override function startTurn() {
			if (turnCounter < previousTurns.length) {
				lastAction = previousTurns[turnCounter];
				if ((lastAction >= 0)&& (lastAction<=3)) {
					direction = lastAction;
					// move
					if (lastAction == Actions.MOVED_UP){
						setPosition(pos.Gx, (pos.Gy - 1));
					} else if (lastAction == Actions.MOVED_DOWN) {
						setPosition(pos.Gx, (pos.Gy + 1));
					} else if (lastAction == Actions.MOVED_LEFT) {
						setPosition((pos.Gx - 1), pos.Gy);
					} else if (lastAction == Actions.MOVED_RIGHT) {
						setPosition((pos.Gx + 1), pos.Gy);
					}

				} else if(lastAction = Actions.FIRED_SHOT) {
					//shoot
				}
				
				turnCounter++;
			}
			else if (turnCounter == previousTurns.length){
				finishMovement();
			}
		}
		public function finishMovement() {
			turnCounter = 0;
		}
	}
}