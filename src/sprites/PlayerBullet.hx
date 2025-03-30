package src.sprites;

class PlayerBullet extends h2d.Bitmap {
    private var speed:Float;

    public function new(screen:Screen, tile:h2d.Tile)
    {
        super(tile, screen);
        speed = 300;
        x = 0;
        y = 50;
        visible = false;
    }

    public function update(dt: Float) {
        if (!visible) return;

        var scene:h2d.Scene = getScene();

        x += speed * dt;
        if (x > scene.width) {
            visible = false;
        }
    }
}