import 'package:syzygy/klondike_game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/foundation.dart';

@immutable
class Suit {
  factory Suit.fromInt(int index) {
    assert(index >= 0 && index <= 3);
    return _singletons[index];
  }

  Suit._(this.value, this.label, double x, double y, double w, double h)
      : sprite = klondikeSprite(x, y, w, h);

  final int value;
  final String label;
  final Sprite sprite;

  static late final List<Suit> _singletons = [
    Suit._(0, '♥', 1178, 18, 172, 182),
    Suit._(1, '♦', 975, 14, 177, 182),
    Suit._(2, '♣', 976, 227, 183, 171),
    Suit._(3, '♠', 1180, 221, 176, 181),
  ];

  bool get isRed => value <= 1;
  bool get isBlack => value >= 2;
}
