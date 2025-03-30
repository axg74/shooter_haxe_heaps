package;

class Main {
    static function main() {
        #if sys
            hxd.Res.initLocal(); // for windows
        #else
            hxd.Res.initEmbed(); // for html5/js
        #end
        
        Game.instance;
    }
}