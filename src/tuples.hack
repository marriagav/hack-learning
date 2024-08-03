newtype User = (string, int);

function get_tuple_of_user(string $name): User {
    $user_one = tuple('Joe', 25);
    $user_two = tuple('Jack', 21);
    $users = vec[$user_one, $user_two];
    foreach ($users as $user) {
        if ($user[0] === $name) {
            return $user;
        }
    }
    return tuple('Not found', -1);
}

<<__EntryPoint>>
function tuples(): noreturn {
    $user_one = tuple('Joe', 25);
    $user_two = tuple('Jack', 21);
    print($user_one[0]."\n");
    print($user_one[1]."\n");
    print($user_two[0]."\n");
    print($user_two[1]."\n");
    $user_one[0] = 'Mike';

    print(get_tuple_of_user('Joe')[1]);
    exit(0);
}
