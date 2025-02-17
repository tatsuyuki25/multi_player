import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:multi_player/home/home_view_model.dart';
import 'package:multi_player/widgets/widget_state.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends ConsumerStatefulWidget {
  HomeScreen({
    HomeViewModel? model,
    super.key,
  }) : model = model ?? HomeViewModel();

  final HomeViewModel model;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with WidgetsBindingObserver, LifecycleMixin {
  late final _provider =
      NotifierProvider<HomeViewModel, HomeState>(() => widget.model);

  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(ref.read(_provider).uri)
      ..setPlaybackSpeed(ref.read(_provider).playbackSpeed)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(_provider.notifier)
          .setCurrentLifecycleState(WidgetsBinding.instance.lifecycleState);
    });
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    ref.read(_provider.notifier).setCurrentLifecycleState(state);
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _showSpeedMenu,
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Stack(
                children: [
                  _controller.value.isInitialized
                      ? Center(
                          child: AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          ),
                        )
                      : const CircularProgressIndicator(),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: InkWell(
                        onTap: _togglePlaying,
                        child: ref.watch(_provider).isPlaying
                            ? Icon(
                                Icons.pause,
                                size: 48,
                                color: Colors.white,
                              )
                            : null,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Gap(16),
          Container(
            width: double.infinity,
            height: 56,
            color: Colors.blue,
            child: Center(
              child: Text(
                ref.read(_provider.notifier).getLifecycleText(
                    ref.watch(_provider).currentLifecycleState),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 切換播放狀態
  void _togglePlaying() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
    ref.read(_provider.notifier).togglePlaying();
  }

  /// 顯示懸浮下拉選單
  Future<void> _showSpeedMenu() async {
    final playbackSpeeds = ref.read(_provider).playbackSpeeds;
    final format = NumberFormat('#.#X');
    final selectedSpeed = await showModalBottomSheet<double>(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final speed in playbackSpeeds)
              ListTile(
                title: Text(format.format(speed)),
                leading: speed == ref.read(_provider).playbackSpeed
                    ? Icon(Icons.check)
                    : null,
                onTap: () => Navigator.of(context).pop(speed),
              ),
          ],
        );
      },
    );
    if (selectedSpeed != null) {
      _controller.setPlaybackSpeed(selectedSpeed);
      ref.read(_provider.notifier).changePlaybackSpeed(selectedSpeed);
    }
  }
}
