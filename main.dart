import 'package:flutter/material.dart';
import 'package:tela_sicredi/menu_lateral.dart';

void main() {
  runApp(AppTest());
}

class AppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Título"),
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
              onPressed: () {
                // Ação do ícone de notificação
              },
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
                          'Olá, DIOGO',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green, fontFamily: 'Arial',),
                        ),
                        Text(
                          'Bem-vindo ao Sicredi',
                          style: TextStyle(fontSize: 12, color: Colors.grey, fontFamily: 'Arial',),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cooperativa / Conta',
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Arial',),
                        ),
                        Text(
                          '0244 / 59097-5',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Arial',),
                        ),
                        Text(
                          'Último acesso: 15/03/2024',
                          style: TextStyle(fontSize: 12, color: Colors.grey, fontFamily: 'Arial',),
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
                      text: 'Saldo',
                      icon: Icons.attach_money,
                      onPressed: () {
                        // Ação do botão de Saldo
                      },
                    ),
                    SizedBox(height: 20),
                    CarouselButton(
                      text: 'Cartão',
                      icon: Icons.payment_outlined,
                      onPressed: () {
                        // Ação do botão de Cartão
                      },
                    ),
                    SizedBox(height: 20),
                    CarouselButton(
                      text: 'Investimentos',
                      icon: Icons.bar_chart_rounded,
                      onPressed: () {
                        // Ação do botão de Investimentos
                      },
                    ),
                    SizedBox(height: 20),
                    CarouselButton(
                      text: 'Crédito',
                      icon: Icons.currency_exchange_rounded,
                      onPressed: () {
                        // Ação do botão de Crédito
                      },
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Eu quero...',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.pix, color: Colors.green, size: 28),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fazer um Pix',
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),

                            Text(
                              'Pague e receba de forma fácil e rápida.',
                              style: TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.money_outlined, color: Colors.green, size: 28),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pagar uma conta',
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),

                            Text(
                              'Escaneie o código de barras e pague a sua conta.',
                              style: TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.payments_outlined, color: Colors.green, size: 28),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fazer uma transferência',
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),

                            Text(
                              'De maneira fácil e rápida.',
                              style: TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Row(
                      children: [
                        Icon(Icons.receipt_long_rounded, color: Colors.green, size: 28),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ver meus comprovantes',
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),
                             // Aumentando o espaço entre os textos
                            Text(
                              'Mantenha suas transações em dia.',
                              style: TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
              SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.person_pin_outlined, color: Colors.green, size: 28),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Enviar uma opinião',
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),

                            Text(
                              'Dê sua opinião, reporte problemas ou faça',
                              style: TextStyle(fontSize: 13, color: Colors.grey),
                            ),

                            Text(
                              'sugestões de melhorias para o App.',
                              style: TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
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
        padding: EdgeInsets.all(23), // Aumentando o padding para deixar os botões maiores
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18), // Deixando os botões mais arredondados
        ),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.green, size: 35), // Aumentando o tamanho do ícone
          SizedBox(width: 15), // Adicionando um espaço entre o ícone e o texto
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 22, // Aumentando o tamanho do texto
                fontWeight: FontWeight.bold, // Deixando o texto mais gordinho
                color: Colors.green,
              ),
            ),
          ),
          Icon(Icons.arrow_back_sharp, color: Colors.green, size: 28), // Aumentando o tamanho do ícone de seta
        ],
      ),
    );
  }
}
