import 'package:flutter/material.dart';

import 'package:design/widgets/Page_title.dart';
import 'package:design/widgets/cuestom_bottom_navigation.dart';
import 'package:design/widgets/background.dart';
import 'package:design/widgets/card_table.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Background(),

          // Home Body
          _HomeBody()

          //boton
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          PageTitle(),

          // Car Table
          CardTable(),
        ],
      ),
    );
  }
}
