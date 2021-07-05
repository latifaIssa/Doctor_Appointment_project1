import 'package:flutter/material.dart';

class User {
  String userName;
  String password;
  String email;
  String profilePicture;
  User({
    @required this.userName,
    this.password,
    this.email,
    this.profilePicture,
  });
}
