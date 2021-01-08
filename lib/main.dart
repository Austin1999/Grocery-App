import 'package:flutter/material.dart';
import 'package:fthdaily/location/location.dart';
import 'package:fthdaily/wallet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF7653A3),
        accentColor: Color(0xFF7653A3),
        iconTheme:
            Theme.of(context).iconTheme.copyWith(color: Color(0xFF9B63DC)),
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: Color(0xFF707070)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Wallet(),
    );
  }
}
