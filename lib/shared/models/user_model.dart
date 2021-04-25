class User {
  final String name;
  final String photoURL;
  final int score;

  User({
    required this.name,
    required this.photoURL,
    this.score = 0,
  });
}
