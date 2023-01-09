import 'dart:async';

/// A class representing an event with a message.
class Event {
  /// The message associated with this event.
  final String message;

  /// Creates a new `Event` with the given `message`.
  Event(this.message);

  @override
  String toString() => 'Event: $message';
}

/// A class that manages a stream of events.
///
/// The `EventBus` class provides a way to add events to the stream and listen to the stream of events.
class EventBus {
  /// The `StreamController` for the stream of events managed by this `EventBus`.
  final StreamController<Event> _eventController = StreamController<Event>();

  /// Returns the stream of events managed by this `EventBus`.
  dynamic on<Event>() {
    return _eventController.stream;
  }

  /// Adds an event to the stream managed by this `EventBus`.
  void fire(Event event) {
    _eventController.add(event);
  }
}
