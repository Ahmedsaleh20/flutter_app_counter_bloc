import 'package:flutter_app_bloc1/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,int>{
  int count = 0;
  CounterBloc(this.count) : super(count);

  @override
  Stream<int> mapEventToState(CounterEvent event) async*{
    switch(event){
      case CounterEvent.INCREMENT:
        yield count++;
        break;


        case CounterEvent.DECREMENT:
         yield count --;
        break;
    }

  }

}