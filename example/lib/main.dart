import 'package:BotttsExample/settings.dart';
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
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Bottt sourceBot;

  MyHomePage({Key key, this.sourceBot}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Bottt _bottt;

  @override
  void initState() {
    super.initState();
    _initializeAvatar();
  }

  void _initializeAvatar() {
    //take from constructor parameter, otherwise use default values
    setState(() {
      if (widget.sourceBot != null) {
        _bottt = widget.sourceBot;
      } else {
        _bottt = new Bottt(
          color: Colors.red,
          eye: EyeType.Glow,
          face: FaceType.Square03,
          mouth: MouthType.Bite,
          side: SideType.Round,
          texture: TextureType.Dirty01,
          top: TopType.Horns,
        );
      }
    });
  }

  void _randomizeAvatar() {
    setState(() {
      _bottt = Bottt.random();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Avatars - Bottts'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BotttAvatar(_bottt),
            IconButton(
              iconSize: 48.0,
              icon: Icon(Icons.refresh),
              onPressed: _randomizeAvatar,
            ),
            IconButton(
              iconSize: 48.0,
              icon: Icon(Icons.settings),
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return AvatarSettings(_bottt);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
