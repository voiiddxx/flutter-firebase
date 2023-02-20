import 'package:event/event_cordinator/create_event.dart';
import 'package:event/screens/see_participants.dart';
import 'package:event/screens/upload_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EventCordinator extends StatefulWidget {
  const EventCordinator({super.key});

  @override
  State<EventCordinator> createState() => _EventCordinatorState();
}

class _EventCordinatorState extends State<EventCordinator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "Event Cordinator",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 18, 236, 178),
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 84, 113, 255),
                      Color.fromARGB(255, 19, 71, 241),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/event.png",
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Text(
                      "Create Event",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Event Cordinator Can Create The Event By Just Provinding The Neccessry Imformation Regarding The Event And Boost up The Student Particiapants",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 251, 251),
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateEvent()));
                        },
                        child: Text(
                          "Create",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          side:
                              BorderSide(width: 0.7, color: Colors.transparent),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 255, 41, 148),
                      Color.fromARGB(255, 255, 103, 214),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/event1.webp",
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    Text(
                      "See Participation",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Event Cordinator See The Participation As their respective choosen Events and get Their Important Details",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SeeParticipantsScreen();
                          }));
                        },
                        child: Text(
                          "Check Now!",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 253, 253),
                          elevation: 0,
                          side:
                              BorderSide(width: 0.7, color: Colors.transparent),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              // container for see The Participation end

              Container(
                height: 300,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 255, 36, 65),
                      Color.fromARGB(255, 255, 79, 129),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/award.png",
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Text(
                      "Upload Result",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Event Cordinator Upload The Result of student so that student can easily access the result of their respective event",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return UploadResult();
                          }));
                        },
                        child: Text(
                          "Upload",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          side:
                              BorderSide(width: 0.7, color: Colors.transparent),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
