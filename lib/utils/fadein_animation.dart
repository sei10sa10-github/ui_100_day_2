import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class FadeinAnimation extends StatelessWidget {
  final int duration;
  final Duration delay;
  final double opacityBegin;
  final double opacityEnd;
  final double translationBegin;
  final double translationEnd;
  final Widget child;

  final MultiTween<AniProps> _tween;

  FadeinAnimation({
    Key key,
    this.duration = 500,
    this.delay = const Duration(milliseconds: 0),
    this.opacityBegin = 0.0,
    this.opacityEnd = 1.0,
    this.translationBegin = 120,
    this.translationEnd = 0,
    this.child,
  })  : _tween = MultiTween<AniProps>()
          ..add(AniProps.translation, translationBegin.tweenTo(translationEnd),
              duration.milliseconds)
          ..add(AniProps.opacity, opacityBegin.tweenTo(opacityEnd),
              (duration + 500).milliseconds),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<MultiTweenValues<AniProps>>(
      tween: _tween,
      delay: delay,
      duration: _tween.duration,
      child: child,
      builder: (context, child, animationValue) {
        return Transform.translate(
          offset: Offset(
            0.0,
            animationValue.get(AniProps.translation),
          ),
          child: Opacity(
            opacity: animationValue.get(AniProps.opacity),
            child: child,
          ),
        );
      },
    );
  }
}

enum AniProps { opacity, translation }
