import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'Все что начинается, начинается с нуля', author: 'Илюха'),
    Quote(text: 'Расгоготался тут, гусяныч', author: 'Илюха'),
    Quote(text: 'Только добро и осмысленность порождает добро и осмысленность. Зло порожлает только зло', author: 'Илюха'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes'
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        crossAxisAlignment: CrossAxisAlignment.start,
      )
    );
  }
}
