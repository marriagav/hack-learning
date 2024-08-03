type UserShape = shape('name' => string, 'age' => ?int);
function get_shape_of_user(string $name): UserShape {
    $user_one = shape('name' => 'Joe', 'age' => 25);
    $user_two = shape('name' => 'Jack', 'age' => 21);
    $users = vec[$user_one, $user_two];
    foreach ($users as $user) {
        if ($user['name'] === $name) {
            return $user;
        }
    }
    return shape('name' => 'Not found', 'age' => -1);
}

<<__EntryPoint>>
function shapes(): noreturn {
    $user_one = shape('name' => 'Joe', 'age' => 25);
    print($user_one['name'].$user_one['age']);
    $user_one['name'] = 'Mike';
    print($user_one['name']);
    $user_one['zip_code'] = 11111;
    print($user_one['zip_code']);
    $t = get_shape_of_user('Joe');

    $age = $t['age'];
    if ($age is null) {
        print('Age is null');
    } else {
        print($age);
    }

    exit(0);
}
