import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmiResultNumber;
  final String bmiResultText;

  ResultPage(
      {@required this.resultText,
      @required this.bmiResultNumber,
      @required this.bmiResultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATER'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Your Result',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: ReusableCard(
            cardChild: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: Text(
                    resultText,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF43BF7E)),
                  ),
                ),
                Center(
                  child: Text(
                    bmiResultNumber,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 90.0,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      bmiResultText,
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            colour: Color(0xFF1C1C2D),
          ),
        ),
        BottomButton(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          buttonText: 'RE-CALCULATE',
        ),
      ]),
    );
  }
}

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonText;

  BottomButton({@required this.onTap, @required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          color: kBottomContainerColour,
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.only(bottom: 20.0),
          width: double.infinity,
          height: kBottomContainerHeight),
    );
  }
}
