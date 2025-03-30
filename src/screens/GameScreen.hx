package src.screens;

import src.Screen;
import src.sprites.Player;

class GameScreen extends Screen {
    private var spritesheet:h2d.Tile;
    private var player: Player;

    override public function init() {  
      var tile:h2d.Tile;

      spritesheet = hxd.Res.sprites.toTile();

      tile = spritesheet.sub(16, 0, 32, 16);
      player = new Player(this, tile);
    }

    override public function update(dt:Float) {
        player.update(dt);

        if(hxd.Key.isDown(hxd.Key.D)) {

        }  
    }
}