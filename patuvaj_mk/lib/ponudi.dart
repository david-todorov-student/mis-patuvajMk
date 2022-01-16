import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:patuvaj_mk/ponudi2.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PonudiScreen(),
  ));
}

class PonudiScreen extends StatefulWidget {
  const PonudiScreen({Key? key}) : super(key: key);

  @override
  State createState() => PonudiScreenState();
}

class PonudiScreenState extends State<PonudiScreen> {
  String? typeOfTransport;

  DateTime selectedStartDate = DateTime.now();
  TimeOfDay selectedStartTime = TimeOfDay.now();

  DateTime? selectedBackDate = DateTime.now();
  TimeOfDay? selectedBackTime = TimeOfDay.now();

  Future<void> _selectStartDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedStartDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedStartDate) {
      setState(() {
        selectedStartDate = picked;
      });
    }
  }

  Future<void> _selectStartTime(BuildContext context) async {
    TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: selectedStartTime);
    if (picked != null && picked != selectedStartTime) {
      setState(() {
        selectedStartTime = picked;
      });
    }
  }

  Future<void> _selectBackDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedBackDate) {
      setState(() {
        selectedBackDate = picked;
      });
    }
  }

  Future<void> _selectBackTime(BuildContext context) async {
    TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (picked != null && picked != selectedBackTime) {
      setState(() {
        selectedBackTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Понуди')),
      resizeToAvoidBottomInset: false, // set it to false
      body: SingleChildScrollView(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/bb.jpg"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          child: Container(
            alignment: Alignment.center,
            // padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(children: [
                  Radio(
                    value: "oneWay",
                    groupValue: typeOfTransport,
                    onChanged: (String? value) {
                      setState(() {
                        typeOfTransport = value;
                      });
                    },
                  ),
                  const Text("Во еден правец"),
                ]),
                Row(children: [
                  Radio(
                    value: "twoWay",
                    groupValue: typeOfTransport,
                    onChanged: (String? value) {
                      setState(() {
                        typeOfTransport = value;
                      });
                    },
                  ),
                  const Text("Повратно"),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.location_on, color: Colors.grey),
                      labelText: "Почетна дестинација...",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.location_on, color: Colors.grey),
                      labelText: "Крајна дестинација...",
                    ),
                  ),
                ),
                const Text("Датум и време на поаѓање"),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              child: Row(children: [
                                const Icon(
                                  Icons.date_range,
                                  color: Colors.grey,
                                ),
                                Text(
                                  DateFormat.yMMMd().format(selectedStartDate),
                                ),
                              ]),
                              onPressed: () {
                                _selectStartDate(context);
                              },
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              child: Row(children: [
                                const Icon(
                                  Icons.access_time_rounded,
                                  color: Colors.grey,
                                ),
                                Text(selectedStartTime.format(context)),
                              ]),
                              onPressed: () {
                                _selectStartTime(context);
                              },
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Text("Датум и време на враќање"),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              child: Row(children: [
                                const Icon(
                                  Icons.date_range,
                                  color: Colors.grey,
                                ),
                                Text(
                                  DateFormat.yMMMd().format(selectedBackDate!),
                                ),
                              ]),
                              onPressed: () {
                                _selectBackDate(context);
                              },
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              child: Row(children: [
                                const Icon(
                                  Icons.access_time_rounded,
                                  color: Colors.grey,
                                ),
                                Text(selectedBackTime!.format(context)),
                              ]),
                              onPressed: () {
                                _selectBackTime(context);
                              },
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Патници',
                      contentPadding: EdgeInsets.all(8),
                      isDense: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Цена',
                      contentPadding: EdgeInsets.all(8),
                      isDense: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Ponudi2Screen()));
                    },
                    child: const Text("Следно")
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
