import 'repositorio.dart';
import 'package:flutter/material.dart';
import 'produto.dart';
import 'lista_produtos.dart';


class TelaPrincipalProduto extends StatefulWidget {
  const TelaPrincipalProduto({super.key});

  @override
  State<TelaPrincipalProduto> createState() => _TelaPrincipalProdutoState();
}

class _TelaPrincipalProdutoState extends State<TelaPrincipalProduto> {
  Future<List<Produto>>? futureProdutos;

  @override
  void initState() {
    futureProdutos = getProdutos();
    print(futureProdutos);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: futureProdutos,
        builder: (context, snapshot) {
          if(snapshot.hasData){

            final produtos = snapshot.data as List<Produto>;
            return ListaProdutos(produtos);


          } else if(snapshot.hasError){
            return Center(
              child: Text(
                snapshot.error.toString(),
                style: TextStyle(fontSize: 18),
              ),
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );

  }
}

