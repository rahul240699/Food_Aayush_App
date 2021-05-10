//import 'package:camera/camera.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:foodaayush/fresh.dart';

class HomeClass extends StatefulWidget {
  final User user;
  const HomeClass(this.user, {Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF7DC6F),
        appBar: AppBar(
          backgroundColor: Color(0xff196F3D),
          title: Text(
            'Menu',
            style: TextStyle(
                fontFamily: 'Comfortaa',
                color: Color(0xffF7DC6F),
                fontSize: 30.0),
          ),
        ),
        body: Container(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    height: 50,
                    width: 250,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/screen7');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Color(0xffF7DC6F))),
                      color: Color(0xff196F3D),
                      textColor: Color(0xffF7DC6F),
                      padding: EdgeInsets.all(12.0),
                      child: Text('Identify The Freshness',
                          style: TextStyle(fontFamily: 'Comfortaa')),
                    )),
                SizedBox(
                  height: 100.0,
                ),
                Container(
                    height: 50,
                    width: 250,
                    child: FlatButton(
                      onPressed: _launchURL,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Color(0xffF7DC6F))),
                      color: Color(0xff196F3D),
                      textColor: Color(0xffF7DC6F),
                      padding: EdgeInsets.all(12.0),
                      child: Text('Nutritional Analysis',
                          style: TextStyle(fontFamily: 'Comfortaa')),
                    )),
                SizedBox(
                  height: 100.0,
                ),
                Container(
                    height: 50,
                    width: 250,
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Color(0xffF7DC6F))),
                      color: Color(0xff196F3D),
                      textColor: Color(0xffF7DC6F),
                      padding: EdgeInsets.all(12.0),
                      child: Text('Rancidity of oil',
                          style: TextStyle(fontFamily: 'Comfortaa')),
                    )),
                SizedBox(
                  height: 100.0,
                ),
                Container(
                    height: 50,
                    width: 250,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/screen6');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Color(0xffF7DC6F))),
                      color: Color(0xff196F3D),
                      textColor: Color(0xffF7DC6F),
                      padding: EdgeInsets.all(12.0),
                      child: Text('About Us',
                          style: TextStyle(fontFamily: 'Comfortaa')),
                    ))
              ],
            )));
  }

  Future<void> fcam() async {
    //final cameras = await availableCameras();
    //Navigator.pushNamed(context, '/screen7');
    //Navigator.pushReplacementNamed(context, '/screen5');
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (BuildContext context) => Freshcam(
    //               camera: cameras.first,
    //             )));
  }
  _launchURL() async {
    const url = 'https://food-aayush.herokuapp.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}