import 'package:flutter/material.dart';
import 'package:patuvaj_mk/ponudi.dart';
import './baraj.dart';
import './signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Patuvaj MK',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(title: 'Patuvaj MK'),
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
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          actions: [
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIn()));
              }, icon: const Icon(Icons.account_box_rounded))
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: Row(
              //   image: AssetImage('assets/1.png'),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //Center Row `contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //Center Row contents vertically,
                    children: const <Widget>[
                      Text(
                        "Барај",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NewScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    textStyle: const TextStyle(color: Colors.white),
                    minimumSize: const Size(140, 60),
                    maximumSize: const Size(140, 60),
                  ),
                ),
                ElevatedButton(
                  child: const Text(
                    "Понуди",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PonudiScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    textStyle: const TextStyle(color: Colors.white),
                    minimumSize: const Size(140, 60),
                    maximumSize: const Size(140, 60),
                  ),
                ),
              ],
            )),
          ],
        )

        // body: Center(

        //     // Center is a layout widget. It takes a single child and positions it
        //     // in the middle of the parent.
        //     child: Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage('assets/1.png'),
        //       //    fit: BoxFit.fill,
        //     ),
        //   ),
        //   child: Row(
        //     //   image: AssetImage('assets/1.png'),
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: <Widget>[
        //       Container(
        //         child: ElevatedButton(
        //           child: Row(
        //             children: <Widget>[
        //               Text(
        //                 "Барај",
        //                 style: TextStyle(color: Colors.white),
        //               ),
        //               Icon(
        //                 Icons.search,
        //                 color: Colors.white,
        //                 size: 18,
        //               ),
        //             ],
        //           ),
        //           onPressed: () {
        //             Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
        //           },
        //           style: ElevatedButton.styleFrom(
        //             primary: Colors.black,
        //             textStyle: const TextStyle(color: Colors.white),
        //           ),
        //         ),
        //       ),
        //       Container(
        //         child: ElevatedButton(
        //           child: const Text(
        //             "Понуди",
        //             style: TextStyle(color: Colors.white),
        //           ),
        //           onPressed: () {},
        //           style: ElevatedButton.styleFrom(
        //             primary: Colors.orange,
        //             textStyle: const TextStyle(color: Colors.white),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // )),
        );
  }
}
