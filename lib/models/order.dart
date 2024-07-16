import 'package:cubittheme/models/product.dart';
import 'package:equatable/equatable.dart';

class Order extends Equatable {
  final String id;
  final List<Product> products;
  final DateTime date;

  Order({
    required this.id,
    required this.products,
    required this.date,
  });

  @override
  List<Object> get props => [id, products, date];
}
