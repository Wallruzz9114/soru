import 'package:flutter/material.dart';

class Soru extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) => MaterialApp(
        title: 'BuddiesGram',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          dialogBackgroundColor: Colors.black,
          primarySwatch: Colors.grey,
          cardColor: Colors.white70,
          accentColor: Colors.black,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Welcome to Soru',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Center(
            child: Text(
              'Hello World',
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
        ),
      );
}
