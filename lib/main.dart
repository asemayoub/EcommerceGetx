import 'package:ecommercegetx/view/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: LoginScreen(),

      // Set Theme Data
      theme: ThemeData(

        // Set App Bar Stryle

        appBarTheme: AppBarTheme(

          color:Colors.white,
          elevation: 0,

          // Set Text Color App Bat

          titleTextStyle: TextStyle(
            color: Colors.black,
          ),

          // Set Status Style

          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(

            statusBarColor: Colors.white,


          ),

          // End Status Style


        ),




      ),

    ) ;
  }
}

