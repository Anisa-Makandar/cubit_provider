import 'package:bloc_provider/domain/cubit_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Counter App'),
        centerTitle: true,
      ),
      body: BlocBuilder<CubitCounter, int>(builder: (ctx, State) {
        return Center(
          child: Text(
            // '${context.watch<CubitCounter>().state}',
            '$State',
            style: TextStyle(fontSize: 30),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CubitCounter>().incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
