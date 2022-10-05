import 'package:flutter/material.dart';

class BotaoForm extends StatefulWidget {
  final String texto;
  void Function()? aoClicar;
  
  BotaoForm({Key? key,
  required this.texto,
  required this.aoClicar}) : super(key: key);

  @override
  State<BotaoForm> createState() => _BotaoFormState();
}

class _BotaoFormState extends State<BotaoForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
      child: ElevatedButton(
        onPressed: widget.aoClicar,
        style: ElevatedButton.styleFrom(
            primary: Colors.green, minimumSize: const Size(100, 50)),
        child: Text(
          widget.texto,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
