import 'package:fello_gbs/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomeInitial());

  final userInfo = UserModel(
      name: 'Shuhaib',
      email: 'shuhaib.p@gmail.com',
      photo: 'https://i.stack.imgur.com/u7ee6.png?s=256&g=1');
}
