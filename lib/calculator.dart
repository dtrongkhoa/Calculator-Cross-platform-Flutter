import 'package:flutter/material.dart';

import 'package:helloword/calcultor_button.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double aheight = MediaQuery.of(context).size.height;
    return 
    // ListView(
    //     scrollDirection: Axis.vertical,
    //     padding: EdgeInsets.all(1.0),
    //     children: [
          Container(
            height: aheight,
            margin: EdgeInsets.fromLTRB(0.3 * width, 0, 0.3 * width, 0),
            color: Colors.black,
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('0',
                        style: TextStyle(
                          fontSize: 0.07 * width,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton('AC', Colors.black, Colors.grey, Colors.white),
                  CalculatorButton('+/-', Colors.black, Colors.grey, Colors.white),
                  CalculatorButton('%', Colors.black, Colors.grey, Colors.white),
                  CalculatorButton('/', Colors.white, Colors.amber[700], Colors.orange[900]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton('7', Colors.white, Colors.grey[800], Colors.grey),
                  CalculatorButton('8', Colors.white, Colors.grey[800], Colors.grey),
                  CalculatorButton('9', Colors.white, Colors.grey[800], Colors.grey),
                  CalculatorButton('X', Colors.white, Colors.amber[700], Colors.orange[900]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton('4', Colors.white, Colors.grey[800], Colors.grey),
                  CalculatorButton('5', Colors.white, Colors.grey[800], Colors.grey),
                  CalculatorButton('6', Colors.white, Colors.grey[800], Colors.grey),
                  CalculatorButton('-', Colors.white, Colors.amber[700], Colors.orange[900]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton('1', Colors.white, Colors.grey[800], Colors.grey),
                  CalculatorButton('2', Colors.white, Colors.grey[800], Colors.grey),
                  CalculatorButton('3', Colors.white, Colors.grey[800], Colors.grey),
                  CalculatorButton('+', Colors.white, Colors.amber[700], Colors.orange[900]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    hoverColor: Colors.grey,
                      onPressed: () {},
                      shape: StadiumBorder(),
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 0.02 * width, color: Colors.white),
                      ),
                      color: Colors.grey[800],
                      padding: EdgeInsets.fromLTRB(0.027 * width, 0.02 * width,
                          0.165 * width, 0.02 * width)),
                  // SizedBox(width: 10.0),
                  CalculatorButton('.', Colors.white, Colors.grey[800], Colors.grey),
                  CalculatorButton('=', Colors.white, Colors.amber[700], Colors.orange[900]),
                ],
              ),
            ]),
          );
        // ]);
  }
}
