import 'package:erickshaw/screens/select_route.dart';
import 'package:erickshaw/screens/user_choice.dart';
import 'package:flutter/material.dart';

class PassWait extends StatefulWidget {
  const PassWait({Key? key}) : super(key: key);

  @override
  State<PassWait> createState() => _PassWaitState();
}

class _PassWaitState extends State<PassWait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 242, 221, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Color.fromRGBO(238, 107, 97, 1.0),
            ),
            SizedBox(
              height: 25,
            ),
            Text('Waiting for driver to confirm your ride'),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SelectRoute()));
                },
                child: Text('Cancel Ride'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(238, 107, 97, 1.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
