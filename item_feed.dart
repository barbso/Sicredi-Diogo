import 'package:flutter/material.dart';

class ItemFeed extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQReHBiC0Gc-A_3XgGn3kb4h0qyolCbojb5qQ&usqp=CAU"),
            radius: 35,
            backgroundColor: Colors.transparent,
          ),

          SizedBox(width: 4),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Diogo96ogoiD", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Diogo Lorenzo Barbosa"),
              ],
            ),
          ),
          OutlinedButton(onPressed: (){}, child: Text("Remover"))

        ],
      ),
    );
  }
}
