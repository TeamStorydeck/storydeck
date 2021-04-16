abstract class UserRepository {
  bool isAuthenticated();
  String? getUserId();
  Future<void> authenticate();
}
