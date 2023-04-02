package;

import flixel.FlxGroup.FlxTypedGroup
import flixel.FlxG;
import flixel.FlxSprite;

class RichardStoryMenuState extends MusicBeatState 
{
  var background:FlxSprite;
  var outline:FlxSprite;
  var box:FlxSprite;
  
  var menuItems:FlxTypedGroup<FlxSprite>;
  
  override function create()
  {
    background = new FlxSprite(0,0).loadGraphic(Paths.image('richstorymenu/BG'));
    background.antialiasing = FlxG.save.data.antialiasing;
    add(background);
    
    
    box = new FlxSprite(200,200).loadGraphic(Paths.image('richstorymenu/box'));
    box.antialiasing = FlxG.save.data.antialiasing;
    add(box);
    
    outline = new FlxSprite(200,200).loadGraphic(Paths.image('richstorymenu/outline'));
    outline.antialiasing = FlxG.save.data.antialiasing;
    add(outline);
    super.create();
  }
  
  override function update(elapsed:Float)
  {
    if (controls.BACK)
      MusicBeatState.switchState(new MainMenuState());
    
    super.update(elapsed);
  }
}
