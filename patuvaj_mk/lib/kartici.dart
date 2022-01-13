import 'package:flutter/material.dart';
import './item.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CardScreen(),
  ));
}

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);
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

  Person({this.name, this.profileImg, this.numOfStars, this.startDest, this.endDest, this.startTime, this.endTime, this.price});
}

// class Person {
//   final String name;
//   final String profileImg;
//   final String numOfStars;
//   final String startDest;
//   final String endDest;
//   final String startTime;
//   final String endTime;
//   final String price;

//   Person(this.name, this.profileImg, this.numOfStars, this.startDest, this.endDest, this.startTime, this.endTime, this.price);
// }

class CardScreenState extends State<CardScreen> {
  List<Person> persons = [
    Person(name: 'Stefan', profileImg: 'https://webstockreview.net/images/male-clipart-professional-man-3.jpg', numOfStars: "4.5", startDest: 'Bitola', endDest: 'Skopje', startTime: '08:00', endTime: '11:15', price: '400 ден.'),
    Person(name: 'Nikola', profileImg: 'https://webstockreview.net/images/profile-icon-png-4.png', numOfStars: "5.0", startDest: 'Bitola', endDest: 'Skopje', startTime: '10:15', endTime: '12:45', price: '300 ден.'),
    Person(name: 'Иван', profileImg: 'https://webstockreview.net/images/profile-icon-png-4.png', numOfStars: "3.5", startDest: 'Bitola', endDest: 'Skopje', startTime: '13:00', endTime: '15:30', price: '350 ден.'),
    Person(name: 'Марија', profileImg: 'https://webstockreview.net/images/female-clipart-female-character-2.jpg', numOfStars: "5.0", startDest: 'Bitola', endDest: 'Skopje', startTime: '16:00', endTime: '19:00', price: '400 ден.'),
  ];
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: AppBar(title: Text('Резултати')),
//       body: new ListView(
//         //     padding: new EdgeInsets.all(32.0),
//         //     child: new Center(
//         //      child: new Column(
//         children: <Widget>[
//           new Card(
//             //     color: Colors.grey[300],
//             elevation: 8.0,
//             child: TextButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => ItemScreen()));
//               },
//               child: Container(
//                 padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//                 height: 200,
//                 width: 350,
//                 child: Column(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const CircleAvatar(
//                               radius: 40, //we give the image a radius of 50
//                               backgroundImage: NetworkImage('https://webstockreview.net/images/male-clipart-professional-man-3.jpg'),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
// //CrossAxisAlignment.end ensures the components are aligned from the right to left.
//                               children: [
//                                 Row(children: [
//                                   Text(
//                                     '08:00',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Container(
//                                     margin: const EdgeInsets.only(top: 8),
//                                     width: 100,
//                                     color: Colors.black54,
//                                     height: 1,
//                                   ),
//                                   // const SizedBox(height: 4),
//                                   const Text(
//                                     '11:15',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   // const Text('Chelsea City'),
//                                   // const Text('Flutteria'),
//                                 ]),
//                                 Row(children: [
//                                   const Text(
//                                     'Bitola',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       color: Colors.black54,
//                                     ),
//                                   ),
//                                   //SizedBox(height: 100),
//                                   Container(width: 100, color: Colors.transparent),
//                                   const Text(
//                                     'Skopje',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       color: Colors.black54,
//                                     ),
//                                   ),
//                                   // const Text('Chelsea City'),
//                                   // const Text('Flutteria'),
//                                 ]),
//                                 SizedBox(height: 30),
//                                 Row(children: [
//                                   const Text(
//                                     '400 ден.',
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   //SizedBox(height: 100),
//                                 ]),
//                               ],
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 15),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   'Stefan',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 //  const SizedBox(height: 4),
//                                 Row(
//                                   children: <Widget>[
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.grey,
//                                     ),
//                                     Text(
//                                       '4.5',
//                                       style: TextStyle(color: Colors.grey),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(width: 32),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 //        const Text(
//                                 //           '',
//                                 //          style: TextStyle(
//                                 //          fontSize: 20,
//                                 //          fontWeight: FontWeight.bold,
//                                 //       ),
//                                 //     ),
//                                 const SizedBox(height: 10),
//                                 Row(
//                                   children: <Widget>[
//                                     Container(
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(0.0),
//                                         child: Tooltip(
//                                           message: 'Возам до барана дестинација',
//                                           child: Icon(
//                                             Icons.location_on,
//                                             color: Colors.grey,
//                                             size: 30.0,
//                                           ),
//                                         ), //Tooltip
//                                       ), //Padding
//                                       // color: Colors.green[50],
//                                       // width: 300,
//                                       // height: 175,
//                                     ), //Container
//                                     SizedBox(width: 5),
//                                     Container(
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(0.0),
//                                         child: Tooltip(
//                                           message: 'Дозволени се миленици',
//                                           child: Icon(
//                                             Icons.pets_rounded,
//                                             color: Colors.grey,
//                                             size: 30.0,
//                                           ),
//                                         ), //Tooltip
//                                       ), //Padding
//                                       // color: Colors.green[50],
//                                       // width: 300,
//                                       // height: 175,
//                                     ),
//                                     SizedBox(width: 5),
//                                     Container(
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(0.0),
//                                         child: Tooltip(
//                                           message: 'Клима уред во возилото',
//                                           child: Icon(
//                                             Icons.ac_unit,
//                                             color: Colors.grey,
//                                             size: 30.0,
//                                           ),
//                                         ), //Tooltip
//                                       ), //Padding
//                                       // color: Colors.green[50],
//                                       // width: 300,
//                                       // height: 175,
//                                     ),

