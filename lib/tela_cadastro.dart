import 'package:flutter/material.dart';
import 'package:flutter_desktop_validade/_color/tela_gradiente.dart';
import 'package:flutter_desktop_validade/tela_login.dart';
import '../controller/login_controller.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  bool _showPassword = false;

  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtSetor = TextEditingController();
  var txtCargo = TextEditingController();

  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        
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
                                           controller: txtNome,
                                           decoration: const InputDecoration(
                                            labelText: "Nome",
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
                                         width: 300,
                                         child: TextFormField(
                                           keyboardType: TextInputType.text,
                                           controller: txtSetor,
                                           decoration: const InputDecoration(
                                            labelText: "Setor",
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
                                         width: 300,
                                         child: TextFormField(
                                           keyboardType: TextInputType.text,
                                           controller: txtCargo,
                                           decoration: const InputDecoration(
                                            labelText: "Cargo",
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
                                        width: 300,
                                        child: TextFormField(
                                          keyboardType: TextInputType.emailAddress,
                                          controller: txtEmail,
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
                                        width: 300,
                                        child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          controller: txtSenha,
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
                                                 LoginController().criarConta(
                                                   context,
                                                   txtNome.text,
                                                   txtEmail.text,
                                                   txtSenha.text,
                                                   txtCargo.text,
                                                   txtSetor.text
                                                 );
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