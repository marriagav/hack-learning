<<__EntryPoint>>
function dictionaries(): void {
    $words = dict[
        'gobbledygook' => 'gibberish',
        'astonish' => 'surprise',
    ];
    foreach ($words as $word => $definition) {
        print('Word: '.$word.' Definition: '.$definition."\n");
    }
    $words['new'] = 'word';
    print($words['new']);
    unset($words['gobbledygook']);

    print("===============\n");
    foreach ($words as $word => $definition) {
        print('Word: '.$word.' Definition: '.$definition."\n");
    }
}
