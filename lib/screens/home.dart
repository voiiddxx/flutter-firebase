import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event/event_cordinator/cordinator.dart';
import 'package:event/screens/auth.dart';
import 'package:event/screens/codex.dart';
import 'package:event/screens/event_card.dart';
import 'package:event/screens/event_cordinator.dart';
import 'package:event/screens/event_homr.dart';
import 'package:event/screens/non-tech-event.dart';
import 'package:event/screens/results.dart';
import 'package:event/screens/robotroys.dart';
import 'package:event/screens/sportsevent.dart';
import 'package:event/screens/tech_event.dart';
import 'package:event/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  final snap;
  const HomeScreen({this.snap, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  String username = '';
  String role = "";
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsername();
  }

  void getUsername() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    setState(() {
      username = (snap.data() as Map<String, dynamic>)['username'];
      role = (snap.data() as Map<String, dynamic>)['category'];
    });
  }

  void ChangePage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ResultScreen();
    }));
  }

  //all event
  void chnagetoall() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return EventHome();
    }));
  }

  //tech event
  void tech() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TechEventScreen();
    }));
  }

//non-tech
  void nontech() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NonTechnichalEventScreen();
    }));
  }

  //sports
  void sports() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SportsEventScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        elevation: 0,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Hello  " + "$username",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 18, 236, 178),
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 20, 20, 20),
                    Color.fromARGB(255, 36, 34, 34),
                  ],
                ),
              ),
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                }),
                child: Text("Home"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 20, 20, 20),
                    Color.fromARGB(255, 36, 34, 34),
                  ],
                ),
              ),
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EventHome();
                  }));
                }),
                child: Text("All Events"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 20, 20, 20),
                    Color.fromARGB(255, 36, 34, 34),
                  ],
                ),
              ),
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TechEventScreen();
                  }));
                }),
                child: Text("Tech Evens"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 20, 20, 20),
                    Color.fromARGB(255, 36, 34, 34),
                  ],
                ),
              ),
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NonTechnichalEventScreen();
                  }));
                }),
                child: Text("Non Tech Events"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 20, 20, 20),
                    Color.fromARGB(255, 36, 34, 34),
                  ],
                ),
              ),
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SportsEventScreen();
                  }));
                }),
                child: Text("Sports Events"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
          elevation: 0,
          actions: [
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return AuthScreen();
                }));
              },
              child: Icon(
                Icons.logout,
                color: Color.fromARGB(255, 7, 172, 255),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, elevation: 0),
            ),
          ],
          backgroundColor: Colors.transparent,
          title: Text(
            "BFCET Events",
            style: TextStyle(
                color: Color.fromARGB(255, 18, 236, 178),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          )),
      backgroundColor: Color.fromARGB(255, 18, 17, 17),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              //uppper container
              Container(
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 0, 0, 0),
                        Color.fromARGB(255, 74, 72, 72),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello $username",
                      style: TextStyle(
                          color: Color.fromARGB(255, 18, 236, 178),
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //home description
                    Text(
                      "The Official App Where You Can Checkout The ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          height: 1.5),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "All The Events Are Oraganising in The",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          height: 1.5),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "Baba farid College of Engineering",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          height: 1.5),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "And Technology",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          height: 1.5),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 18, 236, 178)),
                        child: Text(
                          "Checkout Events",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EventHome()));
                        },
                      ),
                    )
                  ],
                ),
              ),

              //images row
              Container(
                margin: EdgeInsets.only(top: 15, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 49, 49, 49),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/bfgi logo.jpg",
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Image.asset(
                      "assets/images/bfcetlogo.png",
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                  ],
                ),
              ),

              //cards
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //all event container
                          InkWell(
                            onTap: chnagetoall,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color.fromARGB(255, 74, 74, 74),
                                      Color.fromARGB(255, 0, 0, 0),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/party.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                    ),
                                    Text(
                                      "All Events",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 18, 236, 178),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "CheckOut The All events Now!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: nontech,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromARGB(255, 0, 0, 0),
                                      Color.fromARGB(255, 61, 61, 61),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/event.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                    ),
                                    Text(
                                      "Non-Tech Events",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 18, 236, 178),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "CheckOut Non-Technichal events!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    InkWell(
                      onTap: sports,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color.fromARGB(255, 67, 68, 69),
                                      Color.fromARGB(255, 0, 0, 0),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/sports.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                    ),
                                    Text(
                                      "Sports Events",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 18, 236, 178),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "CheckOut All Sports Events!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: tech,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color.fromARGB(255, 0, 0, 0),
                                        Color.fromARGB(255, 63, 60, 60),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "assets/images/tech.png",
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                      ),
                                      Text(
                                        "Tech Events",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 18, 236, 178),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "Checkout All Technichal Event",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Club Events!",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 18, 236, 178),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color.fromARGB(255, 0, 0, 0),
                                        Color.fromARGB(255, 66, 65, 65),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/images/club1.png",
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.1,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "RobotRoys Club!",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 18, 236, 178),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Checkout All robotroys Club Events!",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 35,
                                        width: 100,
                                        child: ElevatedButton(
                                          onPressed: (() {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return RobotRoysScreen();
                                            }));
                                          }),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.transparent,
                                              side: BorderSide(
                                                  width: 0.5,
                                                  color: Colors.white)),
                                          child: Text(
                                            "ChcekNow!",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "",
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/images/club2.png",
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.1,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "CodeX Club",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 18, 236, 178),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Checkout all codex club events",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 35,
                                        width: 100,
                                        child: ElevatedButton(
                                          onPressed: (() {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return CodeXScreen();
                                            }));
                                          }),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.transparent,
                                              side: BorderSide(
                                                  width: 0.5,
                                                  color: Colors.white)),
                                          child: Text(
                                            "ChcekNow!",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "",
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
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    //results container

                    InkWell(
                      onTap: () => ChangePage(),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 28, 133, 239),
                                Color.fromARGB(255, 23, 255, 170),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Image.asset(
                                "assets/images/award.png",
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "All Results!",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Checkout The Results Of Particular Events And Know The winner of events!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20,
                                        letterSpacing: 0.2),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if ("$role" == "8102003") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EventCordinator()));
                            } else {
                              return showSnackBar(
                                  "Sorry Your Account Doesn't Have Event Cordinator facility",
                                  context);
                            }
                          },
                          child: Text(
                            "For Event Cordinator",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            side: BorderSide(
                              width: 0.7,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Text(
                "@ Made By Nikhil Kumar",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
