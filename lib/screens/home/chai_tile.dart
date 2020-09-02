import 'package:flutter/material.dart';
import 'package:chai_crew/models/chai.dart';

class ChaiTile extends StatelessWidget {
  final Chai chai;
  ChaiTile({this.chai});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[chai.strength],
            backgroundImage: AssetImage('assets/images/coffeecup.jpg'),
          ),
          title: Text(chai.name),
          subtitle: Text('Takes ${chai.sugars} sugar(s)'),
        ),
      ),
    );
  }
}
