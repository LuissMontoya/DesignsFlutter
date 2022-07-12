import 'package:flutter/material.dart';

import 'package:design/widgets/Page_title.dart';
import 'package:design/widgets/background.dart';

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
      ],
    ));
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          PageTitle()
        ],
      ),
    );
  }
}
