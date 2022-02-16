import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:profile_ui/utils/custom_clipper.dart';
import 'package:profile_ui/widgets/top_bar.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Stack(
        children: <Widget>[
          Container(),
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://st4.depositphotos.com/22302086/23858/v/1600/depositphotos_238582732-stock-illustration-cat-face-close-colorful-eyes.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 1.5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProfileAvatar(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB1HnswP3WY0jPKwcFoWd0B6dtqTzfdMMorGSyAtaXunnt8-8LHKlqja5MnxvvEd6yQFE&usqp=CAU',
                  borderWidth: 4.0,
                  radius: 60.0,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  'Coder X',
                  style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          TopBar(),
        ],
      ),
    );
  }
}
