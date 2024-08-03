final class DisplayClass<T> {
    private T $message;
    public function __construct(T $message) {
        $this->message = $message;
    }
    public function printTwice(): void {
        print((string)$this->message."\n");
        print((string)$this->message."\n");
    }
    public function printThrice(): void {
        print((string)$this->message."\n");
        print((string)$this->message."\n");
        print((string)$this->message."\n");
    }
    public function setDifferentMessage(T $new_message): void {
        $this->message = $new_message;
    }
}

<<__EntryPoint>>
function generics(): noreturn {
    $class_string = new DisplayClass<string>('ay');
    $class_string->printThrice();

    $class_int = new DisplayClass<int>(5);
    $class_int->printThrice();

    exit(0);
}
