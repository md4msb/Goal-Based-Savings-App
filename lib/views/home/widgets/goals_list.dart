import 'package:fello_gbs/utils/asset_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../utils/common-widgets/fello_text.dart';
import '../../../utils/constants.dart';
import '../../goal-creation/cubit/goal_creation_cubit.dart';
import '../../goal-creation/goal_creation_screen.dart';
import '../cubit/home_page_cubit.dart';

class CreateGoalSection extends StatelessWidget {
  const CreateGoalSection({super.key, required this.cubit});

  final HomePageCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: FelloText(FelloStrings.savingsGoalTitle),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => BlocProvider(
                      create: (context) => GoalCreationCubit(),
                      child: const GoalCreationScreen(),
                    ));
              },
              child: Container(
                margin: const EdgeInsets.only(right: 15),
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFa48942), FelloColors.darkColor],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    border: Border.all(color: const Color(0xFF26252c)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 15),
                      child: FelloText(FelloStrings.iphoneGoal),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          FelloAssetImages.iphoneImage,
                          height: 85,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => BlocProvider(
                      create: (context) => GoalCreationCubit(),
                      child: const GoalCreationScreen(),
                    ));
              },
              child: Container(
                margin: const EdgeInsets.only(right: 15),
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    color: FelloColors.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: FelloText(FelloStrings.bikeGoal),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
