function add_two_numbers(int $num_1, int $num_2): int {
    return $num_1 + $num_2;
}

<<__EntryPoint>>
function functions(): noreturn {
    $sum = add_two_numbers(4, 5);
    print($sum);
    print("\n");
    exit(0);
}
