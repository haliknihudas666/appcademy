import 'dart:async';

import 'package:http/http.dart' as http;

const baseUrl = "http://numbersapi.com/random/trivia?json";

class API {
  static Future getTrivia() {
    return http.get(baseUrl);
  }
}
