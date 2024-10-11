import 'package:flutter/material.dart';
import 'package:myweather/widgets/bottom_bar.dart';
import 'package:myweather/widgets/weather_days.dart';
import 'package:myweather/widgets/weather_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
        title: const Text(
          'Boa noite, User',
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), // Adjust the opacity as needed
                BlendMode.darken,
              ),
              child: const Image(
                image: AssetImage('assets/images/afternoon.jpg'), //TODO mudar a imagem de ACORDO com o clima/hora
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WeatherInfo(),
                  WeatherDays(),
                  BottomBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
