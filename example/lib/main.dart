import 'package:flutter/material.dart';
import 'package:flutter_avatars_bottts/flutter_avatars_bottts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Avatars - Bottts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Bottt _bottt;

  @override
  void initState() {
    super.initState();
    _randomizeAvatar();
  }

  void _randomizeAvatar() {
    _bottt = Bottt.random();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BotttAvatar(bottt: _bottt),
            IconButton(
              iconSize: 48.0,
              icon: Icon(Icons.refresh),
              onPressed: () => setState(_randomizeAvatar),
            ),
          ],
        ),
      ),
    );
  }
}
