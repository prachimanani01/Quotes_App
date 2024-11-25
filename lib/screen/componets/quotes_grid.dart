import 'package:flutter/material.dart';
import '../../utils/utils.dart';

Expanded quotesGridView() {
  return Expanded(
    flex: 14,
    child: Scrollbar(
      radius: const Radius.circular(20),
      interactive: true,
      thickness: 6,
      trackVisibility: true,
      thumbVisibility: true,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // mainAxisSpacing: 10,
            // crossAxisSpacing: 0,
            // mainAxisExtent: 200.h,
          ),
          itemCount: allQuotes.length,
          padding: const EdgeInsets.all(12),
          itemBuilder: (context, index) {
            var quote = allQuotes[index];
            return Card(
              // color: Colors.primaries[index % 18][300],
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      quote.quotes,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        // overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "~${quote.author}",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        // overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    ),
  );
}
