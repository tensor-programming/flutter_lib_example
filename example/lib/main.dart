import 'package:flutter/material.dart';

import 'package:shaded_text/shaded_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shaded Text Example'),
      ),
      body: Center(
        child: ShadedText(
          shadeBuilder: (context, text, color) => Container(
                child: Text(
                  text,
                  style: TextStyle(color: color, fontSize: 48.0),
                ),
              ),
          shadeColor: Colors.deepOrange.withOpacity(0.4),
          textColor: Colors.green,
          text: 'Testing the shaded Text Widget',
          xTrans: 40.0,
          yTrans: 40.0,
        ),
      ),
    );
  }
}
