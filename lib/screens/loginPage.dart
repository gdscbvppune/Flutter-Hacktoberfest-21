// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import '../services/authService.dart';
// import '../services/buttonBuilder.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool _visible = false;

//   void showProgress() {
//     setState(() {
//       _visible = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.white,
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Expanded(
//                 flex: 4,
//                 child: new Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     SvgPicture.asset(
//                       "assets/svg/gdglogo.svg",
//                       height: 350.0,
//                     ),
//                     Text('DSC BVP Pune',
//                         style: GoogleFonts.lato(
//                             fontSize: 35.0, color: Colors.grey[600])),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: new Container(
//                   alignment: Alignment.topCenter,
//                   child: _loginButton(),
//                 ),
//               ),
//               Visibility(
//                 visible: _visible,
//                 child: LinearProgressIndicator(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _loginButton() {
//     return GoogleSignInButton(
//       onPressed: () async {
//         showProgress();
//         bool res = await AuthProvider().signInWithGoogle();
//         if (!res) print("Error logging in with google");
//       },
//       borderRadius: 20.0,
//     );
//   }
// }

// class GoogleSignInButton extends StatelessWidget {
//   final String text;
//   final double borderRadius;
//   final VoidCallback onPressed;

//   GoogleSignInButton(
//       {this.onPressed, this.text = 'Sign in with', this.borderRadius = 3.0});

//   @override
//   Widget build(BuildContext context) {
//     return StretchableButton(
//       buttonColor: Color(0xFF4285F4),
//       borderRadius: borderRadius,
//       onPressed: onPressed,
//       buttonPadding: 0.0,
//       children: <Widget>[
//         SizedBox(width: 14.0),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
//           child: Text(
//             text,
//             style: GoogleFonts.roboto(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Container(
//             height: 38.0,
//             width: 38.0,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(this.borderRadius),
//             ),
//             child: Center(
//               child: Image(
//                 image: AssetImage("assets/logos/google_logo.png"),
//                 height: 18.0,
//                 width: 18.0,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
