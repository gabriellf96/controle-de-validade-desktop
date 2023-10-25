import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_desktop_validade/menu.dart';
import 'package:flutter_desktop_validade/tela_cadastro.dart';
import 'package:flutter_desktop_validade/tela_cadastro_produto.dart';
import 'package:flutter_desktop_validade/tela_controle_estoque.dart';
import 'package:flutter_desktop_validade/tela_controle_validade.dart';
import 'package:flutter_desktop_validade/tela_funcionario_mobile.dart';
import 'package:flutter_desktop_validade/tela_inicio.dart';
import 'package:flutter_desktop_validade/tela_login.dart';
import 'package:flutter_desktop_validade/tela_rebaixa.dart';
import 'package:flutter_desktop_validade/tela_recuperarsenha.dart';
import 'package:flutter_desktop_validade/tela_relatorio_mobile.dart';
import 'package:flutter_desktop_validade/tela_sobre.dart';




void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       debugShowCheckedModeBanner: false,
       home: TelaInicio(),
    );
  }
}

