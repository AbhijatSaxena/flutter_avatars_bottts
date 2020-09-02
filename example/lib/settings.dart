import 'package:BotttsExample/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avatars_bottts/flutter_avatars_bottts.dart';

class AvatarSettings extends StatefulWidget {
  final Bottt bottt;
  AvatarSettings(this.bottt);

  @override
  _AvatarSettingsState createState() => _AvatarSettingsState();
}

class _AvatarSettingsState extends State<AvatarSettings> {
  Bottt localBottt;

  @override
  void initState() {
    super.initState();
    localBottt = widget.bottt;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BotttAvatar(widget.bottt),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Eye Type :'),
                  DropdownButton<EyeType>(
                    value: widget.bottt.eye,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    elevation: 8,
                    style: TextStyle(color: Colors.blueAccent),
                    onChanged: (EyeType newValue) {
                      setState(() {
                        localBottt.eye = newValue;
                      });
                    },
                    items: EyeType.values.map((EyeType value) {
                      return DropdownMenuItem<EyeType>(
                        value: value,
                        child: SizedBox(
                          width: 120.0,
                          child: Text(value.toString().split('.')[1],
                              textAlign: TextAlign.center),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Face Type :'),
                  DropdownButton<FaceType>(
                    value: widget.bottt.face,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    elevation: 8,
                    style: TextStyle(color: Colors.blueAccent),
                    onChanged: (FaceType newValue) {
                      setState(() {
                        localBottt.face = newValue;
                      });
                    },
                    items: FaceType.values.map((FaceType value) {
                      return DropdownMenuItem<FaceType>(
                        value: value,
                        child: SizedBox(
                          width: 120.0,
                          child: Text(value.toString().split('.')[1],
                              textAlign: TextAlign.center),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mouth Type :'),
                  DropdownButton<MouthType>(
                    value: widget.bottt.mouth,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    elevation: 8,
                    style: TextStyle(color: Colors.blueAccent),
                    onChanged: (MouthType newValue) {
                      setState(() {
                        localBottt.mouth = newValue;
                      });
                    },
                    items: MouthType.values.map((MouthType value) {
                      return DropdownMenuItem<MouthType>(
                        value: value,
                        child: SizedBox(
                          width: 120.0,
                          child: Text(value.toString().split('.')[1],
                              textAlign: TextAlign.center),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Side Type :'),
                  DropdownButton<SideType>(
                    value: widget.bottt.side,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    elevation: 8,
                    style: TextStyle(color: Colors.blueAccent),
                    onChanged: (SideType newValue) {
                      setState(() {
                        localBottt.side = newValue;
                      });
                    },
                    items: SideType.values.map((SideType value) {
                      return DropdownMenuItem<SideType>(
                        value: value,
                        child: SizedBox(
                          width: 120.0,
                          child: Text(value.toString().split('.')[1],
                              textAlign: TextAlign.center),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Texture Type: '),
                  DropdownButton<TextureType>(
                    value: widget.bottt.texture,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    elevation: 8,
                    style: TextStyle(color: Colors.blueAccent),
                    onChanged: (TextureType newValue) {
                      setState(() {
                        localBottt.texture = newValue;
                      });
                    },
                    items: TextureType.values.map((TextureType value) {
                      return DropdownMenuItem<TextureType>(
                        value: value,
                        child: SizedBox(
                          width: 120.0,
                          child: Text(value.toString().split('.')[1],
                              textAlign: TextAlign.center),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Type: '),
                  DropdownButton<TopType>(
                    value: widget.bottt.top,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    elevation: 8,
                    style: TextStyle(color: Colors.blueAccent),
                    onChanged: (TopType newValue) {
                      setState(() {
                        localBottt.top = newValue;
                      });
                    },
                    items: TopType.values.map((TopType value) {
                      return DropdownMenuItem<TopType>(
                        value: value,
                        child: SizedBox(
                          width: 120.0,
                          child: Text(value.toString().split('.')[1],
                              textAlign: TextAlign.center),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 48.0,
                    icon: Icon(Icons.save),
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return MyHomePage(
                          sourceBot: localBottt,
                        );
                      }),
                    ),
                  ),
                  IconButton(
                    iconSize: 48.0,
                    icon: Icon(Icons.cancel),
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return MyHomePage(
                          sourceBot: widget.bottt,
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
