# SubSink

Stream subscription sink for canceling gracefully in a component.

SubSink is a dead simple class to absorb stream subscriptions in an array.

Call cancel() to unsubscribe all of them, as you would do in your widget's dispose lifecycle event.

## Getting Started

```
class _AppLifecycleReactorState extends State<AppLifecycleReactor> {

  final SubSink subSink = new SubSink();
  final NumberCreator nc1 = new NumberCreator();
  final NumberCreator nc2 = new NumberCreator();

  @override
  void initState() {
    super.initState();

    subSink.sink = nc1.stream.listen((event) {
      print("nc1 = $event");
    });

    subSink.sink = nc2.stream.listen((event) {
      print("nc2 = $event");
    });
  }

  @override
  void dispose() {
    subSink.cancel();
    super.dispose();
  }

}

```
