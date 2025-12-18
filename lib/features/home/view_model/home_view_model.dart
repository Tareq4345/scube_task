import 'package:flutter_riverpod/legacy.dart';
import 'package:scube_task/features/home/model/home_ui_state.dart';

class HomeViewModel extends StateNotifier<HomeUiState> {
  HomeViewModel() : super(const HomeUiState());

  void onTabChanged(ScmTab tab) {
    state = state.copyWith(activeTab: tab);
  }

  void onPowerTypeChanged(PowerType type) {
    state = state.copyWith(powerType: type);
  }
}

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeUiState>(
  (ref) => HomeViewModel(),
);