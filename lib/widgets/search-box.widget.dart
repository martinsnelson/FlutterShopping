import 'package:flutter/material.dart';
import 'package:shopping/widgets/animated-input.widget.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool menuOpened = false;

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 1,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AnimatedInput(
          controller: _animationController,
        ),
        FlatButton(
          onPressed: () {
            !menuOpened
                ? _animationController.forward()
                : _animationController.reverse();
            menuOpened = !menuOpened;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _animationController,
            semanticLabel: 'Open Menu',
          ),
        ),
      ],
    );
    // return Container(
    //   height: 60,
    //   padding: EdgeInsets.only(
    //     left: 20,
    //   ),
    //   decoration: BoxDecoration(
    //     // red, gree, blue
    //     // color: Colors.black.withOpacity(0.1),
    //     color: Color.fromRGBO(0, 0, 0, 0.1),
    //     borderRadius: BorderRadius.all(
    //       Radius.circular(128),
    //     ),
    //   ),
    //   child: Row(
    //     children: <Widget>[
    //       Icon(Icons.search),
    //       Container(
    //         width: 285,
    //         padding: EdgeInsets.only(left: 10),
    //         child: TextFormField(
    //           keyboardType: TextInputType.text,
    //           decoration: InputDecoration(
    //             border: InputBorder.none,
    //             labelText: "Search",
    //             labelStyle: TextStyle(
    //               color: Theme.of(context).primaryColor,
    //               fontWeight: FontWeight.w300,
    //               fontSize: 16,
    //             ),
    //           ),
    //           style: TextStyle(
    //             fontSize: 20,
    //             color: Theme.of(context).primaryColor,
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
