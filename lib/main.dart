import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: Column(
        children: [
          // NAVIGATION BAR
          Container(
            alignment: Alignment.center,
            height: 35,
            child: Text('BERITA TERBARU         PERTANDINGAN HARI INI',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                )),
          ),

          // BERITA UTAMA
          Container(
            color: Colors.blueAccent,
            child: Image(image: AssetImage("assets/denis.jpg")),
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            // width: double.infinity,
            child: Text('Denis Suarez Fears Neymar Exit',
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 25,
            color: Colors.blueAccent,
            width: double.infinity,
            child: Text('La Liga',
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.left),
          ),

          // BERITA PENDUKUNG 1
          Row(crossAxisAlignment: CrossAxisAlignment.start, // for left side
              // crossAxisAlignment: CrossAxisAlignment.end, // for right side
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                      // Red border with the width is equal to 5
                      border: Border(
                          top: BorderSide(width: 2, color: Colors.black),
                          left: BorderSide(width: 2, color: Colors.black))),
                  height: 100,
                  child: Image(image: AssetImage("assets/kieran.jpg")),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0),
                    alignment: Alignment.centerLeft,
                    height: 100,
                    decoration: BoxDecoration(
                        // Red border with the width is equal to 5
                        border: Border(
                            top: BorderSide(width: 2, color: Colors.black),
                            right: BorderSide(width: 2, color: Colors.black))),
                    padding: EdgeInsets.all(10.0),
                    child: Text('Kieran Tierney on Potential Celtic Return'),
                  ),
                ),
              ]),

          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                // Red border with the width is equal to 5
                border: Border.all(width: 2, color: Colors.black)),
            child: Text(' Arsenal Stadium, Okt 1 2022',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                )),
          ),

          // BERITA PENDUKUNG 2
          Row(crossAxisAlignment: CrossAxisAlignment.start, // for left side
              // crossAxisAlignment: CrossAxisAlignment.end, // for right side
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                      // Red border with the width is equal to 5
                      border: Border(
                          top: BorderSide(width: 2, color: Colors.black),
                          left: BorderSide(width: 2, color: Colors.black))),
                  height: 100,
                  child: Image(image: AssetImage("assets/neymar.jpg")),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0),
                    alignment: Alignment.centerLeft,
                    height: 100,
                    decoration: BoxDecoration(
                        // Red border with the width is equal to 5
                        border: Border(
                            top: BorderSide(width: 2, color: Colors.black),
                            right: BorderSide(width: 2, color: Colors.black))),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        'How many goals has Neymar scored during his career?'),
                  ),
                ),
              ]),

          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                // Red border with the width is equal to 5
                border: Border.all(width: 2, color: Colors.black)),
            child: Text(' Parc des Princes, Okt 1 2022',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                )),
          ),
        ],
      ),
    );
  }
}
