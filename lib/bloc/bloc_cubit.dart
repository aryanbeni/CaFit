import 'package:bloc/bloc.dart';

import 'bloc_state.dart';

class NavCubit extends Cubit<NavState> {
  NavCubit() : super(NavState(0));

  void tapNav(int index) {
    emit(NavState(index));
  }
}
