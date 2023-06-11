// 프로퍼티를 담는 자료구조 클래스
// 생성자가 없음
mixin class Strong {
  final double strengthLevel = 1500.99;
}

mixin QuickRunner {
  void runQuick() {
    print("sdfsdfsdfs");
  }
}

mixin class Tall {
  final double height = 1.99;
}

enum Team { red, blue }

// 재사용 가능
// with로 믹스인 필드 사용
class Player with Strong, QuickRunner, Tall {
  final Team team;
  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player(
    team: Team.red,
  );
  player.height;
}
