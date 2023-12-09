import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
part 'goal_creation_state.dart';

class GoalCreationCubit extends Cubit<GoalCreationState> {
  GoalCreationCubit() : super(GoalCreationInitial());

  final PageController pageController = PageController();

  int goalAmount = 10000;
  int goalDuration = 3;
  double installment = 0.0;

  void setGoalAmount(double value) {
    goalAmount = value.round();
    emit(SuccessState());
  }

  void setGoalDuration(double value) {
    goalDuration = value.round();
    emit(SuccessState());
  }

  void calculateIntallments() {
    installment = (goalAmount / goalDuration).roundToDouble();
  }

  void nextPage() {
    if (pageController.page! < 2) {
      if (pageController.page! == 1) {
        calculateIntallments();
      }
      pageController.nextPage(
          duration: const Duration(milliseconds: 700), curve: Curves.ease);
    } else {
      // Handle final step logic, e.g., show result
    }
  }

  void onPressBack() {
    if (pageController.page! == 0) {
      Get.back();
    } else {
      pageController.previousPage(
          duration: const Duration(milliseconds: 700), curve: Curves.ease);
    }
  }
}
