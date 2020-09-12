import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/WeatherBloc.dart';
import 'package:weather_app/repo/WeatherRepo.dart';

import 'SearchPage.dart';

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      body: BlocProvider(
        create: (context) => WeatherBloc(WeatherRepo()),
        child: SearchPage(),
      ),),
    );
  }
}
