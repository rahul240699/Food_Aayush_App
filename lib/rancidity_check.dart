import 'package:flutter/material.dart';
//import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_blue/flutter_blue.dart';

class Rancidity extends StatefulWidget {
  @override
  _Rancidity createState() => _Rancidity();
}

class _Rancidity extends State<Rancidity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7DC6F),
      appBar: AppBar(
        backgroundColor: Color(0xff196F3D),
        elevation: 0.0,
        title: Text('Oil Rancidity Check',
            style: TextStyle(
                fontFamily: 'Comfortaa',
                color: Color(0xffF7DC6F),
                fontSize: 30.0)),
      ),
    );
  }
}

// class BluetoothOffScreen extends StatelessWidget {
//   const BluetoothOffScreen({Key key, this.state}) : super(key: key);
//   final BluetoothState state;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Icon(
//               Icons.bluetooth_disabled,
//               size: 200,
//               color: Colors.black,
//             ),
//             Text(
//               'Bluetooth Adapter is ${state.toString().substring(15)}',
//               style: Theme.of(context)
//                   .primaryTextTheme
//                   .subtitle1
//                   .copyWith(color: Colors.black),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
