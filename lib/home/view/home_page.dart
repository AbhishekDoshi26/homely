import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homely/home/home.dart';
import 'package:homely/services/shared_preferences_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        sharedPreferenceService: context.read<SharedPreferenceService>(),
      )..add(HomeGetSavedHomesEvent()),
      child: const HomeView(),
    );
  }
}
