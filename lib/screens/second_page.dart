import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SecondPage extends StatefulWidget {
  final String image;
  final String price;
  final String location;

  final String name;

  const SecondPage(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.location});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                widget.image,
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 62),
              Row(
                children: [
                  const SizedBox(width: 11),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(height: 525),
              Row(
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    widget.location,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'One of the most happening beaches in Goa, Baga Beach is where youwill find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.',
                style: TextStyle(color: Colors.white, fontSize: 12, height: 2),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: 4.2,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    unratedColor: const Color(0xffF3F3F3),
                    itemSize: 16,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0.1),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const Text(
                    '4.2',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    '${widget.price}/person',
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 104,
                    decoration: BoxDecoration(
                        color: const Color(0xffFCD240),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      'Book Now',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
