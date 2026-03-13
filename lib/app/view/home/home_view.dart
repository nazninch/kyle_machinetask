import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_machinetask/app/view/take_away/take_away_view.dart';
import 'package:kyle_machinetask/shared/widgets/card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF62B4F7), Color(0xFFE8F4FF)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Text(
                  'Choose Your Experience',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),

                const Text(
                  "Select how you'd like to enjoy your order",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
                const SizedBox(height: 28),

                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        navigator!.push(
                          MaterialPageRoute(builder: (context) => TakeAway()),
                        );
                      },
                      child: CardWidget(
                        icon: Icons.shopping_bag_outlined,
                        title: 'TAKE AWAY',
                        subtitle: 'Order & pick up',
                      ),
                    ),
                    const SizedBox(width: 12),
                    CardWidget(
                      icon: Icons.restaurant_outlined,
                      title: 'DINE IN',
                      subtitle: 'Enjoy your meal',
                    ),
                    const SizedBox(width: 12),
                    CardWidget(
                      icon: Icons.local_shipping_outlined,
                      title: 'ONLINE DELIVERY',
                      subtitle: 'Doorstep delivery',
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                Row(
                  children: [
                    CardWidget(
                      icon: Icons.calendar_today_outlined,
                      title: 'BOOKING',
                      subtitle: 'Reserve a table',
                    ),
                    const SizedBox(width: 12),
                    CardWidget(
                      icon: Icons.receipt_long_outlined,
                      title: 'TRIP REPORT',
                      subtitle: 'Delivery reports',
                    ),
                    const SizedBox(width: 12),
                    CardWidget(
                      icon: Icons.account_balance_wallet_outlined,
                      title: 'POS BALANCE',
                      subtitle: 'Check system balance',
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: CardWidget(
                        icon: Icons.volume_up_outlined,
                        title: 'VOICE',
                        subtitle: 'Voice commands',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
