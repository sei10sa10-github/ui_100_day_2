import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:supercharged/supercharged.dart';
import 'package:ui_100_day_2/services/destination_service.dart';
import 'package:ui_100_day_2/utils/fadein_animation.dart';
import 'models/destination.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme().copyWith(
          headline1: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w700,
            color: Colors.white70,
          ),
          headline2: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
          headline4: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.white70,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController;
  DestinationService _destinationService;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: true);
    _pageController.addListener(() {});
    _destinationService = DestinationService();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FutureBuilder(
        future: _destinationService.loadDestinations(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Destination>> snapshot) {
          if (snapshot.hasData) {
            final list = snapshot.data;
            return PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              itemCount: list.length,
              itemBuilder: (context, index) =>
                  getPage(context, list[index], index, list.length),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget getPage(
      BuildContext context, Destination destination, int index, int total) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(destination.image),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black87.withOpacity(.8),
              Colors.black87.withOpacity(.1),
            ],
            begin: Alignment.bottomRight,
            stops: [
              0.1,
              0.9,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: FadeinAnimation(
                    child: RichText(
                      text: TextSpan(
                        text: '${index + 1}',
                        style: Theme.of(context).textTheme.headline2,
                        children: [
                          TextSpan(
                            text: '/$total',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeinAnimation(
                      delay: 200.milliseconds,
                      child: Text(
                        destination.name,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    FadeinAnimation(
                      delay: 300.milliseconds,
                      child: Row(
                        children: [
                          RatingBar(
                              initialRating: destination.reviewRating,
                              maxRating: 5.0,
                              minRating: 0.0,
                              itemCount: 5,
                              itemSize: 14.0,
                              itemPadding: const EdgeInsets.all(3.0),
                              allowHalfRating: true,
                              ignoreGestures: true,
                              itemBuilder: (context, index) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                );
                              },
                              onRatingUpdate: (rating) {}),
                          Text(
                            '(${destination.reviewRating})',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    FadeinAnimation(
                      delay: 400.milliseconds,
                      child: Text(
                        destination.description,
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(height: 1.9),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    FadeinAnimation(
                      delay: 500.milliseconds,
                      child: Text(
                        'READ MORE',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(height: 1.9),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
