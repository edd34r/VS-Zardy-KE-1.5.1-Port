package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		switch (char)
		{
			case 'zardy':
				loadGraphic(Paths.image('icons/zardy-icons'), true, 150, 150);
				animation.add('zardy', [0, 1], 0, false, isPlayer);
			case 'bf':
				loadGraphic(Paths.image('icons/bf-icons'), true, 150, 150);
				animation.add('bf', [0, 1], 0, false, isPlayer);
		}
		
		antialiasing = true;
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
