import 'package:flutter/material.dart';
import 'package:flutter_desktop_validade/_color/tela_gradiente.dart';
import 'package:flutter_desktop_validade/tela_login.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  bool _showPassword = false;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
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
                  TelaGradiente.azulBebeGradiente,
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
                                  const Text(
                                    "Faça o seu cadastro",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Column(
                                    children: [
                                      Container(
                                         width: 300,
                                         child: TextFormField(
                                           keyboardType: TextInputType.text,
                                           decoration: const InputDecoration(
                                            labelText: "Nome",
                                            labelStyle: TextStyle(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                            ),
                                           ),
                                           validator: (String ? value) {
                                              if(value == null || value.isEmpty){
                                               return 'Campo Obrigatório';
                                              }
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
                                           keyboardType: TextInputType.text,
                                           decoration: const InputDecoration(
                                            labelText: "Setor",
                                            labelStyle: TextStyle(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                            ),
                                           ),
                                           validator: (String ? value) {
                                              if(value == null || value.isEmpty){
                                               return 'Campo Obrigatório';
                                              }
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
                                           keyboardType: TextInputType.text,
                                           decoration: const InputDecoration(
                                            labelText: "Cargo",
                                            labelStyle: TextStyle(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                            ),
                                           ),
                                           validator: (String ? value) {
                                              if(value == null || value.isEmpty){
                                               return 'Campo Obrigatório';
                                              }
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
                                  const SizedBox(height: 30),
                                  Column(
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: const  BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              TelaGradiente.azulTopoGradiente,
                                              TelaGradiente.verdeClarinhoGradiente,
                                              TelaGradiente.azulBebeGradiente,
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.2),
                                          child: SizedBox.expand(
                                            child: TextButton(
                                              onPressed: (){
                                                formkey.currentState?.validate();
                                              }, 
                                              child: const Text(
                                                "Cadastrar",
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
                                  const SizedBox(height: 30),
                                  Column(
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: const  BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              TelaGradiente.azulTopoGradiente,
                                              TelaGradiente.verdeClarinhoGradiente,
                                              TelaGradiente.azulBebeGradiente,
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.2),
                                          child: SizedBox.expand(
                                            child: TextButton(
                                              onPressed: (){
                                                 Navigator.of(context).push(
                                                   MaterialPageRoute(builder: (context) => TelaLogin(),),
                                                 );
                                              }, 
                                              child: const Text(
                                                "Logar",
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}