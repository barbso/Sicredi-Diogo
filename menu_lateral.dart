import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Drawer(
        child: Column(
          children: [


                SizedBox(height: 13),

                ListTile(
                  leading: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/a/a6/Logomarca_Sicredi.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  title: Text(''),
                  onTap: () {

                  },
                ),
                SizedBox(height: 13),




      Expanded(
        child: ListView(
          children: [



            ListTile(
              leading: Icon(Icons.home, color: Color.fromRGBO(0, 200, 0, 1)),
              title: Text(
                'Início',
                style: TextStyle(fontSize: 18,

                  fontFamily: 'Arial',
                ),
              ),
              onTap: () {},
            ),


            ListTile(
                  leading: Icon(Icons.person_outline_sharp, color: Color.fromRGBO(0, 200, 0, 1) ),
                  title: Text('Meu Perfil', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on_outlined , color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Conta Corrente', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.sensor_occupied_outlined, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Assembleias', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.money_rounded , color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Pagamentos', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.pix_sharp, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Pix', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.transfer_within_a_station_rounded, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Transferências', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.payment_outlined, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Cartões', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.bar_chart_rounded, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Investimentos', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.change_history_rounded , color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Previdência', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.currency_exchange_rounded, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Crédito', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.shield_outlined , color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Seguros', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.supervised_user_circle_outlined , color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Open Finance', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.shopping_cart_outlined , color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Shopping', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.chrome_reader_mode_outlined, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Cheques', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.settings_cell_outlined, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Recarga de Celular', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.payments_outlined, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Saque Sem Cartão', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle_outlined , color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Capital Social', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.handshake_outlined, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Autorizações', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.calendar_month_outlined , color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Agendamentos', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.receipt_long_outlined, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Comprovantes', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.connect_without_contact_rounded, color: Color.fromRGBO(0, 200, 0, 1)) ,
                  title: Text('Entre em contato', style: TextStyle(fontSize: 18,

                    fontFamily: 'Arial',),
                  ),
                  onTap: (){},
                ),
              ],
            ),
      ),


            SizedBox(height: 13),

            ListTile(
              leading: Icon(Icons.turn_left_sharp, color: Colors.grey) ,
              title: Text('Sair da Conta', style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',)),
              onTap: (){},
            ),

            SizedBox(height: 13),


          ],
        ),
      ),
    );
  }
}







