import 'package:projeto/modules/produtos/models/produto_model.dart';

class ProdutoRepository {
  Future<void> incluir(ProdutoModel produto) async{
    
  }

  Future<void> excluir(ProdutoModel produto) async{
    
  }

  Future<void> alterar(ProdutoModel produto) async{
    
  }

  Future<ProdutoModel> selecionar(int id) async{
    return ProdutoModel();
  }

  Future<List<ProdutoModel>> selecionarTodos() async{
    return <ProdutoModel>[];
  }
}