import '../config/responsive.dart';
import '../export.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                text: "Dashboard",
                size: 30,
                fontWeight: FontWeight.w800,
              ),
              PrimaryText(
                text: "Payment Updates",
                size: 16,
                color: AppColors.secondary,
              ),
            ], // Head Text
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Expanded(
            flex: Responsive.isDesktop(context) ? 1 :2,
            child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              contentPadding: const EdgeInsets.only(left: 40,right: 30),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.black)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.black),
              ),
              prefixIcon: const Icon(Icons.search, color: AppColors.black,),
              hintText: "Search",
              hintStyle: const TextStyle(color: AppColors.secondary, fontSize: 14)
          ),
        ))
      ],
    );
  }
}