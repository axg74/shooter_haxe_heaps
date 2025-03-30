package src.sprites;

class Player extends h2d.Bitmap {
    private var score:Int;
    private var level:Int;
    private var lives:Int;
    private var speed:Float;

    private var img: h2d.Anim;

    public function new(screen:Screen, tile:h2d.Tile)
    {
        super(tile, screen);
        init();
    }

    public function init() {
        score = 0;
        level = 0;
        lives = 0;

        x = 100;
        y = 100;

        speed = 100;
    }

    public function update(dt: Float) {
        var dx:Int = 0;
        var dy:Int = 0;

        if(hxd.Key.isDown(hxd.Key.LEFT)) dx = -1;
        if(hxd.Key.isDown(hxd.Key.RIGHT)) dx = 1;
        if(hxd.Key.isDown(hxd.Key.UP)) dy = -1;
        if(hxd.Key.isDown(hxd.Key.DOWN)) dy = 1;

        x += dx * speed * dt;
        y += dy * speed * dt;

        if (x < 0) x = 0;
        if (y < 0) y = 0;
    }
}