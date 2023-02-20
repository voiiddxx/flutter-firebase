import 'package:flutter/material.dart';

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}


// //  Container(
// //                 height: 250,
// //                 width: double.infinity,
// //                 decoration: BoxDecoration(
// //                   image: DecorationImage(
// //                       image: AssetImage("assets/images/bfcetlogo.png")),
// //                 ),
// //               ),





//       drawer: Drawer(
//         backgroundColor: Colors.black,
//         elevation: 0,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 100,
//             ),
//             Text(
//               "Helloo " + "$username",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 25,
//                   fontWeight: FontWeight.w500),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 100,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,
//                   colors: [
//                     Color.fromARGB(255, 20, 20, 20),
//                     Color.fromARGB(255, 36, 34, 34),
//                   ],
//                 ),
//               ),
//               child: ElevatedButton(
//                 onPressed: (() {}),
//                 child: Text("Home"),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.transparent),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 100,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,
//                   colors: [
//                     Color.fromARGB(255, 20, 20, 20),
//                     Color.fromARGB(255, 36, 34, 34),
//                   ],
//                 ),
//               ),
//               child: ElevatedButton(
//                 onPressed: (() {}),
//                 child: Text("Home"),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.transparent),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 100,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,
//                   colors: [
//                     Color.fromARGB(255, 20, 20, 20),
//                     Color.fromARGB(255, 36, 34, 34),
//                   ],
//                 ),
//               ),
//               child: ElevatedButton(
//                 onPressed: (() {}),
//                 child: Text("Home"),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.transparent),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 100,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,
//                   colors: [
//                     Color.fromARGB(255, 20, 20, 20),
//                     Color.fromARGB(255, 36, 34, 34),
//                   ],
//                 ),
//               ),
//               child: ElevatedButton(
//                 onPressed: (() {}),
//                 child: Text("Home"),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.transparent),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 100,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,
//                   colors: [
//                     Color.fromARGB(255, 20, 20, 20),
//                     Color.fromARGB(255, 36, 34, 34),
//                   ],
//                 ),
//               ),
//               child: ElevatedButton(
//                 onPressed: (() {}),
//                 child: Text("Home"),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.transparent),
//               ),
//             ),
//           ],
//         ),
//       ),
//       appBar: AppBar(
//           elevation: 0,
//           actions: [
//             ElevatedButton(
//               onPressed: () async {
//                 await FirebaseAuth.instance.signOut();
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (context) {
//                   return AuthScreen();
//                 }));
//               },
//               child: Icon(
//                 Icons.logout,
//                 color: Color.fromARGB(255, 16, 214, 22),
//               ),
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.transparent, elevation: 0),
//             ),
//           ],
//           backgroundColor: Colors.transparent,
//           title: Text(
//             "BFCET Events",
//             style: TextStyle(
//                 color: Color.fromARGB(255, 65, 237, 71),
//                 fontSize: 20,
//                 fontWeight: FontWeight.w600),
//           )),
//       backgroundColor: Color.fromARGB(255, 18, 17, 17),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Container(
//           margin: EdgeInsets.only(top: 10),
//           child: Column(
//             children: [
//               //uppper container
//               Container(
//                 padding:
//                     EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
//                 margin: EdgeInsets.symmetric(horizontal: 10),
//                 height: MediaQuery.of(context).size.height * 0.3,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topRight,
//                       end: Alignment.bottomLeft,
//                       colors: [
//                         Color.fromARGB(255, 20, 20, 20),
//                         Color.fromARGB(255, 36, 34, 34),
//                       ],
//                     ),
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Hey $username" + " :)",
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 0, 255, 145),
//                           fontSize: 25,
//                           fontWeight: FontWeight.w500),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     //home description
//                     Text(
//                       "The Official App Where You Can Checkout All The Event Organizing In Baba Farid college of ewngineering and technology And participate Through one plateform as well You Can see The results ",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 17,
//                           fontWeight: FontWeight.w300,
//                           height: 1.5),
//                       textAlign: TextAlign.start,
//                     ),
//                     SizedBox(height: 10),
//                     SizedBox(
//                       height: 50,
//                       width: MediaQuery.of(context).size.width * 0.4,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Color.fromARGB(255, 0, 255, 145)),
//                         child: Text(
//                           "Checkout Events",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 17,
//                               fontWeight: FontWeight.w400),
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => EventHome()));
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//               ),

