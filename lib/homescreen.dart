import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:googlesign/AuthServices.dart';
import 'package:googlesign/GoogleSignIn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        GestureDetector(
          onTap: () {
            AuthServices().googleSignOut();
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => GoogleSignin()));
          },
          child: CircleAvatar(
            backgroundImage: NetworkImage(user!.photoURL!),
          ),
        )
      ]),
      body: Center(
        child: Text("HomeScreen"),
      ),
    );
  }
}
