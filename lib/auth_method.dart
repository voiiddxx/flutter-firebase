import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event/model/user.dart' as model;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> singUp({
    required String username,
    required String email,
    required String department,
    required String password,
    required String uid,
    required String category,
  }) async {
    String res = " success";
    try {
      if (username.isNotEmpty ||
          email.isNotEmpty ||
          password.isNotEmpty ||
          department.isNotEmpty ||
          category.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        res = "success";

        print(cred.user!.uid);

        // add data into firestore
        //  await _firestore.collection("users").doc(cred.user!.uid).set({
        //   'uid': cred.user!.uid,
        //   'email': email,
        //   'category': category,
        //   'username': username,
        // });
        model.User user = model.User(
          department: department,
          uid: cred.user!.uid,
          email: email,
          username: username,
          category: category,
        );

        _firestore.collection('users').doc(cred.user!.uid).set(
              user.toJson(),
            );
        print(username);
        print(department);
      }
      res = "success";
    } catch (err) {
      res = err.toString();
    }

    return res;
  }

  //login method

  //login method
  Future<String> logIn({
    required String email,
    required String password,
  }) async {
    String res = " some error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "success";
      } else {
        res = " please enter all the filed";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
