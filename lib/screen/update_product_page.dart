// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:story_app/widget/appbar_widget.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});
  static String id = 'update product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buliderappBar(text: 'Update Product', color: Colors.transparent),
    );
  }
}
