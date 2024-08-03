abstract class PersonAbstract {
    public abstract function sayGreeting(): void;

    public function sayLanguage(): void {
        print("English\n");
    }
}

final class PersonC extends PersonAbstract {
    <<__Override>>
    public function sayGreeting(): void {
        print('Hi! I am Person C');
    }
    <<__Override>>
    public function sayLanguage(): void {
        print("Spanish\n");
    }
}

final class PersonD extends PersonAbstract {
    <<__Override>>
    public function sayGreeting(): void {
        print('Hi! I am Person D');
    }
}

<<__EntryPoint>>
function abstract_func(): noreturn {
    $person_c = new PersonC();
    $person_d = new PersonD();

    $person_c->sayGreeting();
    $person_d->sayGreeting();

    $person_c->sayLanguage();
    $person_d->sayLanguage();

    exit(0);
}
