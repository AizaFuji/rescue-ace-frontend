import '../entities/user.dart';
import '../repositories/user_repository.dart';

class LoginUser {
  final UserRepository repository;

  LoginUser(this.repository);

  Future<User> execute(String email, String password) {
    return repository.loginUser(email, password);
  }
}
