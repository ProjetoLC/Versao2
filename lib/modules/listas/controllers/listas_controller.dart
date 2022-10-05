import 'package:flutter/material.dart';
import 'package:projeto/modules/listas/models/lista_model.dart';

class UsuarioController extends ChangeNotifier {
  final nome = TextEditingController();
  final email = TextEditingController();
  final senha = TextEditingController();

  void salvarOnPressed(
      {required VoidCallback onSuccess,
      required VoidCallback Function(String erro) onFailure}) {
    try {
      final lista = ListaModel();
      lista.isValid();
      onSuccess();
    } catch (e) {
      onFailure(e.toString());
    }
  }
}