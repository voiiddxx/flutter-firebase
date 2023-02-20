import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class User {
  final String email;
  final String username;
  final String department;
  final String uid;
  final String category;

  const User({
    required this.email,
    required this.department,
    required this.uid,
    required this.username,
    required this.category,
  });

  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'department': department,
        'uid': uid,
        'category': category,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
        email: snapshot['email'],
        department: snapshot['department'],
        category: snapshot['category'],
        uid: snapshot['uid'],
        username: snapshot['username']);
  }
}
