import 'package:amedia_ui/BirinchiList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
            isAlwaysShown: true,
            thickness: MaterialStateProperty.all(10),
            thumbColor: MaterialStateProperty.all(Colors.orange),
            radius: Radius.circular(4),
            minThumbLength: 100),
        primarySwatch: Colors.blue,
      ),
      home: FirstList()
    );
  }
}


