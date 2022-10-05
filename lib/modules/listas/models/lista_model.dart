// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:projeto/modules/produtos/models/produto_model.dart';

class ListaModel {
  String? id;
  String? data;
  List<ProdutoModel>? produtos;
  String? total;
  ListaModel({
    this.id,
    this.data,
    this.produtos,
    this.total
  });

  ListaModel copyWith({
    String? id,
    String? data,
    List<ProdutoModel>? produtos,
    String? total,
  }) {
    return ListaModel(
      id: id ?? this.id,
      data: data ?? this.data,
      produtos: produtos ?? this.produtos,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'data': data,
      'produtos': produtos,
      'total': total,
    };
  }

  factory ListaModel.fromMap(Map<String, dynamic> map) {
    return ListaModel(
      id: map['id'] != null ? map['id'] as String : null,
      data: map['data'] != null ? map['data'] as String : null,
      produtos: map['produtos'] != null ? List<ProdutoModel>.from((map['produtos'] as List<int>).map<ProdutoModel?>((x) => ProdutoModel.fromMap(x as Map<String,dynamic>),),) : null,
      total: map['total'] != null ? map['total'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ListaModel.fromJson(String source) => ListaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ListaModel(id: $id, data: $data, produtos: $produtos, total: $total)';
  }

  @override
  bool operator ==(covariant ListaModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.data == data &&
      listEquals(other.produtos, produtos) &&
      other.total == total;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      data.hashCode ^
      produtos.hashCode ^
      total.hashCode;
  }

  bool isValid(){
    if(id == null || id!.isEmpty){
      throw Exception('ID não informado!');
    }

    if(data == null || data!.isEmpty){
      throw Exception('Data não informado!');
    }

    if(produtos == null || produtos!.isEmpty){
      throw Exception('Produtos não informada!');
    }

    return true;
  }
}
