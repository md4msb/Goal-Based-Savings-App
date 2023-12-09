import 'package:fello_gbs/views/goal-creation/cubit/goal_creation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/common-widgets/fello_text.dart';
import '../../../utils/constants.dart';

class GoalCreationAppBar extends StatelessWidget {
  const GoalCreationAppBar({super.key, required this.cubit});

  final GoalCreationCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              cubit.onPressBack();
            },
            child: const Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: FelloColors.white,
                  size: 16,
                ),
                SizedBox(width: 5),
                FelloText(FelloStrings.navBackText)
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: const SizedBox(
              height: 20,
              width: 20,
              child: Icon(
                Icons.close_rounded,
                color: FelloColors.white,
                size: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
