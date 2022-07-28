import 'package:dio/dio.dart';
import 'package:ujianakhirsemester/data.dart';

abstract class Layanan {
  static Future<Data?> getData(int id) async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/comments/$id');

      if (response.statusCode == 200) {
        return Data(
            postId: response.data['postId'],
            id: response.data['id'],
            name: response.data['name'],
            email: response.data['email'],
            body: response.data['body']);
      }

      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<Data?> postData(String name, String email, String body) async {
    try {
      var response = await Dio().post(
          "https://jsonplaceholder.typicode.com/comments/",
          data: {'name': name, 'email': email, 'body': body});

      if (response.statusCode == 201) {
        return Data(
            postId: int.tryParse(response.data['postId'].toString()) ?? 0,
            id: int.tryParse(response.data['id'].toString()) ?? 0,
            name: response.data['name'],
            email: response.data['email'],
            body: response.data['body']);
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<Data?> deleteData(int id) async {
    try {
      var response = await Dio()
          .delete("https://jsonplaceholder.typicode.com/comments/$id");
      print('User Deleted!');

      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<Data?> putData(
      int postId, int id, String name, String email, String body) async {
    try {
      final response = await Dio().put(
          "https://jsonplaceholder.typicode.com/comments/$id",
          data: {'name': name, 'email': email, 'body': body});
      if (response.statusCode == 200) {
        return Data(
            postId: int.tryParse(response.data['postId'].toString()) ?? 0,
            id: int.tryParse(response.data['id'].toString()) ?? 0,
            name: response.data['name'],
            email: response.data['email'],
            body: response.data['body']);
      }
      print('User Updated');
      return null;
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future patchData(int id, String name) async {
    try {
      final response = await Dio().patch(
          "https://jsonplaceholder.typicode.com/comments/$id",
          data: {'name': name});
      if (response.statusCode == 200) {
        return Data(
            postId: int.tryParse(response.data['postId'].toString()) ?? 0,
            id: int.tryParse(response.data['id'].toString()) ?? 0,
            name: response.data['name'],
            email: response.data['email'],
            body: response.data['body']);
      }
      print('User Updated');
      return null;
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }
}
