import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CurseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'flutter_image.jpg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        Flexible(
          child: AutoSizeText(
            'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
            minFontSize: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          'Daniel Ciolfi',
          style: TextStyle(
            color: Colors.grey
          ),
        ),
        Text(
          'R\$ 22,90',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
