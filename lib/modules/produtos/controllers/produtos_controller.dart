import 'package:flutter/material.dart';
import 'package:projeto/modules/produtos/models/produto_model.dart';

class ProdutoController extends ChangeNotifier {
  final id = TextEditingController();
  final nome = TextEditingController();
  final categoria = TextEditingController();
  final subcategoria = TextEditingController();
  final preco = TextEditingController();

  void salvarOnPressed(
      {required VoidCallback onSuccess,
      required VoidCallback Function(String erro) onFailure}) {
        try {
          final produto = ProdutoModel(
            id: id.text,
            nome: nome.text,
            categoria: categoria.text,
            subcategoria: subcategoria.text,
            preco: preco.text
          );
          produto.isValid();
          onSuccess();
        } catch (e) {
          onFailure(e.toString());
        }
  }
}