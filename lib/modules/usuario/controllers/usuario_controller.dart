import 'package:flutter/material.dart';
import 'package:projeto/modules/usuario/models/usuario_model.dart';

class UsuarioController extends ChangeNotifier {
  final nome = TextEditingController();
  final email = TextEditingController();
  final senha = TextEditingController();

  void salvarOnPressed(
      {required VoidCallback onSuccess,
      required VoidCallback? Function(String erro) onFailure}) {
        try {
          final usuario = UsuarioModel(
            nome: nome.text,
            email: email.text,
            senha: senha.text
          );
          usuario.isValid();
          onSuccess();
        } catch (e) {
          onFailure(e.toString());
        }
  }
}