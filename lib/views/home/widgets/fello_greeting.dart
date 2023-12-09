import 'package:flutter/material.dart';

import '../../../utils/common-widgets/fello_text.dart';
import '../../../utils/constants.dart';
import '../cubit/home_page_cubit.dart';

class FelloGreeting extends StatelessWidget {
  const FelloGreeting({super.key, required this.cubit});

  final HomePageCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          FelloText(
            "${FelloStrings.hi} ${cubit.userInfo.name}",
            size: FelloFontSize.title,
          ),
          const SizedBox(height: 5),
          const FelloText(
            FelloStrings.welcomeText,
            size: FelloFontSize.small,
          ),
        ],
      ),
    );
  }
}
