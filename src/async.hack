// we will pretend this function
// takes a while to return for demo purposes
// notice the word async before function
// notice that the return type is wrapped in Awaitable<>
async function get_number_one_async(): Awaitable<int> {
    return 5;
}
async function get_number_two_async(): Awaitable<int> {
    return 6;
}
async function get_number_three_async(): Awaitable<int> {
    return 7;
}
// any function that uses await must be declared async
// unless you use \HH\Asio\join
// and because main must be async, then we need to wrap
// the return type in Awaitable
<<__EntryPoint>>
async function async_async(): Awaitable<noreturn> {
    // here is how to call an async function
    concurrent {
        $result_one = await get_number_one_async();
        $result_two = await get_number_two_async();
        $result_three = await get_number_three_async();
    }
    print($result_one."\n");
    print($result_two."\n");
    print($result_three."\n");
    exit(0);
}
