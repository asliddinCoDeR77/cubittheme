import 'package:cubittheme/models/order.dart';
import 'package:cubittheme/models/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<List<Order>> {
  OrderCubit() : super([]);

  void addOrder(List<Product> products) {
    final newOrder = Order(
      id: DateTime.now().toString(),
      products: products,
      date: DateTime.now(),
    );

    emit([...state, newOrder]);
  }
}
