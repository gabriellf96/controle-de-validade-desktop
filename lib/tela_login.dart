import 'package:flutter/material.dart';
import 'package:flutter_desktop_validade/_color/tela_gradiente.dart';
import 'package:flutter_desktop_validade/menu.dart';
import 'package:flutter_desktop_validade/tela_cadastro.dart';
import 'package:flutter_desktop_validade/tela_recuperarsenha.dart';


class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {

  bool _showPassword = false;
  final emailkey = GlobalKey<FormFieldState>();
  final senhakey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
           child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
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
              child: ListView(
                children: [
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                        const SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        Image.asset("assets/gfrlogo.png"),
              
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1800,
                          width: 1650,
                          decoration: const BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(64),
                              topRight: Radius.circular(64)
                            ),
                          ),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 30),
                              const Text("HELLO",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              const SizedBox(height: 10),
                              const Text("Por favor faça login em sua conta",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black
                              ),
                              ),
                              const SizedBox(height: 20),
                              Column(
                                children: [
                                  Container(
                                    width: 300,
                                    child: TextFormField(
                                      key: emailkey,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                        labelText: "E-mail",
                                        labelStyle: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                      validator: (String ? value) {
                                         if(value == null || value.isEmpty){
                                          return 'E-mail Obrigatório';
                                         }
                                         if(value.length < 5){
                                          return 'E-mail incorreto';
                                         }
                                         if(!value.contains("@")){
                                          return 'E-mail inválido';
                                         }
                                         return null;
                                      },
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Column(
                                children: [
                                  Container(
                                    width: 300,
                                    child: TextFormField(
                                      key: senhakey,
                                      keyboardType: TextInputType.text,
                                      obscureText: _showPassword == false ?  true : false,
                                      decoration: InputDecoration(
                                        labelText: "Senha",
                                        labelStyle: const TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                        suffixIcon: GestureDetector(
                                          child: Icon(
                                            _showPassword == false ? Icons.visibility_off : Icons.visibility,  
                                            color: Colors.black38
                                          ),
                                          onTap: () {
                                            setState(() {
                                              _showPassword = ! _showPassword;
                                            });
                                          },
                                        ),
                                      ),
                                      validator: (String ? value) {
                                         if(value == null || value.isEmpty){
                                          return 'Senha Obrigatória';
                                         }
                                         if(value.length < 5){
                                          return 'A senha deve conter pelo menos 5 caracteres';
                                         }
                                         return null;
                                      },
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 20, 40, 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => TelacadastroSenha(),
                                          ),
                                        );
                                      }, 
                                      child: const Text(
                                        "Recuperar Senha",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              Column(
                                children: [
                                  Container(
                                    width: 300,
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                             TelaGradiente.azulTopoGradiente,
                                             TelaGradiente.verdeClarinhoGradiente,
                                             TelaGradiente.azulBebeGradiente
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(1.2),
                                      child: SizedBox.expand(
                                        child: TextButton(
                                          onPressed: (){
                                              emailkey.currentState?.validate();
                                              senhakey.currentState?.validate();

                                              Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => TelaMenu(),),
                                              );
                                          }, 
                                          child: const Text(
                                            "Login",
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
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 20, 40, 40),
                                child: Column(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                    Container(
                                      height: 20,
                                      child: TextButton(
                                        onPressed: (){
                                          Navigator.of(context).push(
                                            MaterialPageRoute(builder: (context) => TelaCadastro(),),
                                          );
                                        }, 
                                        child: const Text(
                                          "Cadastre-se",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                   ],
                                ),
                              ),

                            ],
                          ),
                        ),
                     ],
                  ),
                ],
              ),
              
           ),
        ),
    );
  }
}