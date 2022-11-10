import 'package:flame/components.dart';
import 'package:syzygy/components/card.dart';
import 'package:syzygy/klondike_game.dart';

class StockPile extends PositionComponent {
  StockPile({super.position}) : super(size: KlondikeGame.cardSize);

  final List<Card> _cards = [];

  void acquireCard(Card card) {
    assert(!card.isFaceUp);
    card.position = position;
    card.priority = _cards.length;
    _cards.add(card);
  }
}
