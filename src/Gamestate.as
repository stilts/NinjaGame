package 
{
	/**
	 * ...
	 * @author TriocularTV
	 */
	import Box2D.Dynamics.Contacts.b2Contact;
	import com.citrusengine.objects.platformer.awayphysics.Hero;
	import com.citrusengine.objects.platformer.box2d.Coin;
	import com.citrusengine.objects.platformer.box2d.Enemy;
	import com.citrusengine.objects.platformer.box2d.MovingPlatform;
	import com.citrusengine.physics.box2d.Box2D;
	import com.citrusengine.core.StarlingState; 
	import com.citrusengine.objects.platformer.box2d.Platform;
	 
	public class Gamestate extends StarlingState
	{
		
		public function Gamestate() 
		{
			super();
		}
		
		override public function initialize():void
		{
			super.initialize();
			
			var physics:Box2D = new Box2D("box2d");
			physics.visible = true;
			add(physics);
			
			var floor:Platform = new Platform("floor", { x:512, y:748, width:1024, height:40 } );
			add(floor);
			
			var p1:Platform = new Platform("p1", { x:874, y:151, width:300, height:40 } );
			add(p1);
			
			var mp:MovingPlatform = new MovingPlatform("moving",
			    {x:220, y:700, width:200, height:40, startX:220, startY:700, endX:500, endY:151 } );
		    add(mp);
			
			var hero:Hero = new Hero("hero", { x:50, y:60, width:70, height:70 } );
			add(hero);
			
			var enemy:Enemy = new Enemy("enemy", { x:900, y:700,  width:70, height:70, leftBound:10, rightBound:1000 } );
			add(enemy);
			
			var goal:Coin = new Coin("ring", { x:967, y:90, width:79, height:79 } );
			goal.onBeginContact.add(function(c:b2Contact):void{
				trace("Red Sox Wins");
			});
			add(goal);
		}
		
	}

}