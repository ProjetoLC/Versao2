import 'package:flutter/material.dart';
import 'package:projeto/modules/historico/pages/historico.dart';
import 'package:projeto/modules/index/pages/index.dart';
import 'package:projeto/modules/listas/pages/listas.dart';
import 'package:projeto/modules/login/pages/login.dart';

class ProdutosPage extends StatefulWidget {
  const ProdutosPage({Key? key}) : super(key: key);

  @override
  State<ProdutosPage> createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const [
          Icon(Icons.shopping_cart),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Produtos'),
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
      body: ListView(
        children: [
          Row(
            children: const [
              Card(
                color: Colors.green,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Padaria', style: TextStyle(color: Colors.white)),
                ),
              ),
              Card(
                color: Colors.black54,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child:
                      Text('Mercearia', style: TextStyle(color: Colors.white)),
                ),
              ),
              Card(
                color: Colors.black54,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Carnes', style: TextStyle(color: Colors.white)),
                ),
              ),
              Card(
                color: Colors.black54,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Laticínios/Frios',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Card(
                color: Colors.black54,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child:
                      Text('Hortifruti', style: TextStyle(color: Colors.white)),
                ),
              ),
              Card(
                color: Colors.black54,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Limpeza', style: TextStyle(color: Colors.white)),
                ),
              ),
              Card(
                color: Colors.black54,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Higiene', style: TextStyle(color: Colors.white)),
                ),
              ),
              Card(
                color: Colors.black54,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child:
                      Text('Utilidades', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          Card(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/paodesal.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text('Pão de sal',
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Perform some action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          '-',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('0',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Perform some action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Card(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/paodequeijo.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text('Pão de queijo',
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Perform some action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          '-',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('0',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Perform some action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Card(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/paodebatata.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text('Pão de batata',
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Perform some action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          '-',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('0',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Perform some action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Card(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/rosca.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text('Rosca',
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Perform some action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          '-',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('0',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Perform some action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Card(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/biscoito.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text('Biscoito',
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Perform some action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          '-',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('0',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Perform some action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
