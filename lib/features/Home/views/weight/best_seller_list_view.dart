import 'package:bookly/features/Home/views/weight/best_Seller_itemView.dart';
import 'package:flutter/material.dart';

class BestSellerlistView extends StatelessWidget {
  const BestSellerlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(),
          );
        });
  }
}
