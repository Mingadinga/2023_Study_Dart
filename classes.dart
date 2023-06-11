abstract class Human {
  void walk();
}

enum Team { red, blue }

class Player extends Human {
  final String name;
  int? xp;
  Team? team;
  int? age;

  Player({
    required this.name,
    this.xp,
    this.team,
    this.age,
  });

  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = Team.blue,
        this.xp = 0;

  Player.createRedPlayer(
    String name,
    int age,
  )   : this.age = age,
        this.name = name,
        this.team = Team.red,
        this.xp = 0;

  void walk() {
    print("im walking");
  }

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player1 = Player.createBluePlayer(
    name: 'nico',
    age: 12,
  );
  player1.sayHello();

  var player2 = Player.createRedPlayer('hwi', 12);
  player2.age = 2;
  player2.team = Team.red;
  player2.sayHello();

  var potato = player2
    ..age = 2
    ..team = Team.red
    ..sayHello();
}
