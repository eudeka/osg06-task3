import 'package:flutter/material.dart';

import 'detail.dart';
import 'model.dart';

class Item extends StatelessWidget {
  final Model model;

  Item({
    this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        child: GridTile(
          child: Image.network(model.imageUrl),
          footer: Container(
            color: Color.fromRGBO(0, 0, 0, 0.7),
            padding: EdgeInsets.all(8),
            child: Text(
              model.title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return DetailPage(
                  model: model,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
