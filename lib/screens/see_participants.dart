import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class SeeParticipantsScreen extends StatefulWidget {
  const SeeParticipantsScreen({super.key});

  @override
  State<SeeParticipantsScreen> createState() => _SeeParticipantsScreenState();
}

class _SeeParticipantsScreenState extends State<SeeParticipantsScreen> {
  final TextEditingController _EventSearchController = TextEditingController();
  final Participantcheck = FirebaseDatabase.instance.ref("ParticipantsCheck");
  final databaseref = FirebaseDatabase.instance.ref("Participants");

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 255, 27, 84),
                        Color.fromARGB(255, 255, 29, 29),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(1),
                        bottomRight: Radius.circular(100))),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      "Checkout The Participation!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onChanged: (String value) {
                        setState(() {});
                      },
                      controller: _EventSearchController,
                      decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: Colors.black,
                          ),
                          hintText: "Event Name:",
                          hintStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 241, 241),
                                  width: 0.8)),
                          label: Text(
                            "Event Name:",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.3,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                          focusColor: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    //button
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: FirebaseAnimatedList(
                query: databaseref,
                itemBuilder: (context, snapshot, animation, index) {
                  final name =
                      snapshot.child("ParticipantEventName").value.toString();
                  if (_EventSearchController.text.isEmpty) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(255, 255, 27, 84),
                              Color.fromARGB(255, 255, 29, 29),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                snapshot
                                    .child("ParticipantName")
                                    .value
                                    .toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                snapshot
                                    .child("ParticipantUid")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                snapshot
                                    .child("ParticipantDepartment")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                snapshot
                                    .child("ParticipantBranch")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                snapshot
                                    .child("ParticipantEventName")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                snapshot
                                    .child("ParticipantfatherName")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                snapshot
                                    .child("ParticipantDateOfBirth")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                snapshot
                                    .child("ParticipantContact")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else if (name.toLowerCase().contains(_EventSearchController
                      .text
                      .toLowerCase()
                      .toLowerCase())) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 255, 145),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                snapshot
                                    .child('ParticipantName')
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                snapshot
                                    .child("ParticipantUid")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                snapshot
                                    .child("ParticipantDepartment")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                snapshot
                                    .child("ParticipantBranch")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                snapshot
                                    .child("ParticipantfatherName")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                snapshot
                                    .child("ParticipantDateOfBirth")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                snapshot
                                    .child("ParticipantContact")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                snapshot
                                    .child("ParticipantEventName")
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
