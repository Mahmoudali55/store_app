// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:story_app/widget/appbar_widget.dart';
import 'package:story_app/widget/custom_textfield.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});
  static String id = 'update product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buliderappBar(text: 'Update Product', color: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomFormTextField(
              hintText: 'Product Name',
            ),
            SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: 'Product price',
            ),
            SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: 'Product decrption',
            ),
            SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: 'Product image',
            ),
          ],
        ),
      ),
    );
  }
}
