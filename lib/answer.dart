import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String name;
  final int price;
  final String description;
  Answer(this.selectHandler, this.name, this.price, this.description);
  @override
  Widget build(BuildContext context) {
    // return Container(
    //     width: double.infinity,
    //     margin: EdgeInsets.all(10),
    //     // child: RaisedButton(
    //     //     child: Text(answerText), color: Colors.green,textColor: Colors.white, onPressed: selectHandler),
    //     child: Card(
    //       child: Row(
    //         children: <Widget>[
    //           RaisedButton(
    //               child: Text('BUY'),
    //               color: Colors.green,
    //               textColor: Colors.white,
    //               onPressed: selectHandler),
    //         ],
    //       ),
    //     ));
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              // padding: EdgeInsets.all(15),
              child: Card(
                  child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: RaisedButton(
                        child: Text('Add to Cart'),
                        color: Colors.green,
                        textColor: Colors.white,
                        onPressed: selectHandler),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 13),
                      ),
                    ],
                  )
                ],
              )),
            ),
          ]),
        ],
      ),
    );
  }
}
