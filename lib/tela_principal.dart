import 'package:flutter/material.dart';
import 'menu_lateral.dart';
import 'tela_principal_produtos.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color.fromRGBO(0, 200, 0, 1)),
          toolbarHeight: 90,
          flexibleSpace: Center(
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/a/a6/Logomarca_Sicredi.jpg',
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        drawer: MenuLateral(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Olá, PESSOA',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 200, 0, 1),
                            fontFamily: 'Arial',
                          ),
                        ),
                        Text(
                          'Bem-vindo ao Sicred',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontFamily: 'Arial',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'O AMIGO DO SEU',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Arial',
                          ),
                        ),
                        Text(
                          'Dinheiro',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Arial',
                          ),
                        ),
                        Text(
                          'Último acesso: 05/07/2024',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontFamily: 'Arial',
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CarouselButton(
                      text: 'Dinheiro',
                      icon: Icons.monetization_on_outlined,
                      onPressed: () {},
                    ),
                    SizedBox(height: 20),
                    CarouselButton(
                      text: 'Cartões',
                      icon: Icons.payment_outlined,
                      onPressed: () {},
                    ),
                    SizedBox(height: 20),
                    CarouselButton(
                      text: 'Investimentos',
                      icon: Icons.bar_chart_rounded,
                      onPressed: () {},
                    ),
                    SizedBox(height: 20),
                    CarouselButton(
                      text: 'Crédito',
                      icon: Icons.currency_exchange_rounded,
                      onPressed: () {},
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Mais usados...',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 15),
                    _buildRowWithIcon(
                      icon: Icons.pix,
                      title: 'Fazer um Pix',
                      subtitle: 'Pague e receba de forma fácil e rápida.',
                    ),
                    SizedBox(height: 20),
                    _buildRowWithIcon(
                      icon: Icons.money_outlined,
                      title: 'Pagar uma conta',
                      subtitle: 'Escaneie o código de barras e pague a sua conta.',
                    ),
                    SizedBox(height: 20),
                    _buildRowWithIcon(
                      icon: Icons.receipt_long_rounded,
                      title: 'Ver meus comprovantes',
                      subtitle: 'Mantenha suas transações em dia.',
                    ),
                    SizedBox(height: 50),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton.icon(
                            onPressed: () {
                              // Navegar para a TelaPrincipalProduto
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TelaPrincipalProduto(),
                                ),
                              );
                            },
                            icon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Image.network(
                                    'https://cdn-icons-png.freepik.com/256/6149/6149553.png?semt=ais_hybrid',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  'Shopping',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(0, 200, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                            label: Container(),


                          ),
                        ),
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

class CarouselButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const CarouselButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        padding: EdgeInsets.all(23),
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Row(
        children: [
          Icon(icon, color: Color.fromRGBO(0, 200, 0, 1), size: 35),
          SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 200, 0, 1),
              ),
            ),
          ),
          Icon(Icons.arrow_forward, color: Color.fromRGBO(0, 200, 0, 1), size: 28),
        ],
      ),
    );
  }
}

Widget _buildRowWithIcon({required IconData icon, required String title, required String subtitle}) {
  return Row(
    children: [
      Icon(icon, color: Color.fromRGBO(0, 200, 0, 1), size: 28),
      SizedBox(width: 10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
    ],
  );
}
