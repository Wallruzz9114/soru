import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:soru/src/app/locator.dart';
import 'package:soru/src/models/user.dart';

import 'firestore_service.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuthInstance = FirebaseAuth.instance;
  final FirestoreService _firestoreService = locator<FirestoreService>();

  User _currentUser;
  User get currentUser => _currentUser;

  Future<dynamic> signIn({
    @required String email,
    @required String password,
  }) async {
    try {
      final AuthResult authResult =
          await _firebaseAuthInstance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _populateCurrentUser(authResult.user);

      return authResult.user != null;
    } catch (e) {
      return e.message;
    }
  }

  Future<dynamic> signUp({
    @required String username,
    @required String email,
    @required String password,
  }) async {
    try {
      final AuthResult authResult =
          await _firebaseAuthInstance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // create a new user profile on firestore
      _currentUser = User(
        id: authResult.user.uid,
        email: email,
        username: username,
      );

      await _firestoreService.createUser(_currentUser);

      return authResult.user != null;
    } catch (e) {
      return e.message;
    }
  }

  Future<bool> isUserLoggedIn() async {
    final FirebaseUser user = await _firebaseAuthInstance.currentUser();
    await _populateCurrentUser(user);
    return user != null;
  }

  Future<void> _populateCurrentUser(FirebaseUser user) async {
    if (user != null) {
      _currentUser = await _firestoreService.getUser(user.uid) as User;
    }
  }

  Future<void> signOut() async {
    _firebaseAuthInstance.signOut();
  }
}
