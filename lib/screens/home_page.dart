import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_traveller_app/screens/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Hello,Vineetha',
            style: TextStyle(fontSize: 17),
          ),
          leading: Row(
            children: [
              const SizedBox(width: 24),
              Container(
                height: 32,
                width: 32,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffD9D9D9)),
              ),
            ],
          )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Where do you\nwant to explore today?',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    border: InputBorder.none,
                    fillColor: Color(0xfff7f7f7),
                    filled: true),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Choose Category',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('See all',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        border: Border.all(color: const Color(0xff5DC720)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Images/tree.png',
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Beach',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        border: Border.all(color: const Color(0xff5DC720)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Images/mountain.png',
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Mountain',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondPage(
                                      image:
                                          'https://images.unsplash.com/photo-1567496912640-1b409fa9f0d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1411&q=80',
                                      name: 'Kuta Beach',
                                      location: 'Bali,Indonesia',
                                      price: '₹20,000',
                                    )));
                      },
                      child: Container(
                        height: 246,
                        width: 186,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: NetworkImage(
                                'https://images.unsplash.com/photo-1567496912640-1b409fa9f0d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1411&q=80',
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 16),
                            Align(
                              alignment: Alignment.topRight,
                              child: MaterialButton(
                                elevation: 0,
                                onPressed: () {},
                                color: Colors.white,
                                textColor: Colors.white,
                                padding: const EdgeInsets.all(10),
                                shape: const CircleBorder(),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Color(0xffFD5B1F),
                                  size: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 100),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Kuta Beach',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Bali, Indonesia',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ],
                                  ),
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
                                        itemPadding: const EdgeInsets.symmetric(
                                            horizontal: 0.1),
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
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondPage(
                                      image:
                                          'https://images.unsplash.com/photo-1553578827-0df58e305953?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1564&q=80',
                                      name: 'Baga Beach',
                                      location: 'Goa, India',
                                      price: '₹15,000',
                                    )));
                      },
                      child: Container(
                        height: 246,
                        width: 186,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: NetworkImage(
                                'https://images.unsplash.com/photo-1553578827-0df58e305953?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1564&q=80',
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 16),
                            Align(
                              alignment: Alignment.topRight,
                              child: MaterialButton(
                                elevation: 0,
                                onPressed: () {},
                                color: Colors.white,
                                textColor: Colors.white,
                                padding: const EdgeInsets.all(10),
                                shape: const CircleBorder(),
                                child: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 100),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Baga Beach',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Goa, India',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 4,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 16,
                                        unratedColor: const Color(0xffF3F3F3),
                                        itemPadding: const EdgeInsets.symmetric(
                                            horizontal: 0.1),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      const Text(
                                        '4.8',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 246,
                      width: 186,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                              'https://images.unsplash.com/photo-1520454974749-611b7248ffdb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          Align(
                            alignment: Alignment.topRight,
                            child: MaterialButton(
                              elevation: 0,
                              onPressed: () {},
                              color: Colors.white,
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(10),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                          ),
                          const SizedBox(height: 100),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Ajantha Beach',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Goa, India',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 4,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 16,
                                      unratedColor: const Color(0xffF3F3F3),
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 0.1),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const Text(
                                      '4.8',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 44),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Popular Package',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('See all',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 35),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage(
                                image:
                                    'https://images.unsplash.com/photo-1589155435195-e880ef0f7d30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJlYWNoJTIwaG9tZXxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60',
                                name: 'Baga Beach',
                                location: 'Goa, India',
                                price: '₹15,000',
                              )));
                },
                child: Container(
                  height: 163,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color(0xffC4C4C4)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 20),
                      Container(
                        height: 116,
                        width: 86,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1589155435195-e880ef0f7d30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJlYWNoJTIwaG9tZXxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Kuta Resort',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff0C0507),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            '₹20,000',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffFD5B1F)),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 16,
                                unratedColor: const Color(0xffF3F3F3),
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 0.1),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              const Text(
                                '4.8',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'A resort is a placed for\nvacation,relaxation or as a day...',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff767676),
                                height: 1.8),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border,
                              color: Color(0xffBABABA),
                              size: 26,
                            )),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage(
                                image:
                                    'https://images.unsplash.com/photo-1533133080700-748906117c96?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
                                name: 'Baga Beach',
                                location: 'Goa, India',
                                price: '₹15,000',
                              )));
                },
                child: Container(
                  height: 163,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color(0xffC4C4C4)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 20),
                      Container(
                        height: 116,
                        width: 86,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1533133080700-748906117c96?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Baga Beach Resort',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff0C0507),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            '₹15,000',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffFD5B1F)),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 16,
                                unratedColor: const Color(0xffF3F3F3),
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 0.1),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              const Text(
                                '4.8',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'A resort is a placed for\nvacation,relaxation or as a day...',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff767676),
                                height: 1.8),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border,
                              color: Color(0xffBABABA),
                              size: 26,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
