import 'produto.dart';
import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  final Produto produto;
  const ItemProduto(this.produto);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(child: Image(image: NetworkImage(produto.imagem))),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              produto.titulo,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ..._buildStars(double.parse(produto.avaliacao)),
                SizedBox(width: 8.0),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "US\$ " + produto.preco,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),

        ],
      ),
    );
  }

  List<Widget> _buildStars(double rating) {
    List<Widget> stars = [];
    int fullStars = rating.floor();
    for (int i = 0; i < fullStars; i++) {
      stars.add(Icon(Icons.star, color: Colors.amber));
    }
    if (rating - fullStars >= 0.5) {
      stars.add(Icon(Icons.star_half, color: Colors.amber));
    }
    while (stars.length < 5) {
      stars.add(Icon(Icons.star_border, color: Colors.amber));
    }
    return stars;
  }
}
