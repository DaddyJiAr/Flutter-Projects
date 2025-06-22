import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';


void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => QuoteListState();
}

class QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    
    Quote(text:"Sa lahat ng pahinang sinulat ng tadhana'y ikaw at ikaw at ikaw parin", author:"Cup of Joe"),
    Quote(text:"At ang hirap lang mabuhay nang ganitong mag-isa", author:"Ace Banzuelo"),
    Quote(text:"Ginawa ko naman ang lahat. Sumugal ako kahit alam kong talo", author:"Bandang Lapis"),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Malupitang Quotes",
          style: TextStyle(
            color: Colors.white, 
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: quotes.map((quote){
            return QuoteCard(quote: quote);
          }).toList(),
        ),
      ),
    );
  }
}
