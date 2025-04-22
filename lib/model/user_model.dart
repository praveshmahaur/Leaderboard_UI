class User {
  final String name;
  final int points;
  final String avatar;
  final bool isUp;

  User({
    required this.name,
    required this.points,
    required this.avatar,
    required this.isUp,
  });
}

final List<User> users = [
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/4.jpg', isUp: true),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/5.jpg', isUp: true),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/6.jpg', isUp: false),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/7.jpg', isUp: true),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/8.jpg', isUp: false),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/9.jpg', isUp: true),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/10.jpg', isUp: true),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/11.jpg', isUp: false),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/12.jpg', isUp: true),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/13.jpg', isUp: false),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/14.jpg', isUp: true),
  User(name: 'Alexander Pope', points: 234, avatar: 'assets/images/15.jpg', isUp: true),
];
