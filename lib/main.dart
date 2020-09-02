import 'package:chai_crew/models/user.dart';
import 'package:chai_crew/screens/wrapper.dart';
import 'package:chai_crew/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      //we also have to specify the kind of data that we are going
      //to listen to
      value: AuthService().user,
      //this specifies what stream we are going to listen to
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
