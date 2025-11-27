import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final String baseUrl = dotenv.env['BASE_URL'] ?? 'http://rescue-ace.ddns.net';

  @override
  Future<User> loginUser(String email, String password) async {
    final url = Uri.parse('$baseUrl/user/loginUser');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return User.fromJson(data);
    } else if (response.statusCode == 401) {
      throw Exception('Email atau password salah.');
    } else {
      throw Exception('Gagal login: ${response.reasonPhrase}');
    }
  }

  @override
  Future<void> logoutUser(User user) async {
    final url = Uri.parse('$baseUrl/user/logoutUser');
    await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(user.toJson()),
    );
  }

  Future<void> putTokenDamkar(int idDamkar, String token) async {
    final url = Uri.parse('$baseUrl/user/Damkar/tokenFCM');
    try {
      final response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'id_damkar': idDamkar, 'token_user': token}),
      );
      if (response.statusCode != 200) {
        throw Exception('Failed to update FCM token for Damkar');
      }
    } catch (e) {
      throw Exception('Error updating FCM token for Damkar: $e');
    }
  }

  Future<void> putTokenPolisi(int idPolisi, String token) async {
    final url = Uri.parse('$baseUrl/user/Polisi/tokenFCM');
    try {
      final response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'id_polisi': idPolisi, 'token_user': token}),
      );
      if (response.statusCode != 200) {
        throw Exception('Failed to update FCM token for Polisi');
      }
    } catch (e) {
      throw Exception('Error updating FCM token for Polisi: $e');
    }
  }
}
