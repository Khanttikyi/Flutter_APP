import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalAmount;
  final Function restartHandler;
  Result(this.totalAmount, this.restartHandler);
  String get resultPhase {
    var resultText = 'Total Amount is \$'+totalAmount.toString();
   
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // return Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //       Text(resultPhase,
    //           style: TextStyle(
    //               fontSize: 38,
    //               color: Colors.black,
    //               fontWeight: FontWeight.bold),
    //           textAlign: TextAlign.center)
    //     ]);
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(resultPhase,
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        FlatButton(
          onPressed: restartHandler,
          child: Text(
            'Test Again !',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
        )
      ],
    ));
  }
}
