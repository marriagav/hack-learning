<<__EntryPoint>>
function vectors(): void {
    $names = vec['mike', 'joe', 'bill'];
    print($names[0]."\n");
    foreach ($names as $name) {
        print($name."\n");
    }
    print("=========\n");
    $names[] = 'greg';
    foreach ($names as $name) {
        print($name."\n");
    }
}
