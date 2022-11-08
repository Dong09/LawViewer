import 'dart:async';

import 'package:something/api/api_provider.dart';
import 'package:something/model/request/login_request.dart';
import 'package:something/model/request/register_request.dart';
import 'package:something/model/response/login_response.dart';
import 'package:something/model/response/register_responese.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});
  final ApiProvider apiProvider;

  Future<LoginResponse> login(LoginRequest data) async {
    final res = await apiProvider.login('/api/login', data);
    return LoginResponse.fromJson(res.body);
  }

  FutureOr<RegisterResponse> register(RegisterRequest data) async {
    final res = await apiProvider.register('/api/register', data);
    return RegisterResponse.fromJson(res.body);
  }
}
