import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:linkedin_concept_ui/constants.dart';

class PostView extends StatefulWidget {
  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [_postHeader(), _postBody(), _reactions(), _actions()],
      ),
    );
  }

  Widget _postHeader() {
    return Row(
      children: [
        SizedBox(
          width: 16,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://img.freepik.com/free-photo/handsome-young-businessman-shirt-eyeglasses_85574-6228.jpg?size=626&ext=jpg"),
          minRadius: 25,
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Sarah Andersson",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.public,
                  size: 16,
                )
              ],
            ),
            Text(
              "UX Designer chez Hello world",
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              "38 min.",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        Spacer(),
        IconButton(icon: Icon(Icons.more_horiz_sharp), onPressed: () {})
      ],
    );
  }

  Widget _postBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Html(
            data: "",
          ),
          Text(
            "voir plus",
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: kPrimaryColor,
                ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 8,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                  "https://images.unsplash.com/photo-1553531384-411a247ccd73?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80")),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  Widget _reactions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                _circleIconButton(Icons.thumb_up_alt_outlined, kPrimaryColor),
                _circleIconButton(Icons.favorite_border, Colors.red[400]),
                _circleIconButton(Icons.emoji_emotions_outlined, Colors.purple),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "10",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ),
          Text(
            "10 commentaires",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }

  Widget _circleIconButton(IconData icons, Color color) {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Icon(
        icons,
        color: Colors.white,
        size: 14,
      ),
    );
  }

  Widget _actions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _actionButton(Icons.thumb_up_alt_outlined, "J'aime"),
          _actionButton(Icons.comment_bank_outlined, "Comment"),
          _actionButton(Icons.share, "Partagar"),
          _actionButton(Icons.thumb_up_alt_outlined, "Envoyer"),
        ],
      ),
    );
  }

  Widget _actionButton(IconData icon, String title) {
    return Column(
      children: [
        Icon(
          icon,
          size: 26,
          color: Color(0xffB1BCC2),
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Color(0xffB1BCC2)),
        )
      ],
    );
  }
}
