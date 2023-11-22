import 'package:flutter/material.dart';
import 'package:flutter_desktop_validade/_color/tela_gradiente.dart';
import '../controller/login_controller.dart';

class TelacadastroSenha extends StatefulWidget {
  const TelacadastroSenha({super.key});

  @override
  State<TelacadastroSenha> createState() => _TelacadastroSenhaState();
}

class _TelacadastroSenhaState extends State<TelacadastroSenha> {

  var txtEmailEsqueceuSenha = TextEditingController();

   void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white54,
        leading: IconButton(
          onPressed: () => Navigator.pop(context, false), 
          icon: const Icon(Icons.arrow_back),
          color: Colors.black38,
        ),
      ),
      body: Container(
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
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40
        ),
        child: ListView(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/gfrlogo.png"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Esqueceu sua senha ?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              "Por favor, informe o E-mail associado a sua conta para que possamos enviar um link e evetuar uma nova senha ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Container(
                  width: 300,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: txtEmailEsqueceuSenha,
                    decoration: const InputDecoration(
                      labelText: "E-mail",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                     style: const TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Container(
                  width: 200,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        TelaGradiente.azulTopoGradiente,
                        TelaGradiente.azulBebeGradiente,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1.2),
                    child: SizedBox.expand(
                      child: TextButton(onPressed: (){
                        LoginController().esqueceuSenha(
                          context,
                          txtEmailEsqueceuSenha.text,
                        );
                      }, 
                      child: const Text(
                        "Enviar",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      ),
                    ), 
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}