<<__EntryPoint>>
function loops(): noreturn {
    $words = dict[
        'gobbledygook' => 'gibberish',
        1 => 'surprise',
    ];
    foreach ($words as $word => $definition) {
        print('Word: '.$word.' Definition: '.$definition."\n");
    }
    $names = vec['mike', 'joe', 'bill'];
    foreach ($names as $name) {
        print($name."\n");
    }
    for ($i = 0; $i <= 5; $i++) {
        print($i);
        print('\n');
    }
    for ($i = 1; $i < 10; $i++) {
        if ($i * $i >= 25) {
            print($i - 1);
            print("\n");
            break;
        }
    }
    $i = 1;
    while ($i <= 5) {
        print($i);
        print("\n");
        $i = $i + 1;
    }
    exit(0);
}
