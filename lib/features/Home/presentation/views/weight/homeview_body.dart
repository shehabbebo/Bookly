import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/weight/CustomAppBar.dart';
import 'package:bookly/features/Home/presentation/views/weight/best_seller_list_view.dart';
import 'package:bookly/features/Home/presentation/views/weight/featurelistView.dart';
import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeatureBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: styles.TextStyle18,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerlistView(),
          ),
        )
      ],
    );
  }
}
