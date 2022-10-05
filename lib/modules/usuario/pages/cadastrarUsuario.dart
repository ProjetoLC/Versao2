import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:projeto/modules/usuario/controllers/usuario_controller.dart';
import 'package:projeto/shared/components/button_form/button_form.dart';
import 'package:projeto/shared/components/campo_form/campo_form.dart';

class CadastrarUsuarioPage extends StatefulWidget {
  const CadastrarUsuarioPage({Key? key}) : super(key: key);

  @override
  State<CadastrarUsuarioPage> createState() => _CadastrarUsuarioPageState();
}

class _CadastrarUsuarioPageState extends State<CadastrarUsuarioPage> {
  var mostrarSenha = false;
  bool isChecked = false;
  final _controller = UsuarioController();
  late MaterialPageRoute rota;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(children: const [
            Icon(Icons.receipt_long),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Cadastro L&C'),
            )
          ]),
        ),
        body: ListView(children: [
          CampoForm(
              label: "Nome",
              hint: "Fulano da Silva",
              icon: const Icon(Icons.person),
              controller: _controller.nome),
          CampoForm(
              label: "Email",
              hint: "fulano.silva@gmail.com",
              icon: const Icon(Icons.mail),
              teclado: TextInputType.emailAddress,
              controller: _controller.email),
          CampoForm(
              label: "Senha",
              hint: "Senha",
              icon: const Icon(Icons.lock),
              isSenha: true,
              controller: _controller.senha),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Aceitar Termos'),
              subtitle: const Text(
                  'Declaro que li e que aceito os Termos de Uso e Política de Privacidade'),
              value: isChecked,
              onChanged: (value) {
                setState(() => isChecked = value!);
              },
              activeColor: Colors.green,
              checkColor: Colors.white,
            ),
          ),
          BotaoForm(
            texto: "Cadastrar",
            aoClicar: () {
              _controller.salvarOnPressed(onSuccess: () {
                Navigator.pop(context);
              }, onFailure: (motivo) {
                MotionToast.error(
                  title: const Text(
                    'Error',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  description: Text(motivo),
                  animationType: AnimationType.fromLeft,
                  position: MotionToastPosition.top,
                  barrierColor: Colors.black.withOpacity(0.3),
                  width: 300,
                  height: 80,
                  dismissable: false,
                ).show(context);
              });
            },
          ),
        ]));
  }
}
