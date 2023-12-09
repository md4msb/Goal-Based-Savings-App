import 'package:fello_gbs/views/goal-creation/cubit/goal_creation_cubit.dart';
import 'package:flutter/material.dart';
import '../../../utils/common-widgets/fello_text.dart';
import '../../../utils/constants.dart';

class GoalFinalStep extends StatelessWidget {
  const GoalFinalStep({super.key, required this.cubit});

  final GoalCreationCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FelloText(
            "Let's get Started on \nyour iPhone goal!",
            size: FelloFontSize.title,
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFF30303a))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FelloText(
                      "Monthly Installment :",
                      color: FelloColors.white.withOpacity(0.7),
                    ),
                    const SizedBox(height: 10),
                    FelloText(
                      "Duration of the goal :",
                      color: FelloColors.white.withOpacity(0.7),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FelloText(
                      "₹${cubit.installment}",
                      fontWeight: FontWeight.w500,
                      color: FelloColors.white.withOpacity(0.8),
                    ),
                    const SizedBox(height: 10),
                    FelloText(
                      "${cubit.goalDuration} ${FelloStrings.monthText}",
                      fontWeight: FontWeight.w500,
                      color: FelloColors.white.withOpacity(0.8),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
