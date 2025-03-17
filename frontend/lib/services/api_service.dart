import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl = "http://10.0.2.2:8000/api/"; // Para Android Emulator
  // Se for iOS Simulator, use "http://127.0.0.1:8000/api/"

  static Future<String> fetchMessage() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data["message"]);
      return data["message"]; // "Hello from Django API!"
    } else {
      throw Exception("Erro ao carregar dados");
    }
  }
}
