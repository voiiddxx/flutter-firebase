import 'package:event/screens/event_homr.dart';
import 'package:event/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  final databaseRef = FirebaseDatabase.instance.ref("event");
  final TextEditingController _eventNameController = TextEditingController();
  final TextEditingController _eventDateController = TextEditingController();
  final TextEditingController _eventCategoryController =
      TextEditingController();
  final TextEditingController _eventEligibilityController =
      TextEditingController();
  final TextEditingController _eventDepartmentController =
      TextEditingController();
  final TextEditingController _eventBenifitController = TextEditingController();
  final TextEditingController _eventContactController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _eventBenifitController.dispose();
    _eventContactController.dispose();
    _eventDateController.dispose();
    _eventDepartmentController.dispose();
    _eventEligibilityController.dispose();
    _eventNameController.dispose();
    _eventContactController.dispose();
    _eventCategoryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 255, 119, 158),
                  Color.fromARGB(255, 253, 68, 68),
                ],
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Event!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Enter The Correct Details of Events!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "NOTE*",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Category Codes:",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Technichal Event: 2200",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Non-Tech Event: 3300",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Sports Event: 4400",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "RobotRoys Club Event: 5500",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Codex Event: 6600",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: TextField(
                        controller: _eventNameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: " Event Name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          label: Text(
                            "Event Name",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        controller: _eventCategoryController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.category,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: "Technichal/Non-Technichal/Sports",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          label: Text(
                            "Event Category:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        controller: _eventDateController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.date_range_rounded,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: " Event Date",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          label: Text(
                            "Event Date:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 255, 245, 245))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        controller: _eventEligibilityController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: " Eligiblity",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          label: Text(
                            "Eligibility:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        controller: _eventDepartmentController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.block,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: "Department Name",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          label: Text(
                            "Department Name:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        controller: _eventBenifitController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.sort,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: "Event Benifit",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          label: Text(
                            "Event Benifit:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 242, 237, 237))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        controller: _eventContactController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: "Contact No. For Query",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          label: Text(
                            "Contact No. For Query:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          elevation: 0,
                        ),
                        onPressed: () {
                          databaseRef
                              .child(DateTime.now().microsecond.toString())
                              .set({
                            'eventName': _eventNameController.text,
                            'eventCategory': _eventCategoryController.text,
                            'eventDate': _eventDateController.text,
                            'eventEligibility':
                                _eventEligibilityController.text,
                            'eventDepartment': _eventDepartmentController.text,
                            'eventBenifit': _eventBenifitController.text,
                            'eventContact': _eventContactController.text,
                          }).then((value) =>
                                  showSnackBar("Event Created", context));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EventHome()));
                        },
                        child: Text("Upload Event"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
