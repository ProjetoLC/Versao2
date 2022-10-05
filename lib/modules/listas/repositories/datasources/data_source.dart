abstract class DataSourceBase {
  Future<void> incluir(Map<String, dynamic> lista);
  
  Future<void> excluir(Map<String, dynamic> lista);
  
  Future<void> alterar(Map<String, dynamic> lista);
  
  Future<Map<String, dynamic>> selecionar(String lista);
}