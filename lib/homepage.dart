import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  Future<void> _handleRefresh() async {
    //here for realoading of data will take 2 sec of time
    return await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        animSpeedFactor: 2,
        height: 250,
        showChildOpacityTransition: true,
        backgroundColor: Colors.yellow,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 250,
                  color: Colors.lightBlue,
                  child: const Padding(
                    padding: EdgeInsets.all(100.0),
                    child: Text(
                      "Just A Simple ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 250,
                  color: Colors.lightBlue,
                  child: const Padding(
                    padding: EdgeInsets.all(100.0),
                    child: Text(
                      " Fancy ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 250,
                  color: Colors.lightBlue,
                  child: const Padding(
                    padding: EdgeInsets.all(80.0),
                    child: Text(
                      "Refreshing Style    👨‍💻",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
