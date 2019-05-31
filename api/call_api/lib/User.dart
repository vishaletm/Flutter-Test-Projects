class User {
  int id;
  String name;
  String email;

  User(int id, String name, String email) {
    this.id = id;
    this.email = email;
    this.name = name;
  }
  User.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        email = json['email'];
  Map toJson() {
    return {'id': id, 'name': name, 'email': email};
  }
}
