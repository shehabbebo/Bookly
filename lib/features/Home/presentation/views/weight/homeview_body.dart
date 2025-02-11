import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/Home/presentation/views/weight/CustomAppBar.dart';
import 'package:bookly/features/Home/presentation/views/weight/CustomListView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        FeatureBooksListView(),
      ],
    );
  }
}

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FeatureListViewItem(),
          );
        },
      ),
    );
  }
}
