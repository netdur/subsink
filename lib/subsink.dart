library subsink;

import 'dart:async';

/// A class that manages a list of `StreamSubscription` objects.
///
/// The `SubSink` class provides a way to add, set, and cancel `StreamSubscription` objects.
class SubSink {
  /// The list of `StreamSubscription` objects managed by this `SubSink`.
  final List<StreamSubscription> _subs = [];

  /// Adds a `StreamSubscription` object to the list managed by this `SubSink`.
  void add(StreamSubscription sub) => _subs.add(sub);

  /// Sets the `StreamSubscription` object for this `SubSink`.
  /// This is equivalent to calling `add` with the given `sub` parameter.
  set sink(StreamSubscription sub) => _subs.add(sub);

  /// Cancels all the `StreamSubscription` objects in the list managed by this `SubSink`.
  void cancel() {
    _subs.forEach((it) => it.cancel());
    _subs.clear();
  }

  /// The number of `StreamSubscription` objects in the list managed by this `SubSink`.
  get length => _subs.length;
}
