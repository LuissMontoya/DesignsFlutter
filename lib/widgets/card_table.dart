import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SigleCard(
                color: Colors.blue,
                icon: Icons.movie_creation,
                text: 'Entretenimiento'),
            _SigleCard(
                color: Colors.pinkAccent,
                icon: Icons.card_travel,
                text: 'Transporte'),
          ],
        ),

        //
        TableRow(
          children: [
            _SigleCard(
                color: Colors.purple, icon: Icons.shop_2, text: 'Compras'),
            _SigleCard(
                color: Colors.orange, icon: Icons.travel_explore, text: 'Vías'),
          ],
        ),

        //
        TableRow(
          children: [
            _SigleCard(
                color: Colors.green,
                icon: Icons.park_rounded,
                text: 'Zonas verdes'),
            _SigleCard(
                color: Colors.deepPurpleAccent,
                icon: Icons.cloud_done,
                text: 'Nube'),
          ],
        ),

        //
        TableRow(
          children: [
            _SigleCard(
                color: Colors.blue, icon: Icons.work_history, text: 'Trabajo'),
            _SigleCard(
                color: Colors.amber,
                icon: Icons.home_max_outlined,
                text: 'Casa'),
          ],
        ),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(
              this.icon,
              color: Colors.white,
            ),
            radius: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            this.text,
            style: TextStyle(color: this.color, fontSize: 18),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            //margin: EdgeInsets.all(15),
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
