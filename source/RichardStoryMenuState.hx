package;

import flixel.FlxGroup.FlxTypedGroup;
import flixel.FlxG;
import flixel.FlxSprite;

class RichardStoryMenuState extends MusicBeatState 
{
  var background:FlxSprite;
  var outline:FlxSprite;
  var box:FlxSprite;
  var weeks:Array<String> = ['tutorial', 'rolkweek', 'cs'];
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
    menuItems = new FlxTypedGroup<FlxSprite>();
    add(menuItems);
    var text = Paths.getSparrowAtlas(''richstorymenu/items);
    
    for (i in 0...optionShit.length)
    {
      var menuItem:FlxSprite = new FlxSprite(0,0);
      menuItems.frames = tex;
      menuItems.scale.set(0.5, 0.5);
      menuItem.animation.addByPrefix('idle', optionShit[i] + 'idle', 24);
      menuItem.animation.addByPrefix('selected', optionShit[i] + 'sel', 24);
      menuItem.animation.play('idle');
      menuItem.ID = i;
      
      menuItem.scrollFactor.set(0, 0.25);
      menuItem.antialiasing = FlxG.save.data.antialiasing;
      background.updateHitbox();
      
      switch (i)
      {
        case 0:
          menu
      }
      menuItems.add(menuItem);
    }
    super.create();
  }
  
  override function update(elapsed:Float)
  {
    if (controls.BACK)
      MusicBeatState.switchState(new MainMenuState());
    
    super.update(elapsed);
  }
}