//                                     SizedBox(width: 5),
//                                     Container(
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(0.0),
//                                         child: Tooltip(
//                                           message: 'Имам простор за товар',
//                                           child: Icon(
//                                             Icons.luggage,
//                                             color: Colors.grey,
//                                             size: 30.0,
//                                           ),
//                                         ), //Tooltip
//                                       ), //Padding
//                                       // color: Colors.green[50],
//                                       // width: 300,
//                                       // height: 175,
//                                     ),

//                                     SizedBox(width: 5),
//                                     Container(
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(0.0),
//                                         child: Tooltip(
//                                           message: 'Задолжително носење заштитна маска',
//                                           child: Icon(
//                                             Icons.masks,
//                                             color: Colors.grey,
//                                             size: 30.0,
//                                           ),
//                                         ), //Tooltip
//                                       ), //Padding
//                                       // color: Colors.green[50],
//                                       // width: 300,
//                                       // height: 175,
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                   // ],
//                 ),
//               ),
//             ), //mileeee
//           ),
//           new Card(
//             //     color: Colors.grey[300],
//             elevation: 8.0,
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//               height: 200,
//               width: 350,
//               child: Column(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const CircleAvatar(
//                             radius: 40, //we give the image a radius of 50
//                             backgroundImage: NetworkImage('https://webstockreview.net/images/profile-icon-png-4.png'),
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
// //CrossAxisAlignment.end ensures the components are aligned from the right to left.
//                             children: [
//                               Row(children: [
//                                 const Text(
//                                   '10:15',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 Container(
//                                   margin: const EdgeInsets.only(top: 8),
//                                   width: 100,
//                                   color: Colors.black54,
//                                   height: 1,
//                                 ),
//                                 // const SizedBox(height: 4),
//                                 const Text(
//                                   '12:45',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 // const Text('Chelsea City'),
//                                 // const Text('Flutteria'),
//                               ]),
//                               Row(children: [
//                                 const Text(
//                                   'Bitola',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.black54,
//                                   ),
//                                 ),
//                                 //SizedBox(height: 100),
//                                 Container(width: 100, color: Colors.transparent),
//                                 const Text(
//                                   'Skopje',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.black54,
//                                   ),
//                                 ),
//                                 // const Text('Chelsea City'),
//                                 // const Text('Flutteria'),
//                               ]),
//                               SizedBox(height: 30),
//                               Row(children: [
//                                 const Text(
//                                   '300 ден.',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 //SizedBox(height: 100),
//                               ]),
//                             ],
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 15),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 'Nikola',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               //  const SizedBox(height: 4),
//                               Row(
//                                 children: <Widget>[
//                                   Icon(
//                                     Icons.star,
//                                     color: Colors.grey,
//                                   ),
//                                   Text(
//                                     '5.0',
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           const SizedBox(width: 32),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               //        const Text(
//                               //           '',
//                               //          style: TextStyle(
//                               //          fontSize: 20,
//                               //          fontWeight: FontWeight.bold,
//                               //       ),
//                               //     ),
//                               const SizedBox(height: 10),
//                               Row(
//                                 children: <Widget>[
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Не возам до барана дестинација',
//                                         child: Icon(
//                                           Icons.location_off,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ), //Container
//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Дозволени се миленици',
//                                         child: Icon(
//                                           Icons.pets_rounded,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),
//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Клима уред во возилото',
//                                         child: Icon(
//                                           Icons.ac_unit,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),

//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Немам простор за товар',
//                                         child: Icon(
//                                           Icons.no_luggage_rounded,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),

