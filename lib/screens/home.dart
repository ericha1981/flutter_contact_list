import 'package:flutter/material.dart';
import 'contact_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact List',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Contacts'),
        ),
        body: ContactList(),
      ),
    );
  }
}
