import 'package:fello_gbs/utils/constants.dart';
import 'package:fello_gbs/views/goal-creation/cubit/goal_creation_cubit.dart';
import 'package:fello_gbs/views/goal-creation/widgets/goal_duration_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/goal_creation_appbar.dart';
import 'widgets/goal_amount_step.dart';
import 'widgets/goal_final_step.dart';

class GoalCreationScreen extends StatelessWidget {
  const GoalCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<GoalCreationCubit>(context);
    return Scaffold(
      backgroundColor: FelloColors.darkColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoalCreationAppBar(cubit: cubit),
          const SizedBox(height: 200),
          Expanded(child: BlocBuilder<GoalCreationCubit, GoalCreationState>(
              builder: (context, state) {
            return PageView(
              controller: cubit.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                GoalAmountStep(cubit: cubit),
                GoalDurationStep(cubit: cubit),
                GoalFinalStep(cubit: cubit),
              ],
            );
          }))
        ],
      )),
    );
  }
}
