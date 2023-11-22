import 'package:flutter/material.dart';
import 'package:flutter_desktop_validade/_color/tela_gradiente.dart';

class TelaControleEstoque extends StatelessWidget {
  const TelaControleEstoque({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Controle de Estoque",
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
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return const ListTile(

              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Lote - Produto X (Código do produto)', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('Loja - Serial da loja', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('Estoque - Quantidade', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('Data de validade - Data', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('Dias Restantes - Dias', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}