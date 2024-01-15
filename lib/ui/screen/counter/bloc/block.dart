

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnblockpattern/ui/screen/counter/bloc/events.dart';
import 'package:learnblockpattern/ui/screen/counter/bloc/status.dart';

class CounterBlock extends Bloc<CountEvents,CounterSates>{

  int count=0;

  static CounterBlock get(BuildContext context)=>BlocProvider.of(context);
  @override
  CounterSates get initialState => throw IntialCounterStates();

  @override
  Stream<CounterSates> mapEventToState(CountEvents event)async* {
    if(event is IncrementCounterValu){
yield*  _changeValue("in");
    }
    if(event is DecrementCounterValu){
      yield*  _changeValue("de");
    }
  }


  Stream<CounterSates>  _changeValue(String s) async*{

    switch(s){
      case 'in':
        count++;
        break;
      case 'de':
        if(count!=0){
          count--;
        }
        break;
    }

    yield SuccessCounterStates();
  }

}