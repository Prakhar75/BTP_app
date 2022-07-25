// // import 'dart:async';

// // import 'package:flutter/material.dart';
// // import 'package:barcode_scan/barcode_scan.dart';
// // import 'package:flutter/services.dart';
// // import 'mainpage.dart';



// // class QRViewExample extends StatefulWidget {
// //   @override
// //  State<StatefulWidget> createState() => _QRViewExampleState();
// //   }


// // class _QRViewExampleState extends State<QRViewExample> {

// import 'package:barcode_scan2/gen/protos/protos.pbjson.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:barcode_scan2/barcode_scan2.dart';
// import 'package:flutter/services.dart';
// import 'package:url_launcher/url_launcher.dart';
// // import 'package:url_launcher/url_launcher_string.dart';




// class QRViewExample extends StatefulWidget {
//   const QRViewExample({super.key, required this.title});

//   final String title;

//   @override
//   State<StatefulWidget> createState() => _QRViewExampleState();
// }

// class _QRViewExampleState extends State<QRViewExample> {
//   String result = "";
//   Future _back() async {
//     setState(() {
//       result = "";
//     });
//   }

//   Future _scanQr() async {
//     try {
//       var scanResult = await BarcodeScanner.scan(
//         options: const ScanOptions(
//           useCamera: -1,
//           android: AndroidOptions(
//             useAutoFocus: true,
//           ),
//         ),
//       );

//       setState(() {
//         result = scanResult.rawContent;
//       });
//       Uri url = Uri.parse(result);
//       if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: const Text('Could not find viable url'),
//               actions: <Widget>[
//                 TextButton(
//                   child: const Text('Ok'),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     } on PlatformException catch (e) {
//       if (e.code == BarcodeScanner.cameraAccessDenied) {
//         setState(
//           () {
//             showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                 title: const Text("Permission"),
//                 content: const Text("Camera Permission Denied"),
//                 actions: [
//                   TextButton(
//                       onPressed: () => Navigator.pop(context),
//                       child: const Text("OK"))
//                 ],
//               ),
//             );
//           },
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF1F3CBA),
//         centerTitle: true,
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: [
//           const Image(
//             image: AssetImage("images/img.jpg"),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           const Center(
//             child: Text(
//               "Scan Your QR Code",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500,
//                 fontStyle: FontStyle.italic,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Center(
//             child: Text(
//               result,
//               style: const TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontStyle: FontStyle.italic,
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           FloatingActionButton.extended(
//             elevation: 1,
//             backgroundColor: const Color(0xFF1F3CBA),
//             onPressed: _scanQr,
//             label: const Text("Scan QR"),
//             icon: const Icon(
//               Icons.qr_code_scanner,
//             ),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           FloatingActionButton.extended(
//             elevation: 1,
//             backgroundColor: const Color(0xFF1F3CBA),
//             onPressed: _back,
//             label: const Text("Clear"),
//             icon: const Icon(
//               Icons.clear_all,
//             ),
//           ),
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }
