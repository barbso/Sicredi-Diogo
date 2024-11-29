import 'item_produto.dart';
import 'produto.dart';
import 'package:flutter/material.dart';
import 'tela_produto.dart';
import 'package:badges/badges.dart' as badge;

class ListaProdutos extends StatefulWidget {
  final List<Produto> produtos;
  const ListaProdutos(this.produtos);

  @override
  State<ListaProdutos> createState() => _ListaProdutosState();
}

class _ListaProdutosState extends State<ListaProdutos> {
  final TextEditingController buscaController = TextEditingController();
  List<Produto> produtosFiltrados = [];

  @override
  void initState() {
    produtosFiltrados = widget.produtos;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(0, 200, 0, 1),
        ),
        title: const Text(
          'Lista de Produtos',
          style: TextStyle(
            color: Color.fromRGBO(0, 200, 0, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: badge.Badge(
              child: const Icon(Icons.shopping_cart, color: Color.fromRGBO(0, 200, 0, 1)),
              badgeContent: const Text(
                '5',
                style: TextStyle(color: Colors.white),
              ),
              badgeStyle: const badge.BadgeStyle(
                badgeColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: const Color(0xFFFFFFFF),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: buscaController,
                      decoration: InputDecoration(
                        hintText: 'Buscar',
                        prefixIcon: const Icon(Icons.search, color: Color.fromRGBO(0, 200, 0, 1)),
                        hintStyle: const TextStyle(color: Color.fromRGBO(0, 200, 0, 1)),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(0, 200, 0, 1)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(0, 200, 0, 1)),
                        ),
                      ),
                      style: const TextStyle(color: Colors.black),
                      onChanged: (textoBusca) {
                        setState(() {
                          produtosFiltrados = widget.produtos
                              .where((produto) => produto.titulo.toLowerCase().contains(textoBusca))
                              .toList();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: produtosFiltrados.length,
                itemBuilder: (context, index) {
                  final produto = produtosFiltrados[index];
                  return GestureDetector(
                    child: ItemProduto(produto),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaProduto(produto)),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
