// import 'package:flutter/material.dart';

// class App extends StatelessWidget {
//   final String startText;
//   final String stopText;
//   App(this.startText, this.stopText);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(startText)),
//       body: Container(decoration: BoxDecoration(color: Colors.black)),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import './uspeshno.dart';

class MyAppp extends StatelessWidget {
  final String name;
  final String stars;
  final String image;
  final String startTime;
  final String endTime;
  final String startDest;
  final String endDest;

  MyAppp(this.startDest, this.endDest, this.name, this.stars, this.image, this.startTime, this.endTime);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Преглед'),
        // leading: getBackButton(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          padding: EdgeInsets.only(top: 23.0, bottom: 23.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Succ(name.toString(), stars.toString(), image.toString(), startTime.toString(), endTime.toString()),
              ),
            );
          },
          color: Colors.black,
          textColor: Colors.white,
          child: Text(
            'Резервирај',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: new EdgeInsets.all(8.0),
          children: [
            Card(
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
                        children: [
                          Text(
                            '10 Okt, 2021',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                          crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,

                          children: [
                            Text(
                              startTime,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              width: 100,
                              color: Colors.black54,
                              height: 1,
                            ),
                            // const SizedBox(height: 4),
                            Text(
                              endTime,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                          crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,

                          children: [
                            Text(
                              startDest,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            //SizedBox(height: 100),
                            Container(width: 100, color: Colors.transparent),
                            Text(
                              endDest,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                          crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,

                          children: [
                            Text(
                              "08:00",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            //SizedBox(height: 100),
                            Container(width: 100, color: Colors.transparent),
                            Text(
                              "08:00",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ]),
                      SizedBox(height: 30),
                      Row(children: [
                        Text(
                          "Вкупна цена за x патници",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "300 ден.",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //SizedBox(height: 100),
                      ]),
                    ],
                  ),
                ),
              ),
            ),
            // CarBlock(widget.car),
            // PickupInfoWidget(widget.car),
            // MapWidget(widget.car),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(width: 50.0, height: 50.0, decoration: new BoxDecoration(shape: BoxShape.circle, image: new DecorationImage(fit: BoxFit.cover, image: AssetImage("")))),
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40, //we give the image a radius of 50
                        backgroundImage: NetworkImage(image),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Text(
                            stars,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 33,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      indent: 5,
                      endIndent: 0,
                      width: 20,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "test".toUpperCase(),
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Text(
                        "test",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.directions_car),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Преглед на локациите',
                    //     style: kButtonTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: Colors.tealAccent[700],
                textColor: Colors.white,
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return VoucherScreen(
                  //     reservationNumber: widget.car.reservationNumber,
                  //     email: widget.car.customerEmail,
                  //   );
                  // }));
                },
                child: Text(
                  'Исконтактирај го превозникот',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
