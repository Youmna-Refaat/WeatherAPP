import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF9fbde6),
        title: const Text(
          'Seacrh City',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 150),
          child: Column(
            children: [
              Image.asset(
                'assets/images/weather.png',
                height: 200,
              ),
              const SizedBox(
                height: 80,
              ),
              TextField(
                onSubmitted: (value) async {
                  var getWeathercubit =
                      BlocProvider.of<GetWeatherCubit>(context);
                  getWeathercubit.getWeather(cityName: value);
                  Navigator.pop(context);
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 16,
                    ),
                    labelText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Color(0xFF9fbde6)),
                    ),
                    hintText: 'Enter City Name',
                    suffixIcon: const Icon(
                      Icons.search,
                    ),
                    suffixIconColor: Colors.black,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Color(0xFF9fbde6)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xFF9fbde6),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
