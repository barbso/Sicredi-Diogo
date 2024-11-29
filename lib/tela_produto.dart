import 'package:flutter/material.dart';
import 'produto.dart';

class TelaProduto extends StatefulWidget {
  final Produto produto;

  TelaProduto(this.produto);

  @override
  _TelaProdutoState createState() => _TelaProdutoState();
}

class _TelaProdutoState extends State<TelaProduto> with SingleTickerProviderStateMixin {
  bool _isLiked = false;
  AnimationController? _animationController;
  Animation<double>? _sizeAnimation;
  Animation<Color?>? _colorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _sizeAnimation = Tween<double>(begin: 24.0, end: 32.0).animate(
      CurvedAnimation(parent: _animationController!, curve: Curves.easeInOut),
    );

    _colorAnimation = ColorTween(begin: Colors.grey, end: const Color.fromRGBO(0, 200, 0, 1)).animate(
      CurvedAnimation(parent: _animationController!, curve: Curves.easeInOut),
    );
  }

  void _toggleLike() {
    setState(() {
      if (_isLiked) {
        _animationController!.reverse();
      } else {
        _animationController!.forward();
      }
      _isLiked = !_isLiked;
    });
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.produto.categoria,
          style: const TextStyle(
            color: Color.fromRGBO(0, 200, 0, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color.fromRGBO(0, 200, 0, 1)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                widget.produto.marca,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 200, 0, 1),
                ),
              ),
              const SizedBox(height: 16.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.produto.imagem,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(child: Text('Imagem não disponível'));
                  },
                ),
              ),
              const SizedBox(height: 24.0),
              Text(
                widget.produto.titulo,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                "US\$ ${widget.produto.preco}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 26,
                  color: Color.fromRGBO(0, 200, 0, 1), // Cor verde
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.orange),
                  const SizedBox(width: 4.0),
                  Text(
                    '${widget.produto.avaliacao} / 5',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              Text(
                widget.produto.descricao,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add_shopping_cart),
                    label: const Text("Adicionar ao carrinho"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      primary: const Color.fromRGBO(0, 200, 0, 1), // Cor verde
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Compre Agora"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      primary: const Color(0xFFEF5350), // Vermelho
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              GestureDetector(
                onTap: _toggleLike,
                child: AnimatedBuilder(
                  animation: _animationController!,
                  builder: (context, child) {
                    return Icon(
                      _isLiked ? Icons.favorite : Icons.favorite_border,
                      color: _colorAnimation!.value,
                      size: _sizeAnimation!.value,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
