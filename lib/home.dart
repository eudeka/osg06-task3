import 'package:flutter/material.dart';

import 'data.dart';
import 'item.dart';
import 'model.dart';

class HomePage extends StatelessWidget {
  final List<Model> _listModel = Data.listModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eudeka! Flutter Basic"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 256,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 4,
        ),
        itemCount: _listModel.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            model: _listModel[index],
          );
        },
      ),
    );
  }
}
