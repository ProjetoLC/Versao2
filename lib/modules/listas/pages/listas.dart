import 'package:flutter/material.dart';
import 'package:projeto/modules/historico/pages/historico.dart';
import 'package:projeto/modules/index/pages/index.dart';
import 'package:projeto/modules/login/pages/login.dart';
import 'package:projeto/modules/produtos/pages/produtos.dart';

class ListasPage extends StatefulWidget {
  const ListasPage({Key? key}) : super(key: key);

  @override
  State<ListasPage> createState() => _ListasPageState();
}

class _ListasPageState extends State<ListasPage> {
  List<bool> isChecked = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const [
          Icon(Icons.receipt_long),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Listas de Compras: 24/01/2022'),
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
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: CheckboxListTile(
            title: Text('Arroz Branco'),
            subtitle: Text('1 unidade'),
            value: isChecked[0],
            onChanged: (value) {
              setState(() => isChecked[0] = value!);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: CheckboxListTile(
            title: Text('Feijão Carioca'),
            subtitle: Text('2 unidades'),
            value: isChecked[1],
            onChanged: (value) {
              setState(() => isChecked[1] = value!);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: CheckboxListTile(
            title: Text('Macarrão parafuso'),
            subtitle: Text('2 unidades'),
            value: isChecked[2],
            onChanged: (value) {
              setState(() => isChecked[2] = value!);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: CheckboxListTile(
            title: Text('Molho de Tomate'),
            subtitle: Text('4 unidades'),
            value: isChecked[3],
            onChanged: (value) {
              setState(() => isChecked[3] = value!);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: CheckboxListTile(
            title: Text('Laranja'),
            subtitle: Text('8 unidades'),
            value: isChecked[4],
            onChanged: (value) {
              setState(() => isChecked[4] = value!);
            },
          ),
        ),
      ]),
    );
  }
}
