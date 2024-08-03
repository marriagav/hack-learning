final class StaticPerson {
    public static function sayName(string $name): void {
        print('My name is '.$name."\n");
    }
}

<<__EntryPoint>>
function static_functions(): noreturn {
    StaticPerson::sayName('bob');
    exit(0);
}
