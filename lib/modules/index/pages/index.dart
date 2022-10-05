import 'package:flutter/material.dart';
import 'package:projeto/modules/historico/pages/historico.dart';
import 'package:projeto/modules/listas/pages/listas.dart';
import 'package:projeto/modules/login/pages/login.dart';
import 'package:projeto/modules/produtos/pages/produtos.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const [
          Icon(Icons.home),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Início'),
          )
        ]),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text('Fulano da Silva', style: TextStyle(fontSize: 20),),
                accountEmail: Text('fulano.silva@gmail.com', style: TextStyle(fontSize: 16),)),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'Início',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const IndexPage();
                  }));
                }),
            ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text(
                  'Produtos',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ProdutosPage();
                  }));
                }),
            ListTile(
                leading: const Icon(Icons.view_list_rounded),
                title: const Text(
                  'Listas',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ListasPage();
                  }));
                }),
            ListTile(
                leading: const Icon(Icons.history),
                title: const Text(
                  'Histórico',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HistoricoPage();
                  }));
                }),
            ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text(
                  'Sair',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                }),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 250,
            height: 250,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 5),
            child: Text(
              'Seja bem-vindo ao Liste&Compre,',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 5, 30, 30),
            child: Text(
              'facilite a organização de suas listas de compras!',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}