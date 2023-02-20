import 'package:event/screens/upload_event.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class TechEventScreen extends StatefulWidget {
  const TechEventScreen({super.key});

  @override
  State<TechEventScreen> createState() => _TechEventScreenState();
}

class _TechEventScreenState extends State<TechEventScreen> {
  final ref = FirebaseDatabase.instance.ref('event');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          " Tech Events",
          style: TextStyle(
              color: Color.fromARGB(255, 18, 236, 178),
              fontWeight: FontWeight.w400,
              fontSize: 20),
        ),
        backgroundColor: Color.fromARGB(255, 23, 21, 21),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: FirebaseAnimatedList(
              query: ref,
              itemBuilder: (context, snapshot, animation, index) {
                if (snapshot.child('eventCategory').value.toString() ==
                    "2200") {
                  return SafeArea(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(255, 71, 74, 77),
                              Color.fromARGB(255, 30, 30, 30),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10)),

                      child: Column(
                        children: [
                          //image container
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromARGB(255, 0, 0, 0),
                                  Color.fromARGB(255, 52, 52, 52),
                                ],
                              ),
                            ),
                            child: Image.asset(
                              "assets/images/event2.webp",
                              height: 150,
                            ),
                          ),
                          //text container
                          Container(
                            color: Color.fromARGB(255, 18, 236, 178),
                            padding: EdgeInsets.only(left: 20, bottom: 20),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  snapshot.child('eventName').value.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Organized By: " +
                                      snapshot
                                          .child("eventDepartment")
                                          .value
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Eligibility : " +
                                      snapshot
                                          .child("eventEligibility")
                                          .value
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Event Date: " +
                                      snapshot
                                          .child("eventDate")
                                          .value
                                          .toString(),
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Event Benifit: " +
                                      snapshot
                                          .child("eventBenifit")
                                          .value
                                          .toString(),
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Contact For Query: " +
                                      snapshot
                                          .child("eventContact")
                                          .value
                                          .toString(),
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: ElevatedButton(
                                    child: Text(
                                      "Participate Now!!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return UploadEvent();
                                      }));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor:
                                            Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      //
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
