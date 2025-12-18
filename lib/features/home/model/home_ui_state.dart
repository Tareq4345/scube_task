
import 'package:flutter/material.dart';

enum ScmTab { summary, sld, data }
enum PowerType { source, load }

@immutable
class HomeUiState {
  final ScmTab activeTab;
  final PowerType powerType;

  const HomeUiState({
    this.activeTab = ScmTab.summary,
    this.powerType = PowerType.source,
  });

  HomeUiState copyWith({
    ScmTab? activeTab,
    PowerType? powerType,
  }) {
    return HomeUiState(
      activeTab: activeTab ?? this.activeTab,
      powerType: powerType ?? this.powerType,
    );
  }
}