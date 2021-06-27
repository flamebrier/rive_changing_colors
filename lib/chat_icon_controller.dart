import 'package:rive/rive.dart';

class ChatIconController extends SimpleAnimation {
  ChatIconController(String animationName) : super(animationName);

  @override
  bool init(RuntimeArtboard artboard) {
    return super.init(artboard);
  }

  @override
  void apply(RuntimeArtboard artboard, double elapsedSeconds) {
    if (instance == null || !instance!.keepGoing) {
      isActive = false;
    }
  }
}
