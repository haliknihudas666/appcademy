import 'dart:async';
import 'dart:convert';

import 'package:appcademy_hackaton/models/trivia.dart';
import 'package:http/http.dart' as http;

const baseUrl = "http://numbersapi.com/random/trivia?json";

class API {
  static Future<Post> getTrivia() async {
    final response = await http.get(baseUrl);

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return Post.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
