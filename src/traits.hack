// define a trait
trait Weather {
    // you can declare member variables
    private string $weather = 'sunny';
    // you can define functions
    public function sayWeather(): void {
        print('The weather outside today is '.$this->weather."\n");
    }
    public function sayIsClouds(): void {
        print("No clouds\n");
    }
    // you can also leave declarations with no implementations
    // use the abstract keyword to do this
    public abstract function sayIsRain(): void;
}
trait AnotherTrait {
    public function anotherPrintFunction(): void {
        print("Another print function\n");
    }
}
trait Raining {
    // With this line, Raining now has access everything in Weather
    use Weather;
    // get  access to everything in AnotherTrait
    use AnotherTrait;
    // implement sayIsRain which was not implemented
    public function sayIsRain(): void {
        print("There is rain\n");
    }
    // override the implementation of a trait in a function
    <<__Override>>
    public function sayIsClouds(): void {
        print("There are clouds\n");
    }
}
// need a class to use a trait
// because traits cannot be created on their own
final class PersonTraits {
    // the use keyword allows us to use the traits
    use Raining;
    // rest of the class as usual
    private string $name;
    public function __construct(string $n) {
        $this->name = $n;
    }
    public function sayName(): void {
        print('My name is '.$this->name."\n");
    }
}

<<__EntryPoint>>
function traits(): noreturn {
    $person = new PersonTraits('Bob');
    $person->sayWeather();
    $person->sayIsClouds();
    $person->sayIsRain();
    $person->anotherPrintFunction();
    exit(0);
}
