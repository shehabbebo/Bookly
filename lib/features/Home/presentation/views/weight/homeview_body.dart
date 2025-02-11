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
        CustomListViewItem(),
      ],
    );
  }
}
