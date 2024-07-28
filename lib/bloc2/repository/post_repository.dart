import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc2/bloc2/model/post_models.dart';
import 'package:http/http.dart';

class PostRepository {
  Future<List<PostModel>> fatchPost() async {
    try {
      final Response response =
          await get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
      print(response);
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final body = json.decode(response.body) as List;
        return body.map((e) {
          return PostModel(
            postId: e["postId"] as int,
            email: e["email"] as String,
            body: e["body"] as String,
          );
        }).toList();
      }
    } on SocketException {
      throw Exception("error while fetching");
    } on TimeoutException {
      throw Exception("error while fetching");
    }
    throw Exception("error while fetching");
  }
}
