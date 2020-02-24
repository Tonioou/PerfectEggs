import 'package:flutter/material.dart';
import 'package:perfecteggs/blocs/app.bloc.dart';
import 'package:perfecteggs/widgets/action-buttons.widget.dart';
import 'package:perfecteggs/widgets/eggs.widget.dart';
import 'package:perfecteggs/widgets/progress.widget.dart';
import 'package:perfecteggs/widgets/type-buttons.widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return Scaffold(
      body: Container(
          child: ListView(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            "Perfect Eggs",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Eggs(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TypeButtons(),
          ),
          Progress(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: ActionButtons(),
          ),
        ],
      )),
    );
  }
}
