import 'package:chai_crew/models/chai.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'chai_tile.dart';

class ChaiList extends StatefulWidget {
  @override
  _ChaiListState createState() => _ChaiListState();
}

class _ChaiListState extends State<ChaiList> {
  @override
  Widget build(BuildContext context) {
    /*chais.forEach((chai) {
      print(chai.name);
      print(chai.sugars);
      print(chai.strength);
    });*/
    //print(chais.documents);
    //to cycle through the documents and print them we are
    //going to use a for loop
    /*for (var doc in chais.documents) {
      print(doc.data);
    }*/
    final chais = Provider.of<List<Chai>>(context) ?? [];
    return ListView.builder(
        itemCount: chais.length,
        itemBuilder: (context, index) {
          return ChaiTile(chai: chais[index]);
        });
  }
}
