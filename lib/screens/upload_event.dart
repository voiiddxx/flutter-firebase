import 'package:event/screens/home.dart';
import 'package:event/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class UploadEvent extends StatefulWidget {
  const UploadEvent({super.key});

  @override
  State<UploadEvent> createState() => _UploadEventState();
}

class _UploadEventState extends State<UploadEvent> {
  final databaseref = FirebaseDatabase.instance.ref("Participants");
  final TextEditingController _PnameController = TextEditingController();
  final TextEditingController _PuidController = TextEditingController();
  final TextEditingController _PdepartmentController = TextEditingController();
  final TextEditingController _PbranchController = TextEditingController();
  final TextEditingController _PeventNameController = TextEditingController();
  final TextEditingController _PfatherNameController = TextEditingController();
  final TextEditingController _PdateofBirthController = TextEditingController();
  final TextEditingController _PcontactController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _PnameController.dispose();
    _PuidController.dispose();
    _PdepartmentController.dispose();
    _PbranchController.dispose();
    _PeventNameController.dispose();
    _PfatherNameController.dispose();
    _PdateofBirthController.dispose();
    _PcontactController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 34, 100, 255),
                Color.fromARGB(255, 29, 119, 255),
              ],
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 3,
              ),

              Text(
                "Register For The Event By Filling Below Requirement",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),

              SizedBox(
                height: 30,
              ),

              //Name Controller
              TextField(
                controller: _PnameController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusColor: Colors.white,
                    hintText: "Enter Your Full Name",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 10),
                    labelText: "Name:",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 1))),
              ),
              SizedBox(
                height: 10,
              ),

              //Enter UID controller
              TextField(
                controller: _PuidController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.numbers,
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusColor: Colors.white,
                    hintText: "Enter Your UID",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 10),
                    labelText: "UID",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 1))),
              ),
              SizedBox(
                height: 10,
              ),

              //department Controller
              TextField(
                controller: _PdepartmentController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.category,
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusColor: Colors.white,
                    hintText: "Enter Your Department Name",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 10),
                    labelText: "Department:",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 1))),
              ),
              SizedBox(
                height: 10,
              ),

              //Branch Year And semester Controller
              TextField(
                controller: _PbranchController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.cabin_outlined,
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusColor: Colors.white,
                    hintText: "Enter your Branch And Semester",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 10),
                    labelText: "Branch And Semester/year:",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 252, 252),
                            width: 1))),
              ),
              SizedBox(
                height: 10,
              ),

              //Event Name controller
              TextField(
                controller: _PeventNameController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.yard,
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusColor: Colors.white,
                    hintText:
                        "Event The Event Name In Which You Are Participating",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 10),
                    labelText: "Event Name:",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 249, 249, 249),
                            width: 1))),
              ),
              SizedBox(
                height: 10,
              ),

              //father name controller
              TextField(
                controller: _PfatherNameController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_add,
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusColor: Colors.white,
                    hintText: "Father name",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 10),
                    labelText: "Father Name:",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 1))),
              ),
              SizedBox(
                height: 10,
              ),

              //date of birth controller
              TextField(
                controller: _PdateofBirthController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusColor: Colors.white,
                    hintText: "Enter Your Date of Birth",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 10),
                    labelText: "DOB:",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 249, 249),
                            width: 1))),
              ),
              SizedBox(
                height: 10,
              ),

              //Student Mobile Number
              TextField(
                controller: _PcontactController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusColor: Colors.white,
                    hintText: "Enter Your Phone Number",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 10),
                    labelText: "Contact Number:",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 1))),
              ),
              SizedBox(
                height: 10,
              ),

              //button for participate
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    databaseref
                        .child(DateTime.now().microsecond.toString())
                        .set({
                      'ParticipantName': _PnameController.text,
                      'ParticipantUid': _PuidController.text,
                      'ParticipantDepartment': _PdepartmentController.text,
                      'ParticipantBranch': _PbranchController.text,
                      'ParticipantEventName': _PeventNameController.text,
                      'ParticipantfatherName': _PfatherNameController.text,
                      'ParticipantDateOfBirth': _PdateofBirthController.text,
                      'ParticipantContact': _PcontactController.text,
                    }).then((value) => showSnackBar(
                            "You Have Successfully Participated In This Event!",
                            context));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Image.asset(
                "assets/images/bfcetlogo.png",
                height: 150,
                width: 150,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
