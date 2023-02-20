import 'package:event/auth_method.dart';
import 'package:event/screens/create_account.dart';
import 'package:event/screens/home.dart';
import 'package:event/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool loading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      loading = true;
    });
    String res = await AuthMethod().logIn(
        email: _emailController.text, password: _passwordController.text);
    if (res == "success") {
      showSnackBar("Account Login Succefully", context);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()));
    } else {
      showSnackBar(res, context);
    }
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hey There!",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Login To Your Account Now!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                    controller: _emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: " Enter Your email Address",
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      focusColor: Colors.black,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      label: Text(
                        "Email Address",
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
                    obscureText: true,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                    controller: _passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                      focusColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      hintText: " Password",
                      label: Text(
                        "Password",
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
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 50),
                      child: TextButton(
                          onPressed: (() {}),
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: loginUser,
                    child: loading
                        ? Center(
                            child:
                                CircularProgressIndicator(color: Colors.white),
                          )
                        : Text(
                            "Login Now",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Have Account?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return CreateAccountScreen();
                          }));
                        },
                        child: Text(
                          "Create Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/bfcetlogo.png",
                  height: 100,
                  width: 150,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
