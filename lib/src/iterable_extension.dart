import 'dart:math' as math show Random;

extension RandomElemnt<T> on Iterable<T> {
  T getRandomElement() => elementAt(math.Random().nextInt(length));
}
