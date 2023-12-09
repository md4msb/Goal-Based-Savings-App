part of 'goal_creation_cubit.dart';

abstract class GoalCreationState {}

class GoalCreationInitial extends GoalCreationState {}

class LoadingState extends GoalCreationState {}

class SuccessState extends GoalCreationState {}

class ErrorState extends GoalCreationState {
  final String errorMessage;
  ErrorState(this.errorMessage);
}
