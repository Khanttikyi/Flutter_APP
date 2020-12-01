import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String brand;
  final String url;
  Question(this.brand,this.url);

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children:<Widget> [
         Container(
             decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
           child: Column(
             
                children: [
                  Image.network(
                    url,
                    height: 200,
                  )
                ],
              ),
         ),
        // Container(
          
        //   width:double.infinity,
        //   margin: EdgeInsets.all(10),
        //   child:Text(
        //   brand,
        //   style: TextStyle(fontSize: 28),
        //   textAlign: TextAlign.center,
        // )
        // ),
      ],
    );
  }
}
