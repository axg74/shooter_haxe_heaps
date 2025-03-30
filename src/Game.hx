package;

import h2d.Bitmap;
import hxd.Res;
import src.screens.GameScreen;
import src.Screen;

class Game extends hxd.App {

    public static final instance: Game = new Game();
    public var screen: Screen;

    public function setScreen(screen:Screen) {
        setScene(screen);
        this.screen = screen;
        screen.init();
        engine.fullScreen = false;        
    }
    
    override function init() {
        setScreen(new GameScreen(320, 240, 3));
    }

    override function update(dt:Float) {
        if(hxd.Key.isDown(hxd.Key.ESCAPE)) {
			hxd.System.exit();
		}  
        
        if(hxd.Key.isPressed(hxd.Key.F11)) {
			engine.fullScreen = !engine.fullScreen;
		}  

        if (screen.update != null) {
            screen.update(dt);
        }

    }
}