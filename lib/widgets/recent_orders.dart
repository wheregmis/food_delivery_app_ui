import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/data/data.dart';
import 'package:food_delivery_app_ui/models/order.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({Key key}) : super(key: key);

  _buildRecentOrder(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 320.0,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Recent Orders',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
        Container(
          height: 120,
          color: Colors.blue,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders.length,
              itemBuilder: (BuildContext ctx, int index) {
                Order order = currentUser.orders[index];
                return _buildRecentOrder(ctx, index);
              }),
        )
      ],
    );
  }
}
