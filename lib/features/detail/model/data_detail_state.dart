

enum RadioType { dataView, review }
enum RadioTypeSecond { today, customeDate }

class DataDetailState {
  final RadioType radioType;
  final RadioTypeSecond radioTypeSecond;

  const DataDetailState({
    required this.radioType,
    required this.radioTypeSecond,
  });

  DataDetailState copyWith({
    RadioType? radioType,
    RadioTypeSecond? radioTypeSecond,
  }) {
    return DataDetailState(
      radioType: radioType ?? this.radioType,
      radioTypeSecond: radioTypeSecond ?? this.radioTypeSecond,
    );
  }
}

