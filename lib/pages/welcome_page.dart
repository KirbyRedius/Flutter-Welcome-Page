import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int backDuration = 1000;

    return Container(
      color: const Color.fromARGB(255, 32, 112, 179),
      child: Stack(
        children: [
          Animate(
            effects: [
              FadeEffect(
                duration: Duration(milliseconds: backDuration),
              ),
            ],
            child: Positioned(
              top: 50.h - 50.h / 2,
              left: 50.w - 80.w / 2,
              child: Container(
                width: 80.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 0),
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Animate(
            effects: [
              FadeEffect(
                delay: Duration(
                  milliseconds: backDuration,
                ),
                duration: Duration(milliseconds: 500),
              ),
            ],
            child: Positioned(
              top: 23.h,
              left: 50.w - 50.w / 2,
              child: Image.asset(
                "images/anime.gif",
                width: 50.w,
                height: 50.w,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Animate(
            effects: [
              FadeEffect(
                delay: Duration(
                  milliseconds: backDuration + 500,
                ),
                duration: Duration(milliseconds: 500),
              ),
            ],
            child: Positioned(
              top: 25.h,
              left: 50.w - 80.w / 2,
              child: Container(
                width: 80.w,
                height: 50.h,
                child: Align(
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      "App name",
                      style: TextStyle(
                        fontSize: 46.dp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Animate(
            effects: [
              FadeEffect(
                delay: Duration(
                  milliseconds: backDuration + 1000,
                ),
                duration: Duration(milliseconds: 500),
              ),
            ],
            child: Positioned(
              top: 33.h,
              left: 50.w - 70.w / 2,
              child: Container(
                width: 70.w,
                height: 50.h,
                child: Align(
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      "App description",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.dp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Animate(
            effects: [
              FadeEffect(
                delay: Duration(
                  milliseconds: backDuration + 1500,
                ),
                duration: Duration(milliseconds: 500),
              ),
            ],
            child: Positioned(
              top: 65.h,
              left: 50.w - 70.w / 2,
              child: Container(
                width: 70.w,
                height: 5.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    shadowColor: Colors.black,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      "Let's start",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.dp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
