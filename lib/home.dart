import 'package:flutter/material.dart';
import 'package:flutter_app_bloc1/counter_bloc.dart';
import 'package:flutter_app_bloc1/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CounterBloc,int>(
            builder: (context, state) => Row(
                  children: [
                    ElevatedButton(onPressed: () {
                      counterBloc.add(CounterEvent.DECREMENT);
                    }, child: Icon(Icons.remove)),
                    Text(
                      '$state',
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        counterBloc.add(CounterEvent.INCREMENT);
                      },
                      child: Icon(Icons.add),
                    )
                  ],
                )),
      ),
    );
  }
}
