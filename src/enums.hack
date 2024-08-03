enum Direction: int {
    NORTH = 1;
    SOUTH = 2;
    EAST = 3;
    WEST = 4;
}

<<__EntryPoint>>
function enums(): noreturn {
    $enum_names = Direction::getNames();
    foreach ($enum_names as $enum_name) {
        print($enum_name.'\n');
    }
    $current_direction = Direction::NORTH;
    switch ($current_direction) {
        case Direction::NORTH:
            print('North!');
            break;
        case Direction::EAST:
            print('East!');
            break;
        case Direction::SOUTH:
            print('South!');
            break;
        case Direction::WEST:
            print('West!');
            break;
    }
    exit(0);
}
