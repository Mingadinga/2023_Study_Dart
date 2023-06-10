void main() {
  // hello world
  print('hello world');

  // var
  var name = '휘';
  name = 'hwi';
//   name = 1;
  print(name);

  // dynamic
  dynamic sss;
  sss = "dfsdfs";
  if (sss is String) {
    print(sss.length);
  }

  // null safety
  String? nico = 'nico';
  nico = null;
  nico?.isNotEmpty; // if nico != null

  // final
  final a = 3; // 타입 생략 가능
  final String n = 'nico';

  // late
  late final String id;
  // do something, go to api
  id = '1';
  print(id);

  // constant
  const max_allowed_price = 120;
  // final notConst = fetchAPI();
}
