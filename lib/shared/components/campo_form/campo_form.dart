import 'package:flutter/material.dart';

class CampoForm extends StatefulWidget {
  final String label;
  final String? hint;
  final Icon icon;
  TextEditingController? controller;
  TextInputType? teclado;
  bool? isSenha;

  CampoForm({Key? key,
  required this.label,
  required this.hint,
  required this.icon,
  this.controller,
  this.teclado,
  this.isSenha}) : super(key: key);

  @override
  State<CampoForm> createState() => _CampoFormState();
}

class _CampoFormState extends State<CampoForm> {
  bool mostrarSenha = false;

  bool ehCampoSenha(){
    return widget.isSenha ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextFormField(
              obscureText: widget.isSenha ?? false,
              controller: widget.controller,
              keyboardType: widget.teclado ?? TextInputType.text,
              decoration: InputDecoration(
                hintText: widget.hint,
                prefixIcon: widget.icon,
                border: const OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
                suffix: ehCampoSenha() ? IconButton(
                  onPressed: () {
                    setState(() {
                      mostrarSenha = !mostrarSenha;
                    });
                  },
                  icon: Icon(mostrarSenha == true
                      ? Icons.visibility_off
                      : Icons.remove_red_eye),
                ): null,
              ),
            ),
          ],
        ));
  }
}