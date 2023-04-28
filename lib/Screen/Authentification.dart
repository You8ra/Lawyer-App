import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNumber;
  final String password;
  final List<String> notifications;

  UserModel({
    this.id,
    required this.email,
    required this.fullName,
    required this.password,
    required this.phoneNumber,
    this.notifications = const [],
  });

  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNumber,
      "Password": password,
      "Notifications": notifications,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
        email: data["Email"],
        fullName: data["FullName"],
        password: data["Password"],
        phoneNumber: data["Phone"],
        notifications: List<String>.from(data["Notifications"] ?? []));
  }
}
