String sayHello(String name) {
  return "Hello $name nice to meet you!";
}

// fat arrow syntax : 한줄로 return
String sayHelloArrow(String name) => "Hello $name nice to meet you!";

num plus(num a, num b) => a + b;

// named param
String sayHelloDetail({
  required String name,
  required int age,
  String country = 'Korea',
}) {
  return "Hello $name, you are $age, and you come from $country";
}

String sayHelloOptionalDetail(String name, int age,
        [String? country = 'cuba']) =>
    "Hello $name, you are $age, and you come from $country";

String capitalizeName(String? name) =>
    // name != null ? name.toUpperCase() : 'ANON';
    name?.toUpperCase() ?? 'ANON';

// type def
typedef ListOfInts = List<int>;
ListOfInts reveseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;
String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  print(capitalizeName('nico'));
  print(capitalizeName(null));

  String? name;
  name ??= 'nico';
  name = null;
  name ??= 'another';
  print(name);

  reveseListOfNumbers([1, 2, 3]);
  sayHi({"name": "nico"});
}
