import 'package:erickshaw/screens/driver_card/card_model.dart';
import 'package:erickshaw/screens/landingpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DriverOptions extends StatefulWidget {
  const DriverOptions({Key? key}) : super(key: key);

  @override
  State<DriverOptions> createState() => _DriverOptionsState();
}

class _DriverOptionsState extends State<DriverOptions> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 242, 221, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(238, 107, 97, 1.0),
        leadingWidth: 0.0,
        leading: Text(''),
        title: Text('Available Rides'),
        actions: [
          IconButton(
              onPressed: (){
                auth.signOut();
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Landing()
                    )
                );
              },
              icon: Icon(Icons.logout)
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext Context, int index){
          return CardModel();
        },
      ),
    );
  }
}

