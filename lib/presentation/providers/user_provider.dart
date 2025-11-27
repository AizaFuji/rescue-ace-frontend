import 'package:flutter/material.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/login_user.dart';
import '../../data/repositories/user_repository_impl.dart';

class UserProvider extends ChangeNotifier {
  final LoginUser loginUserUseCase;
  final UserRepositoryImpl userRepositoryImpl = UserRepositoryImpl();

  UserProvider(this.loginUserUseCase);

  User? _user;
  User? get user => _user;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> login(String email, String password) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final userData = await loginUserUseCase.execute(email, password);
      _user = userData;
    } catch (e) {
      _errorMessage = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  void setErrorMessage(String message) {
    _errorMessage = message;
    notifyListeners();
  }

  Future<void> putTokenDamkar(int idDamkar, String token) async {
    try {
      await userRepositoryImpl.putTokenDamkar(idDamkar, token);
    } catch (e) {
      throw Exception('Error updating Damkar FCM token: $e');
    }
  }

  Future<void> putTokenPolisi(int idPolisi, String token) async {
    try {
      await userRepositoryImpl.putTokenPolisi(idPolisi, token);
    } catch (e) {
      throw Exception('Error updating Polisi FCM token: $e');
    }
  }
}
