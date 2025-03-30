package src.sprites;

import src.sprites.PlayerBullet;

class Player extends h2d.Bitmap {
    private var score:Int;
    private var level:Int;
    private var lives:Int;
    private var speed:Float;
    private var bullets:Array<PlayerBullet> = [];

    public function new(screen:Screen, spritesheet:h2d.Tile)
    {
        var tile = spritesheet.sub(16, 0, 32, 16);
        super(tile, screen);
        init();
        createBullets(screen, spritesheet);
    }

    private function createBullets(screen:Screen, spritesheet:h2d.Tile) {
        for (i in 0 ... 20) {
            var tile = spritesheet.sub(48, 0, 8, 3);
            bullets.push(new PlayerBullet(screen, tile));
        }
    }

    public function updateBullets(dt:Float) {
        bullets[0].update(dt);
    }

    public function init() {
        score = 0;
        level = 0;
        lives = 0;

        x = 100;
        y = 100;

        speed = 80;
    }

    public function update(dt: Float) {
        var dx:Int = 0;
        var dy:Int = 0;

        if(hxd.Key.isDown(hxd.Key.LEFT)) dx = -1;
        if(hxd.Key.isDown(hxd.Key.RIGHT)) dx = 1;
        if(hxd.Key.isDown(hxd.Key.UP)) dy = -1;
        if(hxd.Key.isDown(hxd.Key.DOWN)) dy = 1;

        if(hxd.Key.isReleased((hxd.Key.D))) {
            bullets[0].x = x;
            bullets[0].y = y;
            bullets[0].visible = true;
        }

        x += dx * speed * dt;
        y += dy * speed * dt;

        if (x < 0) x = 0;
        if (y < 0) y = 0;
    }
}