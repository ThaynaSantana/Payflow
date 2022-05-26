// ignore_for_file: avoid_print, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/shared/auth/auth_controller.dart';
import 'package:payflow/shared/models/user_model.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await googleSignIn.signIn();
      final user = UserModel(
          name: response!.displayName!,
          photoURL: response.photoUrl!);
      // ignore: use_build_context_synchronously
      authController.setUser(context, user);
      // ignore: avoid_print
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }
}
