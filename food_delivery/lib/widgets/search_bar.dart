import 'package:flutter/material.dart';

class SearchBoxWidget extends StatefulWidget {
  final String searchText;
  final ValueChanged<String> onChanged;

  const SearchBoxWidget({
    Key? key,
    required this.searchText,
    required this.onChanged,
  }) : super(key: key);

 @override
  _SearchBoxWidgetState createState() => _SearchBoxWidgetState();
}

class _SearchBoxWidgetState extends State<SearchBoxWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.searchText);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Search Hotel...',
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
