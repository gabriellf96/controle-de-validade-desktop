import 'package:flutter/material.dart';
import 'package:flutter_desktop_validade/_color/tela_gradiente.dart';
import 'package:flutter_desktop_validade/tela_login.dart';

class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/gfrlogo.png"),

            const SizedBox(height: 5,),
            Column(
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TelaLogin(),),
                    );
                  }, 
                  child: const Text(
                    "Entrar"
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
