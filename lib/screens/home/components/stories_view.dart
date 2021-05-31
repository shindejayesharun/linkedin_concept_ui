import 'package:flutter/material.dart';

class StoriesView extends StatefulWidget {
  @override
  _StoriesViewState createState() => _StoriesViewState();
}

class _StoriesViewState extends State<StoriesView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 16, 0, 16),
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return StoriesItemView();
        },
      ),
    );
  }
}


class StoriesItemView extends StatefulWidget {
  StoriesItemView({Key key,});

  @override
  _StoriesItemViewState createState() => _StoriesItemViewState();
}

class _StoriesItemViewState extends State<StoriesItemView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Colors.green,
              style: BorderStyle.solid,
            ),
          ),
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://img.freepik.com/free-photo/handsome-young-businessman-shirt-eyeglasses_85574-6228.jpg?size=626&ext=jpg"),
          ),
        ),
        SizedBox(height: 4,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text("Votre Story",style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,),
        )
      ],
    );
  }
}
