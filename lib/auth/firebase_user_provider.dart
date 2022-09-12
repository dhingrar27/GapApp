import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseTestFirebaseUser {
  FirebaseTestFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FirebaseTestFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FirebaseTestFirebaseUser> firebaseTestFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FirebaseTestFirebaseUser>(
            (user) => currentUser = FirebaseTestFirebaseUser(user));
