import 'package:flutter_test/flutter_test.dart';

import 'package:subsink/subsink.dart';

import 'number_creator.dart';

void main() {
  final SubSink subSink = new SubSink();
  final NumberCreator nc1 = new NumberCreator();
  final NumberCreator nc2 = new NumberCreator();

  test('add subs', () {
    subSink.sink = nc1.stream.listen((event) {
      print("nc1 = $event");
    });

    expect(subSink.length, 1);

    subSink.sink = nc2.stream.listen((event) {
      print("nc2 = $event");
    });

    expect(subSink.length, 2);
  });

  test('cancel subs', () {
    subSink.cancel();
    expect(subSink.length, 0);
  });
}
