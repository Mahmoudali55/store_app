import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:story_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String category_name}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$category_name'));
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.formJson(data[i]));
    }
    return productsList;
  }
}
