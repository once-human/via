# VIA - Subscription-Based Ride Service

VIA is an innovative ride-hailing application that addresses the shortcomings of existing services through a subscription-based model, providing reliable, predictable transportation for commuters and stable earnings for drivers.

## Project Overview

### App Concept
VIA transforms the traditional ride-hailing experience by introducing:
- Pre-scheduled rides (daily or weekly)
- Fixed pricing (no surge pricing)
- Option to select regular/familiar drivers
- Priority access to rides
- Ability to modify or reschedule rides
- Guaranteed consistent earnings for drivers
- Planned schedules to optimize driver work hours
- Fair compensation policies

### Key Benefits
- **For Commuters:** Reliable transport, reduced stress, predictable costs, time efficiency
- **For Drivers:** Stable income, optimized work schedules, fair compensation

## Architecture & Technical Details

### Tech Stack
- **Frontend:** Flutter (v3.19+) for cross-platform development
- **Backend:** Firebase (Authentication, Firestore, Storage, Functions)
- **State Management:** Riverpod & BLoC pattern
- **Maps & Location:** Google Maps Platform
- **Payments:** Stripe SDK
- **UI/UX:** Material Design & custom components
- **Testing:** Flutter Test, Integration Testing

### Project Structure
The application follows a feature-first organization with clean architecture:

```
via/
├── lib/
│   ├── app/                  # App configuration & theme
│   ├── core/                 # Core utilities & services
│   ├── data/                 # Data layer implementation
│   ├── domain/               # Business logic & entities
│   └── presentation/         # UI components & screens
```

The complete structure is detailed in [project_structure.md](project_structure.md).

## Setup Instructions

### Prerequisites
- Flutter SDK (v3.19+)
- Android Studio or VS Code with Flutter plugins
- Firebase project & configuration
- Google Maps API key
- Git

### Installation

1. **Install Flutter** - Follow the [Flutter Installation Guide](flutter_installation.md)

2. **Clone the repository**
   ```
   git clone https://github.com/once-human/via.git
   cd via
   ```

3. **Install dependencies**
   ```
   flutter pub get
   ```

4. **Configure Firebase**
   - Create a Firebase project
   - Add Android & iOS apps to Firebase
   - Download and place configuration files:
     - `google-services.json` in `android/app/`
     - `GoogleService-Info.plist` in `ios/Runner/`

5. **Set up Google Maps**
   - Obtain API key from Google Cloud Console
   - Add key to Android and iOS configurations

6. **Run the app**
   ```
   flutter run
   ```

## Development Process

The development follows a phased approach:

1. **Phase 1 (MVP):** Core functionality - auth, basic rider/driver screens
2. **Phase 2:** Enhanced features - subscriptions, improved navigation
3. **Phase 3:** Full feature set - analytics, optimizations
4. **Phase 4-5:** Post-funding expansions

For detailed implementation tasks, refer to [checklist.md](checklist.md).

## Documentation

- [User Flow](userflow.md) - Complete app flow and screens
- [Tech Stack](tech_stack.md) - Detailed technology decisions
- [Project Structure](project_structure.md) - Code organization
- [Timeline](timeline.md) - Development phases

## Design References

The UI/UX implementation follows designs located in the `references/` directory, with consistent styling from the defined color palette.

## Contributing

Please review the project structure and coding conventions before contributing. The development process follows the checklist and uses Git for version control.

## License

This project is proprietary and not licensed for redistribution or use outside of its intended purpose.
