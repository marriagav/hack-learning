interface Person {
    public function sayGreeting(): void;
}

final class PersonA implements Person {
    public function sayGreeting(): void {
        print('Hi! I am Person A');
    }
}

final class PersonB implements Person {
    public function sayGreeting(): void {
        print('Hi! I am Person B');
    }
}

<<__EntryPoint>>
function interfaces(): noreturn {
    $person_a = new PersonA();
    $person_b = new PersonB();

    $person_a->sayGreeting();
    $person_b->sayGreeting();

    exit(0);
}
