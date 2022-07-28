import 'dart:convert';

class Data {
  int postId;
  int id;
  String name;
  String email;
  String body;

  Data(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  factory Data.dariJson(Map<String, dynamic> json) {
    return Data(
        postId: json['postId'],
        id: json['id'],
        name: json['name'],
        email: json['email'],
        body: json['body']);
  }

  Map<String, dynamic> untukJson() => {
        'postId': postId,
        'id': id,
        'name': name,
        'email': email,
        'body': body,
      };

  static List<Data> listJson(List<dynamic> list) =>
      List<Data>.from(list.map((e) => Data.dariJson));
}
