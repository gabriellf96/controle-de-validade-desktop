import 'package:flutter/material.dart';
import 'package:flutter_desktop_validade/_color/tela_gradiente.dart';

class TelaSobre extends StatelessWidget {
  const TelaSobre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text(
          "Desenvolvedores",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ), 
        backgroundColor: Colors.white54,
        leading: IconButton(
          onPressed: () => Navigator.pop(context, false), 
          icon: const Icon(Icons.arrow_back),
          color: Colors.black38,
        ),
      ),
      body: Container(
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
          children:  [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Image.asset("assets/gfrlogo.png"),
                const SizedBox(
                    height: 10,
                ),
                SingleChildScrollView(
                  child: Container(
                    height: 1800,
                    width: 1650,
                    decoration: const BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(64),
                      //topRight: Radius.circular(64)
                      ),
                    ),
                    padding: const EdgeInsets.only(
                       top: 40,
                       left: 40,
                       right: 40
                    ),
                    child: ListView(
                      children: [
                        SizedBox(
                          width: 90,
                          height: 90,
                          child: Center(
                            child: ClipRRect(
                              child: Image.asset("assets/gabriel.png"),
                              borderRadius: const BorderRadius.all(Radius.circular(360)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          child: const Center(
                            child: Text(
                              "Gabriel Lourenço Figueiredo",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: SizedBox(
                            width: 90, 
                            height: 90,
                            child: ClipRRect(
                              child: Image.asset("assets/felipe.png"),
                              borderRadius: const BorderRadius.all(Radius.circular(360)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          child: const Center(
                            child: Text(
                              "Luis Felipe N.Barcheschi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                          child: const Center(
                            child: Text(
                            "Este projeto está sendo desenvolvido no intuito  de"
                            "melhorar a logística de mercadorias com datas  de"
                            "validades podendo ter o controle total das  mercadorias"
                            "evitando desperdícios e perdas para a empresa",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                          ),
                        ),
                      ],
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