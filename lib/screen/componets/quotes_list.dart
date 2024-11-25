import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../utils/utils.dart';

Expanded quotesListTile() {
  return Expanded(
    flex: 14,
    child: Scrollbar(
      thickness: 6,
      radius: const Radius.circular(20),
      interactive: true,
      thumbVisibility: true,
      trackVisibility: true,
      child: ListView.separated(
        itemCount: allQuotes.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          QuotesModel quote = allQuotes[index];
          return (cat == quote.category)
              ? expansionTile(index: index, quote: quote)
              : (cat == 'All')
                  ? expansionTile(index: index, quote: quote)
                  : Container();
        },
        separatorBuilder: (context, index) =>
            (cat == allQuotes[index].category || cat == 'All')
                ? const Divider(
                    thickness: 0.1,
                    color: Colors.grey,
                    // color: Colors.black,
                  )
                : Container(),
      ),
    ),
  );
}

ExpansionTile expansionTile({
  required int index,
  required QuotesModel quote,
}) {
  return ExpansionTile(
    // backgroundColor: Colors.primaries[index % 18][300],
    backgroundColor: Colors.black,

    // trailing: const Icon(Icons.keyboard_arrow_down),
    tilePadding: const EdgeInsets.all(10),
    collapsedShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    // collapsedBackgroundColor: Colors.primaries[index % 18][200],
    collapsedBackgroundColor: Colors.black,

    // leading: Text(
    //   "${index + 1}",
    //   style: TextStyle(color: Colors.white),
    // ),
    title: Text(
      quote.quotes,
      style: TextStyle(color: Colors.white),
    ),
    children: [
      Text(quote.author, style: TextStyle(color: Colors.white)),
      Text(quote.category, style: TextStyle(color: Colors.white)),
    ],
  );
}
