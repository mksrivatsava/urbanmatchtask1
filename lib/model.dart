class Repos {
  int id;
  String full_name;
  // String img;
  // String nickname;

  Repos.fromJson(Map json)
      : id = json['id'],
        full_name = json['full_name'];
        // img = json['img'],
        // nickname = json['nickname'];

  Map toJson() {
    return {'id': id, 'name': full_name};
  }
}
