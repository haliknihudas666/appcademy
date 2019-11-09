import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class HomeScreen extends StatelessWidget {
  final trivia =
      'Mabaho pranella shonga kasi ugmas thunder jowa chipipay shongaers bigalou.';

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
                        'Did you know that $trivia',
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
                    print('pressed');
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
