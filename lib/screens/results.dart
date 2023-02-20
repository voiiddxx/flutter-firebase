import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final winnerdatabaseRef = FirebaseDatabase.instance.ref("Results");
  final TextEditingController _resultcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: (AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      )),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                controller: _resultcontroller,
                onChanged: (String value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Enter The Event Name",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w300),
                    label: Text(
                      "Event Name",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 0.5, color: Colors.white))),
              ),
            ),
            Expanded(
                child: FirebaseAnimatedList(
              query: winnerdatabaseRef,
              itemBuilder: (context, snapshot, animation, index) {
                final event = snapshot.child('EventName').value.toString();

                if (_resultcontroller.text.isEmpty) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.child('EventName').value.toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 18, 236, 178),
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromARGB(255, 71, 74, 77),
                                      Color.fromARGB(255, 0, 0, 0),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/1st-place.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    Text(
                                      "1st Position",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 18, 236, 178),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      snapshot
                                          .child("FirstWinnerName")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      snapshot
                                          .child("FirstWinnerUid")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      snapshot
                                          .child("FirstWinnerBranch")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              //2nd container
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromARGB(255, 71, 74, 77),
                                      Color.fromARGB(255, 30, 30, 30),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/2nd-place.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    Text(
                                      "2nd Position",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 18, 236, 178),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      snapshot
                                          .child("SecondWinnerName")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      snapshot
                                          .child("SecondWinnerUid")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      snapshot
                                          .child("SecondWinnerbranch")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              //third container
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromARGB(255, 71, 74, 77),
                                      Color.fromARGB(255, 30, 30, 30),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/3rd-place.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    Text(
                                      "Third Position",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 18, 236, 178),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      snapshot
                                          .child("ThirdWinnerName")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      snapshot
                                          .child("ThirdWinnerUid")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      snapshot
                                          .child("ThirdWinnerBranch")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                } else if (event.toLowerCase().contains(
                    _resultcontroller.text.toLowerCase().toLowerCase())) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.child('EventName').value.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color.fromARGB(255, 71, 74, 77),
                                      Color.fromARGB(255, 30, 30, 30),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/1st-place.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    Text(
                                      "1st Position",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 16, 214, 22),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      snapshot
                                          .child("FirstWinnerName")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      snapshot
                                          .child("FirstWinnerUid")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      snapshot
                                          .child("FirstWinnerBranch")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              //2nd container
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color.fromARGB(255, 71, 74, 77),
                                      Color.fromARGB(255, 30, 30, 30),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/2nd-place.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    Text(
                                      "2nd Position",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 16, 214, 22),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      snapshot
                                          .child("SecondWinnerName")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      snapshot
                                          .child("SecondWinnerUid")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      snapshot
                                          .child("SecondWinnerbranch")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              //third container
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color.fromARGB(255, 71, 74, 77),
                                      Color.fromARGB(255, 30, 30, 30),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/3rd-place.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    Text(
                                      "Third Position",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 16, 214, 22),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      snapshot
                                          .child("ThirdWinnerName")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      snapshot
                                          .child("ThirdWinnerUid")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      snapshot
                                          .child("ThirdWinnerBranch")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
    );
  }
}
