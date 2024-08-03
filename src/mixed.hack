function print_vec(vec<mixed> $elements): void {
    foreach ($elements as $element) {
        print((string)$element);
        print("\n");
    }
}
<<__EntryPoint>>
function mixed(): noreturn {
    $elements = vec[5, 'hi', true];
    print_vec($elements);
    exit(0);
}

// Note: if you have a vec/dict of floats and ints, use num.
// Similarly, if you have a vec/dict of ints and strings, use ArrayKey.
// It is better to use these more specific types rather than mixed.
