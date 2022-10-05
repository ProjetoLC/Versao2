import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:projeto/modules/index/pages/index.dart';
import 'package:projeto/modules/login/controllers/login_controller.dart';
import 'package:projeto/modules/usuario/controllers/usuario_controller.dart';
import 'package:projeto/modules/usuario/pages/cadastrarUsuario.dart';
import 'package:projeto/shared/components/button_form/button_form.dart';
import 'package:projeto/shared/components/campo_form/campo_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = UsuarioController();
  final _controller2 = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Image.asset(
        'assets/images/logo.png',
        width: 250,
        height: 250,
      ),
//Email
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
      BotaoForm(
        texto: "Entrar",
        aoClicar: () {
          _controller2.entrarOnClick(onSuccess: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const IndexPage();
            }));
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
      BotaoForm(
        texto: "Esqueci minha senha",
        aoClicar: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CadastrarUsuarioPage();
          }));
        },
      ),
      BotaoForm(
        texto: "Cadastrar conta",
        aoClicar: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CadastrarUsuarioPage();
          }));
        },
      ),
    ]));
  }
}
