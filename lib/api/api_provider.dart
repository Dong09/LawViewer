import 'package:get/get.dart';
import 'package:something/api/base_provider.dart';
import 'package:something/model/request/login_request.dart';
import 'package:something/model/request/register_request.dart';

class ApiProvider extends BaseProvider {
  Future<Response> login(String path, LoginRequest data) {
    return post(path, data);
  }

  Future<Response> register(String path, RegisterRequest data) {
    return post(path, data);
  }

  Future<Response> getUsers(String path) {
    return get(path);
  }
}
