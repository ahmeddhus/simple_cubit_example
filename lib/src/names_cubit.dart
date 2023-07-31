import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cubit_example/src/iterable_extension.dart';

const names = [
  'Foo',
  'Bar',
  'Baz',
];

/// [Cubits] is kinda an abstract layer above [Streams] and [StreamControllers]
class NamesCubit extends Cubit<String?> {
  /// [Cubit] and [BloC] must has an initial value for the state.
  NamesCubit() : super(null);

  /// [emits] is the way to produce a new [value]/[state].
  void pickRandomName() => emit(
        names.getRandomElement(),
      );
}
