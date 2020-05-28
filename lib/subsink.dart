library subsink;

import 'dart:async';

class SubSink {

  final List<StreamSubscription> _subs = [];

  void add(StreamSubscription sub) => _subs.add(sub);

  set sink(StreamSubscription sub) => _subs.add(sub);

  void cancel() {
    _subs.forEach((it) => it.cancel());
    _subs.clear();
  }

  get length => _subs.length;

}
