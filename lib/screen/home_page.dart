// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:story_app/models/product_model.dart';
import 'package:story_app/services/get_all_product_services.dart';
import 'package:story_app/widget/appbar_widget.dart';
import 'package:story_app/widget/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'Home page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buliderappBar(
          text: 'New Trand',
          icon: FontAwesomeIcons.cartPlus,
          color: Colors.black,
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
            child: FutureBuilder<List<ProductModel>>(
                future: GetAllProductsService().getAllProducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> products = snapshot.data!;
                    return GridView.builder(
                      itemCount: products.length,
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.5,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 100),
                      itemBuilder: (context, index) {
                        return CustomCard(
                          product: products[index],
                        );
                      },
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                })));
  }
}
