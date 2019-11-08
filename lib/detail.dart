import 'package:flutter/material.dart';

import 'model.dart';

class DetailPage extends StatelessWidget {
  final Model model;

  DetailPage({
    this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            model.imageUrl,
            fit: BoxFit.cover,
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: Text(
              model.description,
              textAlign: TextAlign.justify,
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
