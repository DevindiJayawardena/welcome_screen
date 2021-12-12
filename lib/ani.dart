import 'package:animated_check/animated_check.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));

    _animation = new Tween<double>(begin: 0, end: 1).animate(
        new CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOutCirc ),
        );
  }

  Widget animatedIcon(){
    return Container(
      child: Icon(
        Icons.play_pause,
      ),
    );
    icon: AnimatedIcons.play_pause,
    progress: iconController,   // a animation controller is need to control icon animation
    size: 150,
    color: Colors.green,
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animated Check Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(color: Colors.amber),
                  //border:  Border(color: Colors.pinkAccent ),
                ),
                child: AnimatedCheck(
                  progress: _animation,
                  color: Colors.amber,
                  size: 50,
                ),
              ),

              TextButton(
                  child: Text("Check"),
                  onPressed: _animationController.forward,
              ),

              TextButton(
                  child: Text("Reset"), onPressed: _animationController.reset,
              ),
            ],
          ),
        ),
    );
  }
}

