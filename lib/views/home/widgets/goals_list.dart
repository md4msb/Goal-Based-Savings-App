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
                    color: FelloColors.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: FelloText(FelloStrings.iphoneGoal),
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
