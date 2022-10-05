// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UsuarioModel {
  String? nome;
  String? email;
  String? senha;
  UsuarioModel({
    this.nome,
    this.email,
    this.senha,
  });

  UsuarioModel copyWith({
    String? nome,
    String? email,
    String? senha,
  }) {
    return UsuarioModel(
      nome: nome ?? this.nome,
      email: email ?? this.email,
      senha: senha ?? this.senha,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'email': email,
      'senha': senha,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      nome: map['nome'] != null ? map['nome'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      senha: map['senha'] != null ? map['senha'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) => UsuarioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UsuarioModel(nome: $nome, email: $email, senha: $senha)';

  @override
  bool operator ==(covariant UsuarioModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.email == email &&
      other.senha == senha;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ senha.hashCode;

  bool isValid(){
    if(nome == null || nome!.isEmpty){
      throw Exception('Nome não informado!');
    }

    if(email == null || email!.isEmpty){
      throw Exception('Email não informado!');
    }

    if(senha == null || senha!.isEmpty){
      throw Exception('Senha não informada!');
    }

    return true;
  }
}