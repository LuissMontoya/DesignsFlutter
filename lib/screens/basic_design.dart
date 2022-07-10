import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/landscape.jpg'),
          ),

          //Title
          Title(),

          //button section
          ButtonSection(),

          //Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                'Excepteur quis aute in mollit velit sunt dolor dolor cupidatat amet cupidatat excepteur aliqua.Aliquip aliqua occaecat officia esse nostrud cupidatat consectetur exercitation excepteur in consectetur nostrud ipsum.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Paisajes de Color',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Mensaje de bienvenida en pantalla',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, texto: 'Call'),
          CustomButton(icon: Icons.map_sharp, texto: 'Route'),
          CustomButton(icon: Icons.share, texto: 'Shared')
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String texto;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue),
        Text(
          this.texto,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
