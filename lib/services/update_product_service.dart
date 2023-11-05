import 'package:story_app/helper/api.dart';
import 'package:story_app/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      bady: {
        'title': title,
        ' price': price,
        'description': desc,
        ' image': image,
        'category': category
      },
    );
    return ProductModel.formJson(data);
  }
}
