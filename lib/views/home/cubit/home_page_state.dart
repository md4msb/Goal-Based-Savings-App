part of 'home_page_cubit.dart';

abstract class HomePageState {}

class HomeInitial extends HomePageState {}

class LoadingState extends HomePageState {}

class SuccessState extends HomePageState {}

class ErrorState extends HomePageState {
  final String errorMessage;
  ErrorState(this.errorMessage);
}
