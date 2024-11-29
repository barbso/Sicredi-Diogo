class Produto{
  String titulo;
  String preco;
  String descricao;
  String imagem;
  String avaliacao;
  String images;
  String categoria;
  String marca;

  Produto({
    required this.titulo,
    required this.preco,
    required this.descricao,
    required this.imagem,
    required this.avaliacao,
    required this.images,
    required this.categoria,
    required this.marca


  });

  Produto.fromJson(Map<String, dynamic> json)
      :   titulo = json['title'].toString(),
        preco = json['price'].toString(),
        descricao = json['description'].toString(),
        imagem = json['thumbnail'].toString(),
        avaliacao = json['rating'].toString(),
        images = json['images'].toString(),
        categoria = json['category'].toString(),
        marca = json['brand'].toString();





}