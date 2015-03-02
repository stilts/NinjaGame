
package
{
	
	import com.citrusengine.core.StarlingCitrusEngine;
		
	[SWF(width="1024", height="768",frameRate="60",backgroundColor="#CCCCCC")]
	public class Citrus extends StarlingCitrusEngine
	{	
		public function Citrus()
		{
			setUpStarling();
			state = new Gamestate();
		}
	}
}