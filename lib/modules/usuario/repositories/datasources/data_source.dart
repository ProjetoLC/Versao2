abstract class DataSourceBase {
  Future<void> incluir(Map<String, dynamic> usuario);
  
  Future<void> excluir(Map<String, dynamic> usuario);
  
  Future<void> alterar(Map<String, dynamic> usuario);
  
  Future<Map<String, dynamic>> selecionar(String email);
}