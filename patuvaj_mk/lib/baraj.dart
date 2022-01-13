import 'package:flutter/material.dart';
import './kartici.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'dart:async';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NewScreen(),
  ));
}

class Person {
  String? name;
  String? profileImg;
  String? bio;

  Person({this.name, this.profileImg, this.bio});
}

class Item {
  const Item(this.name);
  final String name;
}

class NewScreen extends StatefulWidget {
  State createState() => NewScreenState();
}

class NewScreenState extends State<NewScreen> {
  List<Person> persons = [
    Person(name: 'Bill Will', profileImg: 'img/pic-1.png', bio: "Software Developer"),
    Person(name: 'Andy Smith', profileImg: 'img/pic-2.png', bio: "UI Designer"),
    Person(name: 'Creepy Story', profileImg: 'img/pic-3.png', bio: "Software Tester")
  ];

  Item? selectedUser;

  List<Item> users = <Item>[
    const Item('1'),
    const Item('2'),
    const Item('3'),
    const Item('4'),
  ];
  String? _selectedColor;

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Барај')),
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/bb.jpg"),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child:
            // Row(
            //   children: <Widget>[
            new Form(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                //   Expanded(
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //       icon: Icon(Icons.location_on, color: Colors.grey),
                //       labelText: "Почетна...",
                //     ),
                //   ),),
                // ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.location_on, color: Colors.grey),
                      labelText: "Почетна дестинација...",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.location_on, color: Colors.grey),
                      labelText: "Крајна дестинација...",
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 64.0, 15.0),
                        // child: TextField(
                        //   decoration: InputDecoration(
                        //     icon: Icon(Icons.date_range, color: Colors.grey),
                        //     labelText: "Датум",
                        //   ),
                        // ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.date_range,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              DateFormat.yMMMd().format(this.selectedDate),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // TextButton(
                    //   child: Icon(Icons.add_circle_outline),
                    //   onPressed: () {
                    //     showDialog<Widget>(
                    //         context: context,
                    //         builder: (BuildContext context) {
                    //           return SfDateRangePicker(
                    //             showActionButtons: true,
                    //             onSubmit: (Object? value) {
                    //               Navigator.pop(context);
                    //             },
                    //             onCancel: () {
                    //               Navigator.pop(context);
                    //             },
                    //           );
                    //         });
                    //   },
                    // ),

                    // SfDateRangePicker(),
                    SizedBox.fromSize(
                      size: Size(26, 26), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Colors.white, // button color
                          child: InkWell(
                            splashColor: Colors.lightGreen, // splash color
                            onTap: () => _selectDate(context), // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.add_circle_outline), // icon
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 25.0),
                  // margin: const EdgeInsets.only(top: 8),
                  //    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
                  width: 230,
                  color: Colors.black54,
                  height: 0.7,
                ),
                //ovde

                // Container(
                //   padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                //   child: Row(
                //     children: <Widget>[
                //       Icon(
                //         Icons.people_alt,
                //         color: Colors.grey,
                //       ),
                //       SizedBox(
                //         width: 15,
                //       ),
                //       Text(selectedDate.toString()),
                //     ],
                //   ),
                // ),
//tuka
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //       icon: Icon(Icons.phone, color: Colors.grey),
                //       labelText: "Телефон",
                //     ),
                //   ),
                // ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 64.0, 5.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.people_alt,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      DropdownButton<Item>(
                        underline: Container(
                          height: 2,
                        ),
                        hint: Text("Патници"),
                        value: selectedUser,
                        onChanged: (Item? Value) {
                          setState(() {
                            selectedUser = Value;
                          });
                        },
                        items: users.map((Item user) {
                          return DropdownMenuItem<Item>(
                            value: user,
                            child: Container(
                              width: 200, // Container child widget will get this width value
                              //height: myHeghtValue, // C
                              alignment: Alignment.centerLeft,
                              child: Text(
                                user.name,
                                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                              ),
                            ),
                            // child: Row(
                            //   children: <Widget>[
                            //     SizedBox(
                            //       width: 200,
                            //     ),
                            //     Text(
                            //       user.name,
                            //       style: TextStyle(color: Colors.black),
                            //       textAlign: TextAlign.left,
                            //     ),
                            //   ],
                            // ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),

//овдеее
                Container(
                  margin: const EdgeInsets.only(right: 25.0),
                  // margin: const EdgeInsets.only(top: 8),
                  //    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
                  width: 230,
                  color: Colors.black54,
                  height: 0.5,
                ),
                SizedBox(
                  height: 35,
                ),
                new SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: ElevatedButton(
                    child: const Text(
                      "Барај",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      textStyle: const TextStyle(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/1.png",
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        //   ],

        //ovde
        //   ),
      ),
    );
  }
}

// class MyHome extends StatefulWidget {
//   @override
//   _MyHomeState createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   List<Person> persons = [
//     Person(name: 'Bill Will', profileImg: 'img/pic-1.png', bio: "Software Developer"),
//     Person(name: 'Andy Smith', profileImg: 'img/pic-2.png', bio: "UI Designer"),
//     Person(name: 'Creepy Story', profileImg: 'img/pic-3.png', bio: "Software Tester")
//   ];

//   Widget personDetailCard(Person) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Card(
//         color: Colors.grey[800],
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(width: 50.0, height: 50.0, decoration: new BoxDecoration(shape: BoxShape.circle, image: new DecorationImage(fit: BoxFit.cover, image: AssetImage(Person.profileImg)))),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     Person.name,
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                   Text(
//                     Person.bio,
//                     style: TextStyle(color: Colors.white, fontSize: 12),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
//         child: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Icon(Icons.menu, size: 35, color: Colors.white),
//                 Text(
//                   'Notifications',
//                   style: TextStyle(color: Colors.white, fontSize: 25),
//                 ),
//                 Icon(Icons.notifications_none, size: 35, color: Colors.white)
//               ],
//             ),
//             Column(
//                 children: persons.map((p) {
//               return personDetailCard(p);
//             }).toList())
//           ],
//         ),
//       ),
//     );
//   }
// }
