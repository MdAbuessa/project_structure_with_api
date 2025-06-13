import 'dart:convert';

class RecipieProductModel {
  int? id;
  List<Product>? products;
  double? total;
  double? discountedTotal;
  int? userId;
  int? totalProducts;
  int? totalQuantity;

  RecipieProductModel({
    this.id,
    this.products,
    this.total,
    this.discountedTotal,
    this.userId,
    this.totalProducts,
    this.totalQuantity,
  });

  RecipieProductModel copyWith({
    int? id,
    List<Product>? products,
    double? total,
    double? discountedTotal,
    int? userId,
    int? totalProducts,
    int? totalQuantity,
  }) =>
      RecipieProductModel(
        id: id ?? this.id,
        products: products ?? this.products,
        total: total ?? this.total,
        discountedTotal: discountedTotal ?? this.discountedTotal,
        userId: userId ?? this.userId,
        totalProducts: totalProducts ?? this.totalProducts,
        totalQuantity: totalQuantity ?? this.totalQuantity,
      );

  factory RecipieProductModel.fromRawJson(String str) =>
      RecipieProductModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RecipieProductModel.fromJson(Map<String, dynamic> json) =>
      RecipieProductModel(
        id: json["id"],
        products: json["products"] == null
            ? []
            : List<Product>.from(
                json["products"]!.map((x) => Product.fromJson(x))),
        total: json["total"]?.toDouble(),
        discountedTotal: json["discountedTotal"]?.toDouble(),
        userId: json["userId"],
        totalProducts: json["totalProducts"],
        totalQuantity: json["totalQuantity"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "total": total,
        "discountedTotal": discountedTotal,
        "userId": userId,
        "totalProducts": totalProducts,
        "totalQuantity": totalQuantity,
      };
}

class Product {
  int? id;
  String? title;
  double? price;
  int? quantity;
  double? total;
  double? discountPercentage;
  double? discountedTotal;
  String? thumbnail;

  Product({
    this.id,
    this.title,
    this.price,
    this.quantity,
    this.total,
    this.discountPercentage,
    this.discountedTotal,
    this.thumbnail,
  });

  Product copyWith({
    int? id,
    String? title,
    double? price,
    int? quantity,
    double? total,
    double? discountPercentage,
    double? discountedTotal,
    String? thumbnail,
  }) =>
      Product(
        id: id ?? this.id,
        title: title ?? this.title,
        price: price ?? this.price,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        discountPercentage: discountPercentage ?? this.discountPercentage,
        discountedTotal: discountedTotal ?? this.discountedTotal,
        thumbnail: thumbnail ?? this.thumbnail,
      );

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        quantity: json["quantity"],
        total: json["total"]?.toDouble(),
        discountPercentage: json["discountPercentage"]?.toDouble(),
        discountedTotal: json["discountedTotal"]?.toDouble(),
        thumbnail: json["thumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "quantity": quantity,
        "total": total,
        "discountPercentage": discountPercentage,
        "discountedTotal": discountedTotal,
        "thumbnail": thumbnail,
      };
}
