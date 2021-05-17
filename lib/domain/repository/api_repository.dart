import 'package:sajilo_dokan/domain/model/product.dart';
import 'package:sajilo_dokan/domain/model/user.dart';
import 'package:sajilo_dokan/domain/request/login_request.dart';
import 'package:sajilo_dokan/domain/request/register_request.dart';
import 'package:sajilo_dokan/domain/response/login_response.dart';

abstract class ApiRepositoryInterface {
  Future<LoginResponse> getUserFromToken(String token);

  Future<LoginResponse> login(LoginRequest login);
  Future<LoginResponse> register(RegisterRequest register);

  Future<void> logout(String token);
  Future<List<Product>> fetchingProdcut();

  Future getCategories();
  Future<List<Product>> getCategorieProduct(String categoryName);
}