//               //images row
//               Container(
//                 margin: EdgeInsets.only(top: 15, left: 10, right: 10),
//                 decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 49, 49, 49),
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Image.asset(
//                       "assets/images/bfgi logo.jpg",
//                       height: MediaQuery.of(context).size.height * 0.08,
//                     ),
//                     Image.asset(
//                       "assets/images/bfcetlogo.png",
//                       height: MediaQuery.of(context).size.height * 0.06,
//                     ),
//                   ],
//                 ),
//               ),

//               //cards
//               Container(
//                 child: Column(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       margin: EdgeInsets.only(top: 20),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.3,
//                             width: MediaQuery.of(context).size.width * 0.45,
//                             decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topRight,
//                                   end: Alignment.bottomLeft,
//                                   colors: [
//                                     Color.fromARGB(255, 49, 48, 48),
//                                     Color.fromARGB(255, 0, 0, 0),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Container(
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               child: Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Image.asset(
//                                     "assets/images/party.png",
//                                     height: MediaQuery.of(context).size.height *
//                                         0.15,
//                                   ),
//                                   Text(
//                                     "All Events",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w300,
//                                         fontSize: 20),
//                                   ),
//                                   Text(
//                                     "CheckOut The All events Now!",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w300),
//                                   ),
//                                   SizedBox(
//                                     height: 30,
//                                     width: double.infinity,
//                                     child: ElevatedButton(
//                                       onPressed: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     EventHome()));
//                                       },
//                                       child: Text(
//                                         "checkout",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.transparent,
//                                         elevation: 0,
//                                         side: BorderSide(
//                                           width: 0.7,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.3,
//                             width: MediaQuery.of(context).size.width * 0.45,
//                             decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topRight,
//                                   end: Alignment.bottomLeft,
//                                   colors: [
//                                     Color.fromARGB(255, 0, 0, 0),
//                                     Color.fromARGB(255, 53, 51, 51),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Container(
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               child: Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Image.asset(
//                                     "assets/images/event.png",
//                                     height: MediaQuery.of(context).size.height *
//                                         0.15,
//                                   ),
//                                   Text(
//                                     "Non-Tech Events",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w300,
//                                         fontSize: 20),
//                                   ),
//                                   Text(
//                                     "CheckOut Non-Technichal events!",
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w300),
//                                   ),
//                                   SizedBox(
//                                     height: 30,
//                                     width: double.infinity,
//                                     child: ElevatedButton(
//                                       onPressed: () {
//                                         Navigator.push(context,
//                                             MaterialPageRoute(
//                                                 builder: (context) {
//                                           return NonTechnichalEventScreen();
//                                         }));
//                                       },
//                                       child: Text(
//                                         "checkout",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.transparent,
//                                         elevation: 0,
//                                         side: BorderSide(
//                                           width: 0.7,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     Container(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       margin: EdgeInsets.only(top: 20),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.3,
//                             width: MediaQuery.of(context).size.width * 0.45,
//                             decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topRight,
//                                   end: Alignment.bottomLeft,
//                                   colors: [
//                                     Color.fromARGB(255, 67, 68, 69),
//                                     Color.fromARGB(255, 0, 0, 0),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Container(
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               child: Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Image.asset(
//                                     "assets/images/sports.png",
//                                     height: MediaQuery.of(context).size.height *
//                                         0.15,
//                                   ),
//                                   Text(
//                                     "Sports Events",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w300,
//                                         fontSize: 20),
//                                   ),
//                                   Text(
//                                     "CheckOut All Sports Events!",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w300),
//                                   ),
//                                   SizedBox(
//                                     height: 30,
//                                     width: double.infinity,
//                                     child: ElevatedButton(
//                                       onPressed: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     SportsEventScreen()));
//                                       },
//                                       child: Text(
//                                         "checkout",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.transparent,
//                                         elevation: 0,
//                                         side: BorderSide(
//                                           width: 0.7,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.3,
//                             width: MediaQuery.of(context).size.width * 0.45,
//                             decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topRight,
//                                   end: Alignment.bottomLeft,
//                                   colors: [
//                                     Color.fromARGB(255, 0, 0, 0),
//                                     Color.fromARGB(255, 63, 60, 60),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Container(
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               child: Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Image.asset(
//                                     "assets/images/tech.png",
//                                     height: MediaQuery.of(context).size.height *
//                                         0.15,
//                                   ),
//                                   Text(
//                                     "Technichal Events",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w300,
//                                         fontSize: 20),
//                                   ),
//                                   Text(
//                                     "Checkout All Technichal Event",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w300),
//                                   ),
//                                   SizedBox(
//                                     height: 30,
//                                     width: double.infinity,
//                                     child: ElevatedButton(
//                                       onPressed: () {
//                                         Navigator.push(context,
//                                             MaterialPageRoute(
//                                                 builder: (context) {
//                                           return TechEventScreen();
//                                         }));
//                                       },
//                                       child: Text(
//                                         "checkout",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.transparent,
//                                         elevation: 0,
//                                         side: BorderSide(
//                                             width: 0.7, color: Colors.white),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Container(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Club Events!",
//                               style: TextStyle(
//                                   color: Color.fromARGB(255, 76, 248, 82),
//                                   fontSize: 25,
//                                   fontWeight: FontWeight.w500),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                             Row(
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.symmetric(horizontal: 20),
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.3,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.7,
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       begin: Alignment.topRight,
//                                       end: Alignment.bottomRight,
//                                       colors: [
//                                         Color.fromARGB(255, 0, 0, 0),
//                                         Color.fromARGB(255, 66, 65, 65),
//                                       ],
//                                     ),
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Column(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Image.asset(
//                                         "assets/images/club1.png",
//                                         height:
//                                             MediaQuery.of(context).size.height *
//                                                 0.1,
//                                       ),
//                                       Text(
//                                         "RobotRoys Club!",
//                                         style: TextStyle(
//                                             color: Color.fromARGB(
//                                                 255, 218, 248, 50),
//                                             fontSize: 25,
//                                             fontWeight: FontWeight.w500,
//                                             fontStyle: FontStyle.normal),
//                                       ),
//                                       Text(
//                                         "Checkout All robotroys Club Events!",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.w300),
//                                       ),
//                                       SizedBox(
//                                         height: 35,
//                                         width: 100,
//                                         child: ElevatedButton(
//                                           onPressed: (() {
//                                             Navigator.push(context,
//                                                 MaterialPageRoute(
//                                                     builder: (context) {
//                                               return RobotRoysScreen();
//                                             }));
//                                           }),
//                                           style: ElevatedButton.styleFrom(
//                                               backgroundColor:
//                                                   Colors.transparent,
//                                               side: BorderSide(
//                                                   width: 0.5,
//                                                   color: Colors.white)),
//                                           child: Text(
//                                             "ChcekNow!",
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.w300),
//                                           ),
//                                         ),
//                                       ),
//                                       Text(
//                                         "",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.w300),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 //2nd container
//                                 Container(
//                                   padding: EdgeInsets.symmetric(horizontal: 20),
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.3,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.7,
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       begin: Alignment.topRight,
//                                       end: Alignment.bottomLeft,
//                                       colors: [
//                                         Color.fromARGB(255, 71, 74, 77),
//                                         Color.fromARGB(255, 30, 30, 30),
//                                       ],
//                                     ),
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Column(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Image.asset(
//                                         "assets/images/club2.png",
//                                         height:
//                                             MediaQuery.of(context).size.height *
//                                                 0.1,
//                                       ),
//                                       Text(
//                                         "CodeX Club",
//                                         style: TextStyle(
//                                             color: Color.fromARGB(
//                                                 255, 255, 255, 255),
//                                             fontSize: 25,
//                                             fontWeight: FontWeight.w500,
//                                             fontStyle: FontStyle.normal),
//                                       ),
//                                       Text(
//                                         "Checkout all codex club events",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.w300),
//                                       ),
//                                       SizedBox(
//                                         height: 35,
//                                         width: 100,
//                                         child: ElevatedButton(
//                                           onPressed: (() {
//                                             Navigator.push(context,
//                                                 MaterialPageRoute(
//                                                     builder: (context) {
//                                               return CodeXScreen();
//                                             }));
//                                           }),
//                                           style: ElevatedButton.styleFrom(
//                                               backgroundColor:
//                                                   Colors.transparent,
//                                               side: BorderSide(
//                                                   width: 0.5,
//                                                   color: Colors.white)),
//                                           child: Text(
//                                             "ChcekNow!",
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.w300),
//                                           ),
//                                         ),
//                                       ),
//                                       Text(
//                                         "",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.w300),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 //third container
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     //results container

//                     InkWell(
//                       onTap: () => ChangePage(),
//                       child: Container(
//                         margin: EdgeInsets.symmetric(horizontal: 10),
//                         height: MediaQuery.of(context).size.height * 0.3,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               begin: Alignment.topRight,
//                               end: Alignment.bottomLeft,
//                               colors: [
//                                 Color.fromARGB(255, 28, 133, 239),
//                                 Color.fromARGB(255, 23, 255, 170),
//                               ],
//                             ),
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.45,
//                               child: Image.asset(
//                                 "assets/images/award.png",
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.2,
//                               ),
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.45,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     "All Results!",
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 25,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Text(
//                                     "Checkout The Results Of Particular Events And Know The winner of events!",
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w300,
//                                         fontSize: 20,
//                                         letterSpacing: 0.2),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),

//                     SizedBox(
//                       height: 20,
//                     ),
//                     Container(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                       child: SizedBox(
//                         height: 50,
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             if ("$role" == "Cordinator" ||
//                                 "$role" == "Coordinator" ||
//                                 "$role" == "Co-ordinator" ||
//                                 "$role" == "coordinator" ||
//                                 "$role" == "co-ordinator") {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => EventCordinator()));
//                             } else {
//                               return showSnackBar(
//                                   "Sorry Your Account Doesn't Have Event Cordinator facility",
//                                   context);
//                             }
//                           },
//                           child: Text(
//                             "For Event Cordinator",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.transparent,
//                             elevation: 0,
//                             side: BorderSide(
//                               width: 0.7,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),

//               Text(
//                 "@ Made By Nikhil Kumar",
//                 style: TextStyle(color: Colors.white),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//             ],
//           ),
//         ),
//       ),






//button
     // SizedBox(
                                  //   height: 30,
                                  //   width: double.infinity,
                                  //   child: ElevatedButton(
                                  //     onPressed: () {
                                  //       Navigator.push(
                                  //           context,
                                  //           MaterialPageRoute(
                                  //               builder: (context) =>
                                  //                   EventHome()));
                                  //     },
                                  //     child: Text(
                                  //       "checkout",
                                  //       style: TextStyle(
                                  //           color: Colors.white,
                                  //           fontWeight: FontWeight.w400),
                                  //     ),
                                  //     style: ElevatedButton.styleFrom(
                                  //       backgroundColor: Colors.transparent,
                                  //       elevation: 0,
                                  //       side: BorderSide(
                                  //         width: 0.7,
                                  //         color: Colors.white,
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),