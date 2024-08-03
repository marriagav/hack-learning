final class Point {
    private float $x_coordenate;
    private float $y_coordenate;

    public function __construct(float $x, float $y) {
        $this->x_coordenate = $x;
        $this->y_coordenate = $y;
    }

    public function getXCoordenate(): float {
        return $this->x_coordenate;
    }

    public function getYCoordenate(): float {
        return $this->y_coordenate;
    }

    public function setXCoordenate(float $x): void {
        $this->x_coordenate = $x;
    }

    public function setYCoordenate(float $y): void {
        $this->y_coordenate = $y;
    }
}

<<__EntryPoint>>
function classes(): noreturn {
    $point = new Point(3.3, 4.4);
    print((string)$point->getXCoordenate());
    print((string)$point->getYCoordenate());
    $point->setXCoordenate(4.4);
    print((string)$point->getXCoordenate());
    exit(0);
}
