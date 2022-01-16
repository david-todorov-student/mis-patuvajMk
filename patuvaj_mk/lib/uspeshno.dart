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
import './main.dart';

class Succ extends StatelessWidget {
  final String name;
  final String stars;
  final String image;
  final String startTime;
  final String endTime;

  Succ(this.name, this.stars, this.image, this.startTime, this.endTime);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Преглед'),
        // leading: getBackButton(),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
              crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                Image.asset(
                  'assets/succ.jpg',
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
                const Text(
                  'Успешно е направена резервација!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Ви посакуваме пријатно патување.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            const SizedBox(
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: const Text(
                  'Врати се на почетната страна',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 50.0,
            ),
            const Text(
              'Краток преглед на резервацијата:',
            ),
            const SizedBox(
              height: 15.0,
            ),
            Card(
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                      crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
                      children: const [
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
                            style: const TextStyle(
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
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,

                        children: [
                          const Text(
                            "08:00",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                          //SizedBox(height: 100),
                          Container(width: 100, color: Colors.transparent),
                          const Text(
                            "08:00",
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
                          const Text(
                            "08:00",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                          //SizedBox(height: 100),
                          Container(width: 100, color: Colors.transparent),
                          const Text(
                            "08:00",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ]),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 250,
                      color: Colors.black54,
                      height: 1,
                    ),
                    const SizedBox(height: 20),
                    Row(children: const [
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
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 250,
                      color: Colors.black54,
                      height: 1,
                    ),
                    const SizedBox(height: 20),
                    Row(
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
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              name,
                              style: const TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                ),
                                Text(
                                  stars,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(
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
                              style: const TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            const Text(
                              "test",
                              style: TextStyle(color: Colors.black, fontSize: 12),
                            )
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Icon(Icons.directions_car),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // CarBlock(widget.car),
            // PickupInfoWidget(widget.car),
            // MapWidget(widget.car),

            const SizedBox(
              height: 5,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: Colors.tealAccent[700],
                textColor: Colors.white,
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return VoucherScreen(
                  //     reservationNumber: widget.car.reservationNumber,
                  //     email: widget.car.customerEmail,
                  //   );
                  // }));
                },
                child: const Text(
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
