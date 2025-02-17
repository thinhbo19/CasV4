import 'package:http/http.dart' as http;
import 'dart:convert';
import '../config/api.config.dart';

final String baseUrl = apiEndpoints['authen']!;

class AuthService {
  // Định nghĩa các endpoint API
  String? _token;

  final Map<String, String> authEndpoints = {
    'LOGIN': '$baseUrl/login',
    'LOGOUT': '$baseUrl/logout',
    'LOGIN_LAYER_1': '$baseUrl/login-layer-1',
    'LOGIN_LAYER_2': '$baseUrl/login-layer-2',
    'LOGIN_BY_TOKEN': '$baseUrl/login-token',
  };

  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(authEndpoints['LOGIN_LAYER_1']!),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'username': username,
        'password': password,
      }),
    );
    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode == 200) {
      _token = responseBody['token'];
    } else {
      _token = '';
    }

    return responseBody;
  }

  Future<Map<String, dynamic>> loginOTP(String otp) async {
    print(_token);
    // final response = await http.post(
    //   Uri.parse(authEndpoints['LOGIN_LAYER_2']!),
    //   headers: {'Content-Type': 'application/json'},
    //   body: json.encode({
    //     'otp': otp,
    //     'token': _token,
    //   }),
    // );

    // if (response.statusCode == 200) {
    //   return true;
    // } else {
    //   return false;
    // }
    return {'token': _token};
  }
}
