import 'package:bloc_navigation/post_model.dart';
import 'package:flutter/material.dart';
class PostDetailsView extends StatefulWidget {
  final Post post;
  const PostDetailsView({Key key,@required this.post}) : super(key: key);

  @override
  _PostDetailsViewState createState() => _PostDetailsViewState();
}

class _PostDetailsViewState extends State<PostDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Details'),),
      body: Center(child: Text(widget.post.body),),
    );
  }
}
