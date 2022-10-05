import 'package:projeto/modules/listas/models/lista_model.dart';

class UsuarioRepository {
  Future<void> incluir(ListaModel lista) async{
    
  }

  Future<void> excluir(ListaModel lista) async{
    
  }

  Future<void> alterar(ListaModel lista) async{
    
  }

  Future<ListaModel> selecionar(String id) async{
    return ListaModel(id: '', data: '', total: '', produtos: []);
  }
}