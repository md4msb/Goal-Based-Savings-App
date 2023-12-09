import 'package:fello_gbs/utils/asset_images.dart';
import 'package:fello_gbs/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/home_page_cubit.dart';
import 'widgets/fello_greeting.dart';
import 'widgets/goals_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return Scaffold(
      backgroundColor: FelloColors.secondary,
      appBar: AppBar(
        backgroundColor: FelloColors.secondary,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(FelloAssetImages.felloLogo, height: 35),
            CircleAvatar(
              backgroundImage: NetworkImage(cubit.userInfo.photo ?? ''),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FelloGreeting(cubit: cubit),
            CreateGoalSection(cubit: cubit)
          ],
        ),
      )),
    );
  }
}
