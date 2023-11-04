class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});
  factory ProductModel.formJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: RatingModel.formJson(jsonData['rating']));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.formJson(josnData) {
    return RatingModel(rate: josnData['rate'], count: josnData['count']);
  }
}