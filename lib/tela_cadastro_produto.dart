import 'package:flutter/material.dart';
import 'package:flutter_desktop_validade/_color/tela_gradiente.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../controller/login_controller.dart';
import '../controller/tarefa_controller.dart';
import '../model/tarefa.dart';




class TelacadastroProduto extends StatefulWidget {
  const TelacadastroProduto({super.key});

  @override
  State<TelacadastroProduto> createState() => _TelacadastroProdutoState();
}

class _TelacadastroProdutoState extends State<TelacadastroProduto> {
   var txtTitulo = TextEditingController();
   var txtDescricao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cadastro dos Produtos",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ), 
        backgroundColor: Color.fromARGB(255, 0, 250, 208),
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
        child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: StreamBuilder<QuerySnapshot>(
          stream: TarefaController().listar().snapshots(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: Text('Não foi possível conectar.'),
                );
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              default:
                final dados = snapshot.requireData;
                if (dados.size > 0) {
                  return ListView.builder(
                    itemCount: dados.size,
                    itemBuilder: (context, index) {
                      String id = dados.docs[index].id;
                      dynamic item = dados.docs[index].data();
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.description),
                          title: Text(item['titulo']),
                          subtitle: Text(item['descricao']),
                          onTap: () {
                            txtTitulo.text = item['titulo'];
                            txtDescricao.text = item['descricao'];
                            salvarTarefa(context, docId: id);
                          },
                          onLongPress: () {
                            TarefaController().excluir(context, id);
                          },
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text('Nenhuma tarefa encontrada.'),
                  );
                }
            }
          },
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          salvarTarefa(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void salvarTarefa(context, {docId}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          title: Text("Adicionar Tarefa"),
          content: SizedBox(
            height: 250,
            width: 300,
            child: Column(
              children: [
                TextField(
                  controller: txtTitulo,
                  decoration: InputDecoration(
                    labelText: 'Título',
                    prefixIcon: Icon(Icons.description),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: txtDescricao,
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Descrição',
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actionsPadding: EdgeInsets.fromLTRB(20, 0, 20, 10),
          actions: [
            TextButton(
              child: Text("fechar"),
              onPressed: () {
                txtTitulo.clear();
                txtDescricao.clear();
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text("salvar"),
              onPressed: () {
                var t = Tarefa(
                  LoginController().idUsuario(),
                  txtTitulo.text,
                  txtDescricao.text,
                );
                txtTitulo.clear();
                txtDescricao.clear();
                if (docId == null) {
                  //
                  // ADICIONAR TAREFA
                  //
                  TarefaController().adicionar(context, t);
                } else {
                  //
                  // ATUALIZAR TAREFA
                  //
                  TarefaController().atualizar(context, docId, t);
                }
              },
            ),
          ],
        );
      },
    );
  }
  
}