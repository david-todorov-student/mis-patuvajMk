import 'package:flutter/material.dart';
import 'offer_successful.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Ponudi2Screen(),
  ));
}

class Ponudi2Screen extends StatefulWidget {
  const Ponudi2Screen({Key? key}) : super(key: key);

  @override
  State createState() => Ponudi2ScreenState();
}

class Ponudi2ScreenState extends State<Ponudi2Screen> {
  bool? fixedAddresses;
  bool? petsAllowed;
  bool? airConditioning;
  bool? luggageSpace;

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
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Form(
                    child: Container(
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.all(16.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                          Row(children: [
                            const Text("Дали се фиксни адресите на поаѓање и пристигнување?")
                          ]),
                          Row(children: [
                            const Text("Да"),
                            Radio(
                              value: true,
                              groupValue: fixedAddresses,
                              onChanged: (bool? value) {
                                setState(() {
                                  fixedAddresses = value;
                                });
                              },
                            ),
                            const Text("Не"),
                            Radio(
                              value: false,
                              groupValue: fixedAddresses,
                              onChanged: (bool? value) {
                                setState(() {
                                  fixedAddresses = value;
                                });
                              },
                            ),
                          ]),
                          Row(children: [
                            const Text("Дали се дозволени миленици при патувањето?")
                          ]),
                          Row(children: [
                            const Text("Да"),
                            Radio(
                              value: true,
                              groupValue: petsAllowed,
                              onChanged: (bool? value) {
                                setState(() {
                                  petsAllowed = value;
                                });
                              },
                            ),
                            const Text("Не"),
                            Radio(
                              value: false,
                              groupValue: petsAllowed,
                              onChanged: (bool? value) {
                                setState(() {
                                  petsAllowed = value;
                                });
                              },
                            ),
                          ]),
                          Row(children: [
                            const Text("Дали автомобилот има клима уред?")
                          ]),
                          Row(children: [
                            const Text("Да"),
                            Radio(
                              value: true,
                              groupValue: airConditioning,
                              onChanged: (bool? value) {
                                setState(() {
                                  airConditioning = value;
                                });
                              },
                            ),
                            const Text("Не"),
                            Radio(
                              value: false,
                              groupValue: airConditioning,
                              onChanged: (bool? value) {
                                setState(() {
                                  airConditioning = value;
                                });
                              },
                            ),
                          ]),
                          Row(children: [
                            const Text("Дали автомобилот има расположлив простор за товар на патниците?")
                          ]),
                          Row(children: [
                            const Text("Да"),
                            Radio(
                              value: true,
                              groupValue: luggageSpace,
                              onChanged: (bool? value) {
                                setState(() {
                                  luggageSpace = value;
                                });
                              },
                            ),
                            const Text("Не"),
                            Radio(
                              value: false,
                              groupValue: luggageSpace,
                              onChanged: (bool? value) {
                                setState(() {
                                  luggageSpace = value;
                                });
                              },
                            ),
                          ]),
                          Container(
                              child: Row(children: [
                            const Text("Доколку имате некој дополнителен коментар за патниците, можете да го внесете во следното поле.")
                          ])),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: '',
                                contentPadding: EdgeInsets.all(8),
                                isDense: true,
                                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OfferSuccessfulScreen()));
                              },
                              child: const Text("Следно"))
                        ]))))));
  }
}
