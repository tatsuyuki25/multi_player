import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_model.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required Uri uri,
    required double playbackSpeed,
    required bool isPlaying,
    required List<double> playbackSpeeds,
    AppLifecycleState? currentLifecycleState,
  }) = _HomeState;
}

class HomeViewModel extends Notifier<HomeState> {
  @override
  HomeState build() {
    return HomeState(
      uri: Uri.parse('https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8'),
      playbackSpeed: 1.0,
      isPlaying: false,
      playbackSpeeds: [0.5, 1.0, 1.5, 2.0],
    );
  }

  /// 切換播放狀態
  void togglePlaying() {
    state = state.copyWith(isPlaying: !state.isPlaying);
  }

  /// 切換播放速度
  void changePlaybackSpeed(double speed) {
    state = state.copyWith(playbackSpeed: speed);
  }

  /// 設定目前生命週期狀態
  void setCurrentLifecycleState(AppLifecycleState? currentState) {
    state = state.copyWith(currentLifecycleState: currentState);
  }

  String getLifecycleText(AppLifecycleState? currentState) {
    if (currentState == null) {
      return 'Unknown';
    }
    return switch (currentState) {
      AppLifecycleState.resumed => '播放程式取得焦點',
      AppLifecycleState.inactive => '播放程式失去焦點',
      _ => 'Unknown',
    };
  }
}
