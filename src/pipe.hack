function multiply_by_five(int $num): int {
    return $num * 5;
}
function add_two(int $num): int {
    return $num + 2;
}
<<__EntryPoint>>
function pipe(): noreturn {
    $num = 5;
    $to_print = $num |> add_two($$) |> multiply_by_five($$);
    print($to_print."\n");
    exit(0);
}
