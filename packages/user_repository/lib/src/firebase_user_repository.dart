import 'package:firebase_auth/firebase_auth.dart';

import 'user_repository.dart';

class FirebaseUserRepository implements UserRepository {
  final FirebaseAuth _firebaseAuth;

  FirebaseUserRepository({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  Future<void> authenticate() {
    return _firebaseAuth.signInAnonymously();
  }

  @override
  String? getUserId() {
    return _firebaseAuth.currentUser?.uid;
  }

  @override
  bool isAuthenticated() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }
}
