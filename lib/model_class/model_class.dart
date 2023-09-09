import 'dart:convert';

class HomeProducts {
  final String name;
  final String variations;
  final double price;
  HomeProducts({
    required this.name,
    required this.variations,
    required this.price,
  });

  HomeProducts copyWith({
    String? name,
    String? variations,
    double? price,
  }) {
    return HomeProducts(
      name: name ?? this.name,
      variations: variations ?? this.variations,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'variations': variations});
    result.addAll({'price': price});

    return result;
  }

  factory HomeProducts.fromMap(Map<String, dynamic> map) {
    return HomeProducts(
      name: map['name'] ?? '',
      variations: map['variations'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeProducts.fromJson(String source) =>
      HomeProducts.fromMap(json.decode(source));

  @override
  String toString() =>
      'HomeProducts(name: $name, variations: $variations, price: $price)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomeProducts &&
        other.name == name &&
        other.variations == variations &&
        other.price == price;
  }

  @override
  int get hashCode => name.hashCode ^ variations.hashCode ^ price.hashCode;
}

final HomeProductsList = [
  HomeProducts(name: "benz", variations: " ", price: 333),
  HomeProducts(name: "benz", variations: " ", price: 433),
  HomeProducts(name: "benz", variations: " ", price: 533),
  HomeProducts(name: "benz", variations: " ", price: 633),
  HomeProducts(name: "benz", variations: " ", price: 733),
  HomeProducts(name: "benz", variations: " ", price: 833),
  HomeProducts(name: "benz", variations: " ", price: 933),
  HomeProducts(name: "benz", variations: " ", price: 9933),
  HomeProducts(name: "benz", variations: " ", price: 8833),
   HomeProducts(name: "benz", variations: " ", price: 9933),
  HomeProducts(name: "benz", variations: " ", price: 8833), HomeProducts(name: "benz", variations: " ", price: 9933),
  HomeProducts(name: "benz", variations: " ", price: 8833), HomeProducts(name: "benz", variations: " ", price: 9933),
  HomeProducts(name: "benz", variations: " ", price: 8833),
];
