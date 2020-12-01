import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var brandIndex = 0;
  var totalamount = 0;
 final brand = [
    {
      'Brand': 'Samung ',
      'Url':'https://www.internetmatters.org/wp-content/uploads/2019/04/Samsung-logo-1-1-600x314.png',
      'Category': [
        {
          'name': 'Samsung Galaxy S20',
          'id': '02311',
          'amount': 1400000,
          'description': 'Description',
        },
          {
          'name': 'Samsung Galaxy S20',
          'id': '02311',
          'amount': 1400000,
          'description': 'Description',
        },
          {
          'name': 'Samsung Galaxy S20',
          'id': '02311',
          'amount': 1400000,
          'description': 'Description',
        },
        {
          'name': 'Samsung Note 20 Ultra',
          'id': '02311',
          'amount': 1670000,
          'description': 'Description',
        },
        {
          'name': 'Samsung  Note 20 ',
          'id': '02311',
          'amount': 1400000,
          'description': 'Description',
        },
      ]
    },
     {
      'Brand': 'Iphone ',
        'Url':'https://assets.mspimages.in/wp-content/uploads/2020/04/iPhone-logo-696x464.jpg',
      'Category': [
        {
          'name': 'Iphone 12',
          'id': '02311',
          'amount': 1800000,
          'description': 'Description',
        },
         {
          'name': 'Iphone 12 Pro',
          'id': '02311',
          'amount': 2100000,
          'description': 'Description',
        },
         {
          'name': 'Iphone 12 Pro Max',
          'id': '02311',
          'amount': 2200000,
          'description': 'Description',
        },
      ]
    },
     {
      'Brand': 'Huawei ',
        'Url':'https://tech.thaivisa.com/wp-content/uploads/2015/01/Huawei-Logo.jpg',
      'Category': [
        {
          'name': 'Huawei 1',
          'id': '02311',
          'amount': 800000,
          'description': 'Description',
        },
         {
          'name': 'Huawei 2',
          'id': '02311',
          'amount': 160000,
          'description': 'Description',
        },
         {
          'name': 'Huawei 3',
          'id': '02311',
          'amount': 280000,
          'description': 'Description',
        },
      ]
    },
    
  ];
  void totalSum(int score) {
    totalamount += score;
    setState(() {
      brandIndex = brandIndex + 1;
    });
  }

  void restartQuiz() {
       setState(() {
    brandIndex = 0;
    totalamount = 0;
       });
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //  _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: brandIndex < brand.length
          ? Quiz(
              totalSum: totalSum,
              brand: brand,
              brandIndex: brandIndex,
            )
          : Result(totalamount,restartQuiz),

      // Text(
      //     '$_counter',
      //     style: Theme.of(context).textTheme.headline4,
      //   ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
