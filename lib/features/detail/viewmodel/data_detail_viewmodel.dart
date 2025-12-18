import 'package:flutter_riverpod/legacy.dart';
import 'package:scube_task/features/detail/model/data_detail_state.dart';

class DataDetailViewModel extends StateNotifier<DataDetailState> {
  DataDetailViewModel()
      : super(const DataDetailState(
          radioType: RadioType.dataView,
          radioTypeSecond: RadioTypeSecond.today,
        ));

  void changeRadioType(RadioType value) {
    state = state.copyWith(radioType: value);
  }

  void changeSecondRadioType(RadioTypeSecond value) {
    state = state.copyWith(radioTypeSecond: value);
  }
}

final dataDetailViewModelProvider =
    StateNotifierProvider<DataDetailViewModel, DataDetailState>(
  (ref) => DataDetailViewModel(),
);
