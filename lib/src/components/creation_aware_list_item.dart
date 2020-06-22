import 'package:flutter/material.dart';

class CreationAwareListItem extends StatefulWidget {
  const CreationAwareListItem({
    Key key,
    this.itemCreated,
    this.child,
  }) : super(key: key);

  final Function itemCreated;
  final Widget child;

  @override
  _CreationAwareListItemState createState() => _CreationAwareListItemState();
}

class _CreationAwareListItemState extends State<CreationAwareListItem> {
  @override
  void initState() {
    super.initState();
    if (widget.itemCreated != null) {
      widget.itemCreated();
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
