import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  final email = TextEditingController();
  final senha = TextEditingController();

  void entrarOnClick(
      {required VoidCallback onSuccess,
      required VoidCallback? Function(String erro) onFailure}) {
    final loginDeuCerto = true;

    if (loginDeuCerto == true) {
      onSuccess();
    } else {
      onFailure("Erro!");
    }
  }
}
