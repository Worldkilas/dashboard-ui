import 'package:dashboard_ui/models/health_model.dart';

class HealthDetails {
  final List<HealthModel> healthData = [
    HealthModel(
        icon: 'lib/assets/icons/burn.png',
        value: '305',
        title: 'Calories burned'),
    HealthModel(
        icon: 'lib/assets/icons/steps.png', value: '10,983', title: 'Steps'),
    HealthModel(
        icon: 'lib/assets/icons/distance.png', value: '7km', title: 'Distance'),
    HealthModel(
        icon: 'lib/assets/icons/sleep.png', value: '6h45m', title: 'Sleep'),
  ];
}
