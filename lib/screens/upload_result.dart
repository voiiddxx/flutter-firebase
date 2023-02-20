import 'package:event/screens/home.dart';
import 'package:event/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class UploadResult extends StatefulWidget {
  const UploadResult({super.key});

  @override
  State<UploadResult> createState() => _UploadResultState();
}

class _UploadResultState extends State<UploadResult> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _firstuidController = TextEditingController();
  final TextEditingController _firstbranchController = TextEditingController();
  final TextEditingController _secondNameController = TextEditingController();
  final TextEditingController _seconduidController = TextEditingController();
  final TextEditingController _secondbranchController = TextEditingController();
  final TextEditingController _thirdNameController = TextEditingController();
  final TextEditingController _thirduidController = TextEditingController();
  final TextEditingController _thirdbranchController = TextEditingController();
  final TextEditingController _eventnameController = TextEditingController();

  final winnerdatabaseRef = FirebaseDatabase.instance.ref("Results");

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _firstNameController.dispose();
    _firstuidController.dispose();
    _firstbranchController.dispose();
    _secondNameController.dispose();
    _seconduidController.dispose();
    _secondbranchController.dispose();
    _thirdNameController.dispose();
    _thirduidController.dispose();
    _thirdbranchController.dispose();
    _eventnameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 170, 58, 255),
                  Color.fromARGB(255, 29, 67, 255),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Welcome!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Enter The Result Of Event",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      label: Text(
                        "1st Winner Name:",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      hintText: "1st Winner Name",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 246, 246),
                              width: 0.9))),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _firstuidController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.numbers,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      label: Text(
                        "1st Winner Uid:",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      hintText: "1st Winner UID",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 0.9))),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _firstbranchController,
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
                      label: Text(
                        "1st Winner Branch",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      hintText: "1st Winner Branch",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 0.9))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _secondNameController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      label: Text(
                        "2nd Winner Name:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      hintText: "2nd Winner Name:",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 0.9))),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _seconduidController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.numbers,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      label: Text(
                        "2nd Winner UID",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      hintText: "Second Winner UID",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 0.9))),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _secondbranchController,
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
                      label: Text(
                        "2nd Winner Branch",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      hintText: "Branch Second Winner Name",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 0.9))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _thirdNameController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      label: Text(
                        "3rd Winner Name:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      hintText: "Third Winner Name",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 254, 254),
                              width: 0.9))),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _thirduidController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.numbers,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      label: Text(
                        "3rd Winner UID:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      hintText: "Third Winner UID",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 251, 251, 251),
                              width: 0.9))),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _thirdbranchController,
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
                      label: Text(
                        "3rd Winner Branch:",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      hintText: "Branch Third Winner ",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 250, 250),
                              width: 0.9))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _eventnameController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.star_border,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      label: Text(
                        "Event Name:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      hintText: "Event Name:",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 0.9))),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 0, 0, 0)),
                    onPressed: () {
                      winnerdatabaseRef
                          .child(DateTime.now().microsecond.toString())
                          .set({
                        'FirstWinnerName': _firstNameController.text,
                        'FirstWinnerUid': _firstuidController.text,
                        'FirstWinnerBranch': _firstbranchController.text,
                        'SecondWinnerName': _secondNameController.text,
                        'SecondWinnerUid': _seconduidController.text,
                        'SecondWinnerbranch': _secondbranchController.text,
                        'ThirdWinnerName': _thirdNameController.text,
                        'ThirdWinnerUid': _thirduidController.text,
                        'ThirdWinnerBranch': _thirdbranchController.text,
                        'EventName': _eventnameController.text
                      }).then((value) => showSnackBar(
                              "Result Uploaded Successfully!", context));
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                    child: Text(
                      "Upload Result",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 253, 253),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/bfcetlogo.png",
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
