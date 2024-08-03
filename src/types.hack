// this function takes in a name and optionally an age
function say_name_and_age(string $name, ?int $age = null): void {
    print('Name is '.$name."\n");
    // check if age is null
    // this is important. Do not want to print null
    if ($age is nonnull) {
        print('Age is '.$age."\n");
    }
}
<<__EntryPoint>>
function types(): noreturn {
    // example of both params
    say_name_and_age('Bob', 40);
    // example of just one param
    say_name_and_age('Alice');
    exit(0);
}
