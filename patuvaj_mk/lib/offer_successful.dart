import 'package:flutter/material.dart';
import 'main.dart';
import 'ponudi.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OfferSuccessfulScreen(),
  ));
}

class OfferSuccessfulScreen extends StatefulWidget {
  const OfferSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State createState() => OfferSuccessfulScreenState();
}

class OfferSuccessfulScreenState extends State<OfferSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Преглед'),
        // leading: getBackButton(),
      ),
      body: SafeArea(
        child: ListView(
          padding: new EdgeInsets.all(8.0),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
              crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Image.asset(
                  'assets/succ.jpg',
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Објавувањето превоз е успешно!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Доколку сте задоволни со резервацијата можете да се вратите и да направите промени. Во спротивно, можете да се вратите на почетната страница.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 55.0,
              child: FlatButton(
                color: Colors.orange,
                textColor: Colors.white,
                //   padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PonudiScreen()));
                },
                child: Text(
                  'Направи измени',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 55.0,
              child: FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                //   padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Text(
                  'Врати се на почетната страна',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 50.0,
            ),

            SizedBox(
              height: 15.0,
            ),

            // CarBlock(widget.car),
            // PickupInfoWidget(widget.car),
            // MapWidget(widget.car),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
