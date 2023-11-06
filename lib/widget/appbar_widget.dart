// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar buliderappBar(
    {required String text, @required IconData? icon, required Color color}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      text,
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    actions: [IconButton(onPressed: () {}, icon: Icon(icon))],
  );
}
