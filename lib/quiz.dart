import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> brand;
  final Function totalSum;
  final int brandIndex;
  Quiz(
      {@required this.totalSum,
      @required this.brand,
      @required this.brandIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
      child: ListView(
        shrinkWrap: true,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
       
          Question(brand[brandIndex]['Brand'],brand[brandIndex]['Url']),
          ...(brand[brandIndex]['Category'] as List<Map<String,Object>>)
              .map((category) {
            return Answer(()=>totalSum(category['amount']), category['name'], category['amount'],category['description']);
          }).toList(),
        ],
      ),
    );
  }
}
