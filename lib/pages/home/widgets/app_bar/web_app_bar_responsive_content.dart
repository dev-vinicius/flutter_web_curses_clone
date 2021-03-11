import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(
                      color: Colors.grey[600],
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 4),
                      IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.grey[500],
                        onPressed: () {},
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquisar cursos',
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 32),
              if (constraints.maxWidth >= 400)
                TextButton(
                  child: Text('Aprender'),
                  style: TextButton.styleFrom(
                    primary: Colors.white
                  ),
                  onPressed: () {},
                ),
              const SizedBox(width: 20),
              if (constraints.maxWidth >= 500)
                TextButton(
                  child: Text('Flutter'),
                  style: TextButton.styleFrom(
                    primary: Colors.white
                  ),
                  onPressed: () {},
                ),
            ],
          );
        },
      ),
    );
  }
}
