import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget {
  

  final Quote quote; // final kasi di na dapat magbago yung value, since statelesswidget yung gamit
  const QuoteCard({super.key, required this.quote}); // dikolam kung bakit may const at super.key

  

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[850],
              ),
              ),
              SizedBox(height: 6,),
              Text(quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[900],
              ),)
          ],
        ),
      ),
    );
  }
}