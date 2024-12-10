import 'package:task2_level1/gen/assets.gen.dart';

class ProductModel {
  final String title;
  final String description;
  final AssetGenImage imagePath;
  final double oldPrice;
  final double newPrice;
  final String expiryDate;
  final String brandName;
  final String brandDescription;

  ProductModel({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.oldPrice,
    required this.newPrice,
    required this.expiryDate,
    required this.brandName,
    required this.brandDescription,
  });
}
