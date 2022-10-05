// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProdutoModel {
  String? id;
  String? nome;
  String? categoria;
  String? subcategoria;
  String? preco;
  ProdutoModel(
      {this.id, this.nome, this.categoria, this.subcategoria, this.preco});

  ProdutoModel copyWith({
    String? id,
    String? nome,
    String? categoria,
    String? subcategoria,
    String? preco,
  }) {
    return ProdutoModel(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      categoria: categoria ?? this.categoria,
      subcategoria: subcategoria ?? this.subcategoria,
      preco: preco ?? this.preco,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'categoria': categoria,
      'subcategoria': subcategoria,
      'preco': preco,
    };
  }

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
      id: map['id'] != null ? map['id'] as String : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      categoria: map['categoria'] != null ? map['categoria'] as String : null,
      subcategoria:
          map['subcategoria'] != null ? map['subcategoria'] as String : null,
      preco: map['preco'] != null ? map['preco'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdutoModel.fromJson(String source) =>
      ProdutoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProdutoModel(id: $id, nome: $nome, categoria: $categoria, subcategoria: $subcategoria, preco: $preco)';
  }

  @override
  bool operator ==(covariant ProdutoModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nome == nome &&
        other.categoria == categoria &&
        other.subcategoria == subcategoria &&
        other.preco == preco;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        categoria.hashCode ^
        subcategoria.hashCode ^
        preco.hashCode;
  }

  bool isValid() {
    if (nome == null || nome!.isEmpty) {
      throw Exception('Nome não informado!');
    }

    if (categoria == null || categoria!.isEmpty) {
      throw Exception('Categoria não informada!');
    }

    if (subcategoria == null || subcategoria!.isEmpty) {
      throw Exception('Subcategoria não informada!');
    }

    if (preco == null || preco!.isEmpty) {
      throw Exception('Preço não informado!');
    }

    return true;
  }
}