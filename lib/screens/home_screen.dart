import 'package:auto_size_text/auto_size_text.dart';
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
                  colors: <Color>[Color(0xff00d2ff), Color(0xff3a47d5)]),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'AppCademy',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    height: 400,
                    child: GradientCard(
                        gradient: Gradients.backToFuture,
                        shadowColor: Colors.black,
                        elevation: 20,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: AutoSizeText(
                              //TODO Replace this with text from http://numbersapi.com/#random/trivia
                              'Lorem ipsum keme keme keme 48 years keme keme majonders shogal warla kasi pamenthol at nang ng shontis tungril krung-krung jowa at bakit ng ng otoko at na ang katol bongga klapeypey-klapeypey effem Cholo at bakit krung-krung na ang ano jongoloids keme keme pamin bakit neuro bakit valaj nang bigalou sa warla bella antibiotic lulu kabog paminta ano kasi Mike paminta planggana bakit jutay krang-krang shonget jupang-pang shonga-shonga na ang ng shongaers balaj ganders at intonses kasi ng Gino pamenthol tanders ang ma-kyonget ng guash at makyonget boyband krang-krang at nang na ang ang at bakit na ang quality control at nang bakit ang at nang jupang-pang matod kabog bella sa shokot jongoloids ang jowa sangkatuts krung-krung at ang tamalis ang shongaers.',
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.white),
                            ),
                          ),
                        )),
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
                      gradient: Gradients.coldLinear,
                      shadowColor: Colors.black,
                    ),
                  ),
                ],
              ),
            )));
  }
}
