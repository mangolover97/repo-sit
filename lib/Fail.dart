import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';


class Fail extends StatelessWidget {
  final Color primaryColor = Color(0xFFE1F5FE);
  final Color secondaryColor = Color(0xFFB3E5FC);
  final Color logoGreen = Color(0xFF03A9F4);


  @override
  Widget build(BuildContext context) {
    var google;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: primaryColor,
        body:


        Container(
          alignment: Alignment.topCenter,

          margin: EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: () async {
                  //return   Login();
                  Navigator.pop(context);

                },
                color: logoGreen,
                child: Text('Incorrect Email or Password, try again.',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                textColor: Colors.black,
              ),


               // _buildFooterLogo()


              ],
            ),
          ),
        ));
  }






  _buildFooterLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
            'images/sit.png',
            height: 180
        ),




      ],
    );


  }


  _buildTextField(
      TextEditingController controller, IconData icon, String labelText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: secondaryColor, border: Border.all(color: Colors.lightBlue)),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.black),
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            // prefix: Icon(icon),
            border: InputBorder.none),
      ),
    );
  }
}



