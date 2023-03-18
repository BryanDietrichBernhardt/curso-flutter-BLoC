import 'dart:async';

class HomePageBloc {
  // sink = fluxo de entrada
  StreamController<int> valorSink = StreamController();

  // stream = fluxo de saida
  Stream<int> get valorStream => valorSink.stream;

  HomePageBloc() {
    valorSink.add(0);
  }

  dispose() {
    valorSink.close();
  }
}
