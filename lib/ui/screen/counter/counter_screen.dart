import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnblockpattern/ui/screen/counter/bloc/events.dart';
import 'package:learnblockpattern/ui/screen/counter/bloc/status.dart';

import 'bloc/block.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBlock>(
      create: (BuildContext context) => CounterBlock(),
      child: BlocConsumer<CounterBlock, CounterSates>(
        listener: (BuildContext context, CounterSates state) {
          if(state is SuccessCounterStates){
            print("success");
          }
        },
        builder: (BuildContext context, CounterSates state) {
          int count=CounterBlock.get(context).count;
          return   Scaffold(
            appBar: AppBar(
              title: Text(
                "Counter Block",
              ),
              backgroundColor: Colors.teal,
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      CounterBlock.get(context).add(IncrementCounterValu());
                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    count.toString(),
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.remove),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );

  }
}
