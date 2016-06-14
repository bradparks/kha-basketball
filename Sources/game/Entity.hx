package game;

class Entity extends game.Object {
    public function new(x : Float, y : Float, width : Float, height : Float) {
        super(x, y, width, height);
    }
    
    public inline function overlapsPoint(px : Float, py : Float) : Bool {
        if (x > px) return false;
        if (y > py) return false;
        if ((x + width) < px) return false;
        if ((y + height) < py) return false;
        return true;
    }
    
    public inline function overlapsEntity(e : Entity) : Bool {
        if (x > (e.x + e.width)) return false;
        if (y > (e.y + e.height)) return false;
        if ((x + width) < e.x) return false;
        if ((y + height) < e.y) return false;
        return true;
    }
}
