void main() {
  String name = 'nico';
  bool alive = true;
  int age = 12;
  double money = 69.99;

  // num : 숫자 타입의 부모 class
  num x = 12;
  x = 1.1;

  // list
  List numbers = [
    1,
    2,
    3,
    4,
  ];
  List<int> numberss = [
    1,
    2,
    3,
    4,
  ];
  numbers.add(1);
  numbers.last;

  // collection if
  var giveMeFive = true;
  numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];

  // string interpolation
  name = 'nico';
  age = 12;
  var greeting = 'Hello everyone, my name is $name, and I\'m ${age + 2}';
  print(greeting);

  // collection for
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "💗 $friend",
  ];
  print(newFriends);

  // Map<String, Object>
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };

  Map<int, bool> p = {
    1: true,
    2: false,
    3: true,
  };

  Map<List<int>, bool> pl = {
    [1, 2, 3, 4]: true,
  };

  // set
  var set_nums = {1, 2, 3, 4};
  Set<int> nums = {1, 2, 3, 4};
  nums.add(1);
  nums.add(1);
  nums.add(1);
  print(nums);
}
