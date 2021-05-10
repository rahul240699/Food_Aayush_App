// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:foodaayush/classify.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';

// //List<CameraDescription> cameras;

// class Freshcam extends StatefulWidget {
//   final CameraDescription camera;
//   const Freshcam({
//     Key key,
//     @required this.camera,
//   }) : super(key: key);

//   @override
//   _FreshcamState createState() => _FreshcamState();
// }

// class _FreshcamState extends State<Freshcam> {
//   CameraController _controller;
//   Future<void> _initializeControllerFuture;

//   @override
//   void initState() {
//     super.initState();
//     // To display the current output from the Camera,
//     // create a CameraController.
//     _controller = CameraController(
//       // Get a specific camera from the list of available cameras.
//       widget.camera,
//       // Define the resolution to use.
//       ResolutionPreset.medium,
//     );

//     // Next, initialize the controller. This returns a Future.
//     _initializeControllerFuture = _controller.initialize();
//   }

//   @override
//   void dispose() {
//     // Dispose of the controller when the widget is disposed.
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Color(0xff196F3D),
//           title: Text(
//             'Take a picture',
//             style: TextStyle(
//                 fontFamily: 'Comfortaa', color: Color(0xffF7DC6F), fontSize: 30.0),
//           )),
//       // Wait until the controller is initialized before displaying the
//       // camera preview. Use a FutureBuilder to display a loading spinner
//       // until the controller has finished initializing.
//       body: FutureBuilder<void>(
//         future: _initializeControllerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             // If the Future is complete, display the preview.
//             return CameraPreview(_controller);
//           } else {
//             // Otherwise, display a loading indicator.
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Color(0xff196F3D),
//         child: Icon(
//           Icons.camera_alt,
//           color: Color(0xffF7DC6F),
//         ),
//         // Provide an onPressed callback.
//         onPressed: () async {
//           // Take the Picture in a try / catch block. If anything goes wrong,
//           // catch the error.
//           try {
//             // Ensure that the camera is initialized.
//             await _initializeControllerFuture;

//             // Construct the path where the image should be saved using the
//             // pattern package.
//             final path = join(
//               // Store the picture in the temp directory.
//               // Find the temp directory using the `path_provider` plugin.
//               (await getTemporaryDirectory()).path,
//               '${DateTime.now()}.png',
//             );

//             // Attempt to take a picture and log where it's been saved.
//             await _controller.takePicture(path);

//             // If the picture was taken, display it on a new screen.
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => DisplayPictureScreen(imagePath: path),
//               ),
//             );
//           } catch (e) {
//             // If an error occurs, log the error to the console.
//             print(e);
//           }
//         },
//       ),
//     );
//   }
// }

// // A widget that displays the picture taken by the user.
// class DisplayPictureScreen extends StatefulWidget {
//   final String imagePath;
//   const DisplayPictureScreen({Key key, this.imagePath}) : super(key: key);

//   @override
//   _DisplayPictureScreenState createState() => _DisplayPictureScreenState();
// }

// class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Color(0xff196F3D),
//           title: Text(
//             'Check Freshness',
//             style: TextStyle(
//                 fontFamily: 'Comfortaa', color: Color(0xffF7DC6F), fontSize: 30.0),
//           )),
//       // The image is stored as a file on the device. Use the `Image.file`
//       // constructor with the given path to display the image.
//       body: Container(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//             Image.file(File(widget.imagePath), height: 350.0, width: 400.0),
//             SizedBox(
//               height: 50.0,
//             ),
//             RaisedButton(
//               onPressed: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           Classifier(imagepath: widget.imagePath))),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5.0),
//                   side: BorderSide(color: Color(0xffF7DC6F))),
//               color: Color(0xff196F3D),
//               textColor: Color(0xffF7DC6F),
//               padding: EdgeInsets.all(12.0),
//               child: Text('Confirm Image',
//                   style: TextStyle(fontFamily: 'Comfortaa')),
//             )
//           ])),
//     );
//   }

//   Future<void> classify(BuildContext context) async {
//     final imagepath = widget.imagePath;
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => Classifier(imagepath: imagepath)));
//   }
// }
