import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository {
  late final FirebaseAuth _firebaseAuth;
  late final GoogleSignIn _googleSignIn;

  UserRepository(
      {required FirebaseAuth firebaseAuth, required GoogleSignIn googleSignIn})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();
  Future<void> signInWithEmailAndPassword(String email, String password){
    return this._firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }
}
