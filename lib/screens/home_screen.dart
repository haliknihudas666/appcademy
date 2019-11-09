import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class HomeScreen extends StatelessWidget {
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
              colors: [
                Colors.lightBlueAccent,
                Colors.lightBlue,
              ],
            )),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    width: 300,
                    child: GradientCard(
                      gradient: Gradients.tameer,
                      shadowColor:
                          Gradients.tameer.colors.last.withOpacity(0.25),
                      elevation: 8,
                      child: Center(
                        child: Text(
                          'HELLO',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
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
                        //TODO Generate New Trivia Here or Call a Function
                        print('pressed');
                      },
                      gradient: Gradients.cosmicFusion,
                      shadowColor:
                          Gradients.cosmicFusion.colors.last.withOpacity(0.25),
                    ),
                  ),
                ],
              ),
            )));
  }
}
