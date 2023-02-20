import 'package:event/event_cordinator/create_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/home.dart';

class CordinatorScreen extends StatefulWidget {
  const CordinatorScreen({super.key});

  @override
  State<CordinatorScreen> createState() => _CordinatorScreenState();
}

class _CordinatorScreenState extends State<CordinatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CreateEvent()));
                  },
                  child: Text("Create Event"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Upload Result"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
