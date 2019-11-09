import 'package:appcademy_hackaton/utils/API.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

String _trivia = '';

class _HomeScreenState extends State<HomeScreen> {
  void _refreshtrivia() {
    setState(() => API.getTrivia().then((value) {
          _trivia = value.text;
        }).catchError((error) {
          print(error);
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.9],
            colors: <Color>[
              Color(0xff00d2ff),
              Color(0xff3a47d5),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FutureBuilder(
                future: API.getTrivia(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    _trivia = snapshot.data.text;
                  } else if (snapshot.hasError) {
                    print('error');
                  }
                  return Text('');
                },
              ),
              Text(
                'AppCademy',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 350,
                height: 400,
                child: GradientCard(
                  gradient: Gradients.backToFuture,
                  shadowColor: Colors.black,
                  elevation: 20,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: AutoSizeText(
                        'Did you know that $_trivia',
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ButtonTheme(
                minWidth: 150,
                height: 50,
                child: GradientButton(
                  child: Text(
                    'Random',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  callback: () {
                    //TODO Generate New Trivia Here or Call a Function http://numbersapi.com/#random/trivia
                    _refreshtrivia();
                    print(_trivia);
                  },
                  gradient: Gradients.coldLinear,
                  shadowColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
