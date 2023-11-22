// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desktop_validade/_color/tela_gradiente.dart';
import 'package:flutter_desktop_validade/tela_cadastro_produto.dart';
import 'package:flutter_desktop_validade/tela_controle_estoque.dart';
import 'package:flutter_desktop_validade/tela_controle_validade.dart';
import 'package:flutter_desktop_validade/tela_funcionario_mobile.dart';
import 'package:flutter_desktop_validade/tela_login.dart';
import 'package:flutter_desktop_validade/tela_rebaixa.dart';
import 'package:flutter_desktop_validade/tela_relatorio_mobile.dart';
import 'package:flutter_desktop_validade/tela_sobre.dart';
import '../controller/login_controller.dart';

class TelaMenu extends StatefulWidget {
  const TelaMenu({super.key});

  @override
  State<TelaMenu> createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // foi usado um drawer que tem a função de criar um menu lateral
      drawer: Drawer(
        backgroundColor: Colors.white38,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              /*accountName: const Text(
                "Usuário",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ), */
              accountName: FutureBuilder<String>(
                future: LoginController().usuarioLogado(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text(
                      snapshot.data.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    );
                  }
                  return const Text('');
                },
              ),

              accountEmail: Text(
                FirebaseAuth.instance.currentUser!.email.toString(),
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              // aqui foi usado um "currentAccountPicture()" para criar um circulo e dentro dele coloquei um "ClipOval()",
              //onde possamos colocar uma imagem dentro do circulo
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white10,
                child: ClipOval(
                  child: Image.asset(
                    "assets/gfrlogo.png",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //aqui fiz um degrade para colocar no começo do drawer
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    TelaGradiente.azulTopoGradiente,
                    TelaGradiente.verdeClarinhoGradiente,
                    TelaGradiente.azulBebeGradiente
                  ],
                ),
              ),
            ),
            //logo apos criei esses campos que vão ser as seções do menu
            ListTile(
              title: const Text(
                "Sobre",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TelaSobre(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Cadastro dos Produtos",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TelacadastroProduto(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Controle do Estoque",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TelaControleEstoque(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Controle de Validade",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TelaControleValidade(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Rebaixa",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TelaRebaixa(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Relatório do Mobile",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TelaRelatorioMobile(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Funcionário Mobile",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TelaFuncionarioMobile(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Sair",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TelaLogin(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(backgroundColor: Colors.white38),
      body: Container(
        //aqui e o degrade da tela inteira com o logo da nossa marca no meio da tela
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              TelaGradiente.azulTopoGradiente,
              TelaGradiente.verdeClarinhoGradiente,
              TelaGradiente.azulBebeGradiente
            ],
          ),
        ),
        padding: const EdgeInsets.only(top: 200, left: 40, right: 40),
        child: ListView(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/gfrlogo.png"),
            ),
          ],
        ),
      ),
    );
  }
}
