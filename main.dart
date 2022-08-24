import 'package:flutter/material.dart';
import 'package:day006_ui_clone/feed_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        fontFamily: 'Raleway',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'UI Clone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
      backgroundColor: const Color.fromARGB(221, 238, 238, 238),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("UI Clone"),
      ),
      body: Column ( children: [ 
          // section 1. Reels
          Container(
            color: Colors.white,
            height: 250,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      for (int i = 0; i < 100; i++) ...[
                    const SizedBox(width: 15),
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 82, 82, 82)
                        ),
                        height: 200,
                        width: 125,
                      ),
                    ],
                  ]
                ),
              ),
          ),

          // Section 2. Posts
           Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const [
                  FeedItem(
                    title: 'Title 1',
                    description:'Lorem Ipsum 1' ,
                    iconData: Icons.menu,
                  ),
                  FeedItem(
                    title: 'Title 2',
                    description:'Lorem Ipsum 2' ,
                  ),
                  ],
                  )
               ),
          ]),
          );

  }
}
