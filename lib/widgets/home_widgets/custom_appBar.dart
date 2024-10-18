import 'package:flutter/material.dart';
import 'package:women_safety_app/utils/quotes.dart';

class CustomAppbar extends StatefulWidget {
  final Function? onTap;
  final int? initialQuotesIndex;

  CustomAppbar({this.onTap, this.initialQuotesIndex, required int quotesIndex});

  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  int quotesIndex = 0;

  @override
  void initState() {
    super.initState();
    quotesIndex = widget.initialQuotesIndex ?? 0;
  }

  void _changeQuote() {
    setState(() {
      // Change the quote by updating the index, looping back if necessary
      quotesIndex = (quotesIndex + 1) % sweetSayings.length;
    });

    // Call the onTap function if it's provided
    if (widget.onTap != null) {
      widget.onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeQuote,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          sweetSayings[quotesIndex],
          style: TextStyle(fontSize: 22, color: Colors.pinkAccent),
        ),
      ),
    );
  }
}
