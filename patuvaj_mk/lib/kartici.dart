import 'package:flutter/material.dart';
import './item.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CardScreen(),
  ));
}

class CardScreen extends StatefulWidget {
  String? selectedDat;
  String? brPatnici;
  CardScreen({Key? key, this.brPatnici, this.selectedDat}) : super(key: key);
  State createState() => CardScreenState();
}

class Person {
  String? name;
  String? profileImg;
  String? numOfStars;
  String? startDest;
  String? endDest;
  String? startTime;
  String? endTime;
  String? price;
  String? adr1;
  String? adr2;
  String? boja;
  String? kola;

  Person({this.kola, this.boja, this.adr1, this.adr2, this.name, this.profileImg, this.numOfStars, this.startDest, this.endDest, this.startTime, this.endTime, this.price});
}

class CardScreenState extends State<CardScreen> {
  List<Person> persons = [
    Person(kola: 'Toyota\nAuris', boja: 'crna', adr1: 'Prilepska 47,\nBitola, Macedonia', adr2: 'Ruzveltova 3,\nSkopje', name: 'Stefan', profileImg: 'https://webstockreview.net/images/male-clipart-professional-man-3.jpg', numOfStars: "4.5", startDest: 'Bitola', endDest: 'Skopje', startTime: '08:00', endTime: '11:15', price: '400 ден.'),
    Person(kola: 'Hyundai\nCreta', boja: 'bela', adr1: 'Bulevar 1 Maj\nBitola, Bt, Makedonija', adr2: 'Partizanska 13,\nSk,Skopje', name: 'Nikola', profileImg: 'https://webstockreview.net/images/profile-icon-png-4.png', numOfStars: "5.0", startDest: 'Bitola', endDest: 'Skopje', startTime: '10:15', endTime: '12:45', price: '300 ден.'),
    Person(kola: 'Skoda\nRapid', boja: 'crvena', adr1: '13 Juli 1\nBitola, Macedonia', adr2: 'Ilindenska 27,\nKarposh, Skopje', name: 'Иван', profileImg: 'https://webstockreview.net/images/profile-icon-png-4.png', numOfStars: "3.5", startDest: 'Bitola', endDest: 'Skopje', startTime: '13:00', endTime: '15:30', price: '350 ден.'),
    Person(kola: 'Ford\nAspire', boja: 'siva', adr1: 'Prilepska 14\nNova Bitola, Macedonia', adr2: 'Ilindenska 13\nSkopje, Macedonia', name: 'Марија', profileImg: 'https://webstockreview.net/images/female-clipart-female-character-2.jpg', numOfStars: "5.0", startDest: 'Bitola', endDest: 'Skopje', startTime: '16:00', endTime: '19:00', price: '400 ден.'),
  ];

  Widget personDetailCard(Person) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Card(
        color: Colors.grey[50],
        elevation: 8.0,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyAppp(Person.price.toString(), widget.brPatnici, widget.selectedDat, Person.kola.toString(), Person.boja.toString(), Person.adr1.toString(), Person.adr2.toString(), Person.startDest.toString(), Person.endDest.toString(), Person.name.toString(), Person.numOfStars.toString(), Person.profileImg.toString(), Person.startTime.toString(), Person.endTime.toString()),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            height: 200,
            width: 350,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 40, //we give the image a radius of 50
                          backgroundImage: NetworkImage(Person.profileImg),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
//CrossAxisAlignment.end ensures the components are aligned from the right to left.
                          children: [
                            Row(children: [
                              Text(
                                Person.startTime,
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
                                Person.endTime,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // const Text('Chelsea City'),
                              // const Text('Flutteria'),
                            ]),
                            Row(children: [
                              Text(
                                Person.startDest,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                              //SizedBox(height: 100),
                              Container(width: 100, color: Colors.transparent),
                              Text(
                                Person.endDest,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                              // const Text('Chelsea City'),
                              // const Text('Flutteria'),
                            ]),
                            SizedBox(height: 30),
                            Row(children: [
                              Text(
                                Person.price,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              //SizedBox(height: 100),
                            ]),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Person.name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //  const SizedBox(height: 4),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                ),
                                Text(
                                  Person.numOfStars,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            //        const Text(
                            //           '',
                            //          style: TextStyle(
                            //          fontSize: 20,
                            //          fontWeight: FontWeight.bold,
                            //       ),
                            //     ),
                            const SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Tooltip(
                                      message: 'Возам до барана дестинација',
                                      child: Icon(
                                        Icons.location_on,
                                        color: Colors.grey,
                                        size: 30.0,
                                      ),
                                    ), //Tooltip
                                  ), //Padding
                                  // color: Colors.green[50],
                                  // width: 300,
                                  // height: 175,
                                ), //Container
                                SizedBox(width: 5),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Tooltip(
                                      message: 'Дозволени се миленици',
                                      child: Icon(
                                        Icons.pets_rounded,
                                        color: Colors.grey,
                                        size: 30.0,
                                      ),
                                    ), //Tooltip
                                  ), //Padding
                                  // color: Colors.green[50],
                                  // width: 300,
                                  // height: 175,
                                ),
                                SizedBox(width: 5),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Tooltip(
                                      message: 'Клима уред во возилото',
                                      child: Icon(
                                        Icons.ac_unit,
                                        color: Colors.grey,
                                        size: 30.0,
                                      ),
                                    ), //Tooltip
                                  ), //Padding
                                  // color: Colors.green[50],
                                  // width: 300,
                                  // height: 175,
                                ),

                                SizedBox(width: 5),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Tooltip(
                                      message: 'Имам простор за товар',
                                      child: Icon(
                                        Icons.luggage,
                                        color: Colors.grey,
                                        size: 30.0,
                                      ),
                                    ), //Tooltip
                                  ), //Padding
                                  // color: Colors.green[50],
                                  // width: 300,
                                  // height: 175,
                                ),

                                SizedBox(width: 5),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Tooltip(
                                      message: 'Задолжително носење заштитна маска',
                                      child: Icon(
                                        Icons.masks,
                                        color: Colors.grey,
                                        size: 30.0,
                                      ),
                                    ), //Tooltip
                                  ), //Padding
                                  // color: Colors.green[50],
                                  // width: 300,
                                  // height: 175,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
              // ],
            ),
          ),
        ), 
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Резултати')),
      //  backgroundColor: Colors.grey[900],
      body: new ListView(
        // padding: new EdgeInsets.all(32.0),
        // child: new Center(
        //   child: Column(
        children: <Widget>[
          Column(
              children: persons.map((p) {
            return personDetailCard(p);
          }).toList())
        ],
      ),
      //   ),
      // ),
    );
  }
}