//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Задолжително носење заштитна маска',
//                                         child: Icon(
//                                           Icons.masks,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//                 // ],
//               ),
//             ),
//           ),
//           new Card(
//             //     color: Colors.grey[300],
//             elevation: 8.0,
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//               height: 200,
//               width: 350,
//               child: Column(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const CircleAvatar(
//                             radius: 40, //we give the image a radius of 50
//                             backgroundImage: NetworkImage('https://webstockreview.net/images/profile-icon-png-4.png'),
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
// //CrossAxisAlignment.end ensures the components are aligned from the right to left.
//                             children: [
//                               Row(children: [
//                                 const Text(
//                                   '13:00',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 Container(
//                                   margin: const EdgeInsets.only(top: 8),
//                                   width: 100,
//                                   color: Colors.black54,
//                                   height: 1,
//                                 ),
//                                 // const SizedBox(height: 4),
//                                 const Text(
//                                   '15:30',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 // const Text('Chelsea City'),
//                                 // const Text('Flutteria'),
//                               ]),
//                               Row(children: [
//                                 const Text(
//                                   'Bitola',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.black54,
//                                   ),
//                                 ),
//                                 //SizedBox(height: 100),
//                                 Container(width: 100, color: Colors.transparent),
//                                 const Text(
//                                   'Skopje',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.black54,
//                                   ),
//                                 ),
//                                 // const Text('Chelsea City'),
//                                 // const Text('Flutteria'),
//                               ]),
//                               SizedBox(height: 30),
//                               Row(children: [
//                                 const Text(
//                                   '350 ден.',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 //SizedBox(height: 100),
//                               ]),
//                             ],
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 15),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 'Иван',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               //  const SizedBox(height: 4),
//                               Row(
//                                 children: <Widget>[
//                                   Icon(
//                                     Icons.star,
//                                     color: Colors.grey,
//                                   ),
//                                   Text(
//                                     '3.5',
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           const SizedBox(width: 32),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               //        const Text(
//                               //           '',
//                               //          style: TextStyle(
//                               //          fontSize: 20,
//                               //          fontWeight: FontWeight.bold,
//                               //       ),
//                               //     ),
//                               const SizedBox(height: 10),
//                               Row(
//                                 children: <Widget>[
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Не возам до барана дестинација',
//                                         child: Icon(
//                                           Icons.location_off,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ), //Container
//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Дозволени се миленици',
//                                         child: Icon(
//                                           Icons.pets_rounded,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),
//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Клима уред во возилото',
//                                         child: Icon(
//                                           Icons.ac_unit,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),

//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Имам простор за товар',
//                                         child: Icon(
//                                           Icons.luggage,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),

//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Задолжително носење заштитна маска',
//                                         child: Icon(
//                                           Icons.masks,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//                 // ],
//               ),
//             ),
//           ),
//           new Card(
//             //     color: Colors.grey[300],
//             elevation: 8.0,
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//               height: 200,
//               width: 350,
//               child: Column(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const CircleAvatar(
//                             radius: 40, //we give the image a radius of 50
//                             backgroundImage: NetworkImage('https://webstockreview.net/images/female-clipart-female-character-2.jpg'),
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
// //CrossAxisAlignment.end ensures the components are aligned from the right to left.
//                             children: [
//                               Row(children: [
//                                 const Text(
//                                   '16:00',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 Container(
//                                   margin: const EdgeInsets.only(top: 8),
//                                   width: 100,
//                                   color: Colors.black54,
//                                   height: 1,
//                                 ),
//                                 // const SizedBox(height: 4),
//                                 const Text(
//                                   '19:00',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 // const Text('Chelsea City'),
//                                 // const Text('Flutteria'),
//                               ]),
//                               Row(children: [
//                                 const Text(
//                                   'Bitola',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.black54,
//                                   ),
//                                 ),
//                                 //SizedBox(height: 100),
//                                 Container(width: 100, color: Colors.transparent),
//                                 const Text(
//                                   'Skopje',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.black54,
//                                   ),
//                                 ),
//                                 // const Text('Chelsea City'),
//                                 // const Text('Flutteria'),
//                               ]),
//                               SizedBox(height: 30),
//                               Row(children: [
//                                 const Text(
//                                   '400 ден.',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 //SizedBox(height: 100),
//                               ]),
//                             ],
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 15),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 'Марија',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               //  const SizedBox(height: 4),
//                               Row(
//                                 children: <Widget>[
//                                   Icon(
//                                     Icons.star,
//                                     color: Colors.grey,
//                                   ),
//                                   Text(
//                                     '5.0',
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           const SizedBox(width: 32),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               //        const Text(
//                               //           '',
//                               //          style: TextStyle(
//                               //          fontSize: 20,
//                               //          fontWeight: FontWeight.bold,
//                               //       ),
//                               //     ),
//                               const SizedBox(height: 10),
//                               Row(
//                                 children: <Widget>[
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Возам до барана дестинација',
//                                         child: Icon(
//                                           Icons.location_on,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ), //Container
//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Дозволени се миленици',
//                                         child: Icon(
//                                           Icons.pets_rounded,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),
//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Клима уред во возилото',
//                                         child: Icon(
//                                           Icons.ac_unit,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),

//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Имам простор за товар',
//                                         child: Icon(
//                                           Icons.luggage,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),

//                                   SizedBox(width: 5),
//                                   Container(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0.0),
//                                       child: Tooltip(
//                                         message: 'Задолжително носење заштитна маска',
//                                         child: Icon(
//                                           Icons.masks,
//                                           color: Colors.grey,
//                                           size: 30.0,
//                                         ),
//                                       ), //Tooltip
//                                     ), //Padding
//                                     // color: Colors.green[50],
//                                     // width: 300,
//                                     // height: 175,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//                 // ],
//               ),
//             ),
//           ),
//         ],
//         //   ),
//         //   ),
//       ),
//     );
//   }
//}

//ovde

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
                builder: (context) => MyAppp(Person.startDest.toString(), Person.endDest.toString(), Person.name.toString(), Person.numOfStars.toString(), Person.profileImg.toString(), Person.startTime.toString(), Person.endTime.toString()),
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
        ), //mileeee
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
