import 'dart:async';
import 'package:http/http.dart' as http;

class ApiTrigger {
  static Future getCharacters() {
    return http.get("https://api.github.com/users/freeCodeCamp/repos");
  }
}
