import 'package:fello_gbs/views/goal-creation/cubit/goal_creation_cubit.dart';
import 'package:flutter/material.dart';
import '../../../utils/common-widgets/fello_text.dart';
import '../../../utils/constants.dart';

class GoalAmountStep extends StatelessWidget {
  const GoalAmountStep({super.key, required this.cubit});

  final GoalCreationCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FelloText(
                "How much do you \nwant to save?",
                size: FelloFontSize.title,
              ),
              const FelloText(
                "People usually save 1L - 1.5L for iPhone",
                size: FelloFontSize.small,
              ),
              const SizedBox(height: 10),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: const Color(0xFF17181c),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFF30303a))),
                child: Center(
                  child: FelloText(
                    "₹${cubit.goalAmount.toString()}",
                    size: FelloFontSize.large,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Slider(
            value: cubit.goalAmount.toDouble(),
            onChanged: (value) {
              cubit.setGoalAmount(value);
            },
            min: 10000,
            max: 300000,
            divisions: (300000 - 10000) ~/ 5000,
            activeColor: FelloColors.primary,
            thumbColor: FelloColors.white,
            inactiveColor: const Color(0xFF30303a),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 300,
          decoration: const BoxDecoration(
              color: Color(0xFF064636),
              gradient: LinearGradient(
                colors: [Color(0xFF064636), FelloColors.darkColor],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(80))),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  cubit.nextPage();
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: FelloColors.primary,
                      border: Border.all(
                          color: FelloColors.darkColor,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          width: 5)),
                  child: const Icon(Icons.arrow_forward, color: FelloColors.white,),        
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
