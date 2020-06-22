class User {
  User({
    this.id,
    this.username,
    this.email,
  });

  User.fromData(Map<String, dynamic> data)
      : id = data['id'] as String,
        username = data['username'] as String,
        email = data['email'] as String;

  final String id;
  final String username;
  final String email;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'username': username,
        'email': email,
      };
}
