import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/weight/CustomAppBar.dart';
import 'package:bookly/features/Home/presentation/views/weight/featurelistView.dart';
import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: styles.titleMedium,
          )
        ],
      ),
    );
  }
}
