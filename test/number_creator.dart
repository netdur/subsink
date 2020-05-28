import 'dart:async';

class NumberCreator {

  NumberCreator() {
    Timer.periodic(Duration(seconds: 1), (t) {
      _controller.sink.add(_count);
      _count++;
    });
  }

  var _count = 1;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;

  void close() => _controller.close();

}
