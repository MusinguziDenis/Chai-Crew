import 'package:chai_crew/screens/authenticate/authenticate.dart';
import 'package:chai_crew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:chai_crew/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:chai_crew/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    //print(user);
    //return either home or authenticate widget
    //return Authenticate();

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
