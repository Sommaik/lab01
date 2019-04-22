import 'package:bloc/bloc.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increase:
        yield this.currentState + 1;
        break;
      case CounterEvent.declease:
        yield this.currentState - 1;
        break;
    }
  }
}
