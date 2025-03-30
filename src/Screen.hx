package src;

class Screen extends h2d.Scene
{
    public var scaleVal: Float;
    private var sWidth: Int;
    private var sHeight: Int;

    public function new(width, height, scale) {
        super();
        scaleVal = scale;
        sWidth = width;
        sHeight = height;
        scaleMode = Fixed(width, height, scale);
    }

    public function init() {
    }

    public function update(dt:Float) {
    }

    public function getWidth():Int {
        return sWidth;
    }

    public function getHeight():Int {
        return sHeight;
    }
}