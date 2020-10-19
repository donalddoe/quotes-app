import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
      author: 'Osca Wilde',
      text: 'Be yourself, everyone is already taken ',
    ),
    Quote(
        author: 'Osca Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Osca Wilde', text: 'The truth is rarely pure and never simple')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Awesome Qoutes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) =>QuoteCard(quote: quote)).toList(),
        )
     );
  }
}

