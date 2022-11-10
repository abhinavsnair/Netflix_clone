import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constats.dart';
import 'package:netflix_clone/presentation/search/widgets/search_results.dart';

class ScreeanSearch extends StatelessWidget {
  const ScreeanSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              kheight,
              // Expanded(child: SearchIdleWidget())
              const Expanded(
                child: SearchResultWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
