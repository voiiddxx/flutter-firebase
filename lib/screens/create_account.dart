import 'package:event/auth_method.dart';
import 'package:event/screens/home.dart';
import 'package:event/screens/login.dart';
import 'package:event/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _departmentController = TextEditingController();
  final TextEditingController _BfgiuidController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  bool loading = false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _departmentController.dispose();
    _passwordController.dispose();
    _BfgiuidController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 50),
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
          ),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Hey There! Get Your Account Now!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      style: TextStyle(
                          color: Color.fromARGB(255, 9, 9, 9),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                      cursorColor: Colors.white,
                      controller: _usernameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0.3, color: Colors.red)),
                        focusColor: Colors.white,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        hintText: " Enter Your Full Name",
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        label: Text(
                          "Name: ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(255, 255, 249, 249))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                      controller: _emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        ),
                        focusColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0.3, color: Colors.white)),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: " Enter Your email Address:",
                        label: Text(
                          "Email Address:",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(255, 255, 255, 255))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                      controller: _BfgiuidController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Colors.black,
                        ),
                        focusColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "UID:",
                        hintStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                        label: Text(
                          "UID:",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(255, 255, 250, 250))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                      controller: _departmentController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.room,
                          color: Colors.black,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: " Department:",
                        label: Text(
                          "Department:",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(255, 255, 255, 255))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                      controller: _categoryController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.abc,
                          color: Colors.black,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Cordinator Id:",
                        hintStyle: TextStyle(color: Colors.black),
                        label: Text(
                          "Only For Cordinator:",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(255, 255, 252, 252))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                      controller: _passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: " Password:",
                        label: Text(
                          "Password:",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(255, 253, 251, 251))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 5,
                          backgroundColor: Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () async {
                        setState(() {
                          loading = true;
                        });
                        String res = await AuthMethod().singUp(
                            category: _categoryController.text,
                            username: _usernameController.text,
                            email: _emailController.text,
                            department: _departmentController.text,
                            password: _passwordController.text,
                            uid: _BfgiuidController.text);
                        if (res == "success") {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomeScreen();
                          }));
                          showSnackBar("Account Created", context);
                          setState(() {
                            loading = false;
                          });
                        }
                      },
                      child: loading
                          ? Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              "Create Account Now",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have An Account?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 30,
                        width: 50,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return LoginScreen();
                              }));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            )),
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/images/bfcetlogo.png",
                    height: 120,
                    width: 180,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
