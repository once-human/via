# VIA App Project Structure

## Overview

This document outlines the complete project structure for the VIA app. The structure follows a feature-first approach combined with clean architecture principles, optimized for Flutter development with Firebase backend integration.

## Directory Structure

```
via/
├── android/                      # Android-specific configuration
├── ios/                          # iOS-specific configuration
├── web/                          # Web-specific configuration
├── assets/
│   ├── fonts/                    # Custom fonts
│   ├── icons/                    # App icons and SVG files
│   ├── images/                   # Static images
│   │   ├── onboarding/           # Onboarding specific images
│   │   ├── markers/              # Map marker images
│   │   └── illustrations/        # General illustrations
│   ├── animations/               # Lottie animation files
│   └── localization/             # Localization files
├── lib/
│   ├── app/
│   │   ├── app.dart              # Main app widget
│   │   ├── app_router.dart       # App navigation router
│   │   ├── app_config.dart       # App configurations
│   │   └── theme/
│   │       ├── app_theme.dart    # Theme definition
│   │       ├── colors.dart       # App colors from palette
│   │       ├── text_styles.dart  # Text styling
│   │       └── dimensions.dart   # Spacing and sizing constants
│   ├── core/
│   │   ├── constants/
│   │   │   ├── api_constants.dart
│   │   │   ├── app_constants.dart
│   │   │   └── asset_paths.dart
│   │   ├── errors/
│   │   │   ├── exceptions.dart
│   │   │   ├── failures.dart
│   │   │   └── error_handler.dart
│   │   ├── network/
│   │   │   ├── api_client.dart
│   │   │   ├── api_result.dart
│   │   │   ├── network_info.dart
│   │   │   └── endpoints.dart
│   │   ├── services/
│   │   │   ├── analytics_service.dart
│   │   │   ├── local_storage_service.dart
│   │   │   ├── secure_storage_service.dart
│   │   │   ├── notification_service.dart
│   │   │   ├── location_service.dart
│   │   │   ├── firebase_service.dart
│   │   │   └── permissions_service.dart
│   │   └── utils/
│   │       ├── date_time_utils.dart
│   │       ├── string_utils.dart
│   │       ├── map_utils.dart
│   │       ├── validators.dart
│   │       ├── logger.dart
│   │       └── extensions/
│   │           ├── date_extensions.dart
│   │           ├── string_extensions.dart
│   │           └── context_extensions.dart
│   ├── data/
│   │   ├── models/
│   │   │   ├── user/
│   │   │   │   ├── user_model.dart
│   │   │   │   ├── rider_model.dart
│   │   │   │   └── driver_model.dart
│   │   │   ├── ride/
│   │   │   │   ├── ride_model.dart
│   │   │   │   ├── ride_request_model.dart
│   │   │   │   └── ride_status_model.dart
│   │   │   ├── subscription/
│   │   │   │   ├── subscription_plan_model.dart
│   │   │   │   └── user_subscription_model.dart
│   │   │   ├── payment/
│   │   │   │   ├── payment_method_model.dart
│   │   │   │   └── transaction_model.dart
│   │   │   ├── location/
│   │   │   │   ├── location_model.dart
│   │   │   │   └── route_model.dart
│   │   │   └── rating/
│   │   │       └── rating_model.dart
│   │   ├── repositories/
│   │   │   ├── user_repository_impl.dart
│   │   │   ├── ride_repository_impl.dart
│   │   │   ├── subscription_repository_impl.dart
│   │   │   ├── payment_repository_impl.dart
│   │   │   ├── location_repository_impl.dart
│   │   │   └── rating_repository_impl.dart
│   │   └── datasources/
│   │       ├── local/
│   │       │   ├── user_local_datasource.dart
│   │       │   ├── ride_local_datasource.dart
│   │       │   └── settings_local_datasource.dart
│   │       └── remote/
│   │           ├── firebase/
│   │           │   ├── firebase_user_datasource.dart
│   │           │   ├── firebase_ride_datasource.dart
│   │           │   └── firebase_subscription_datasource.dart
│   │           ├── maps/
│   │           │   └── google_maps_datasource.dart
│   │           └── payment/
│   │               └── stripe_payment_datasource.dart
│   ├── domain/
│   │   ├── entities/
│   │   │   ├── user_entity.dart
│   │   │   ├── ride_entity.dart
│   │   │   ├── subscription_entity.dart
│   │   │   ├── payment_entity.dart
│   │   │   └── location_entity.dart
│   │   ├── repositories/
│   │   │   ├── user_repository.dart
│   │   │   ├── ride_repository.dart
│   │   │   ├── subscription_repository.dart
│   │   │   ├── payment_repository.dart
│   │   │   └── location_repository.dart
│   │   └── usecases/
│   │       ├── auth/
│   │       │   ├── sign_in_usecase.dart
│   │       │   ├── sign_up_usecase.dart
│   │       │   ├── forgot_password_usecase.dart
│   │       │   └── verify_phone_usecase.dart
│   │       ├── rider/
│   │       │   ├── schedule_ride_usecase.dart
│   │       │   ├── get_ride_history_usecase.dart
│   │       │   ├── manage_subscription_usecase.dart
│   │       │   └── rate_driver_usecase.dart
│   │       └── driver/
│   │           ├── get_ride_requests_usecase.dart
│   │           ├── update_ride_status_usecase.dart
│   │           ├── manage_availability_usecase.dart
│   │           └── get_earnings_usecase.dart
│   ├── presentation/
│   │   ├── bloc/
│   │   │   ├── auth/
│   │   │   │   ├── auth_bloc.dart
│   │   │   │   ├── auth_event.dart
│   │   │   │   └── auth_state.dart
│   │   │   ├── rider/
│   │   │   │   ├── home/
│   │   │   │   │   ├── rider_home_bloc.dart
│   │   │   │   │   ├── rider_home_event.dart
│   │   │   │   │   └── rider_home_state.dart
│   │   │   │   ├── ride_scheduling/
│   │   │   │   │   ├── ride_scheduling_bloc.dart
│   │   │   │   │   ├── ride_scheduling_event.dart
│   │   │   │   │   └── ride_scheduling_state.dart
│   │   │   │   └── subscription/
│   │   │   │       ├── subscription_bloc.dart
│   │   │   │       ├── subscription_event.dart
│   │   │   │       └── subscription_state.dart
│   │   │   └── driver/
│   │   │       ├── home/
│   │   │       │   ├── driver_home_bloc.dart
│   │   │       │   ├── driver_home_event.dart
│   │   │       │   └── driver_home_state.dart
│   │   │       ├── ride_requests/
│   │   │       │   ├── ride_requests_bloc.dart
│   │   │       │   ├── ride_requests_event.dart
│   │   │       │   └── ride_requests_state.dart
│   │   │       └── earnings/
│   │   │           ├── earnings_bloc.dart
│   │   │           ├── earnings_event.dart
│   │   │           └── earnings_state.dart
│   │   ├── widgets/
│   │   │   ├── common/
│   │   │   │   ├── app_bar.dart
│   │   │   │   ├── custom_button.dart
│   │   │   │   ├── custom_text_field.dart
│   │   │   │   ├── loading_indicator.dart
│   │   │   │   ├── ride_card.dart
│   │   │   │   ├── driver_card.dart
│   │   │   │   ├── subscription_card.dart
│   │   │   │   ├── map_widget.dart
│   │   │   │   ├── error_widget.dart
│   │   │   │   └── rating_bar.dart
│   │   │   ├── dialogs/
│   │   │   │   ├── confirmation_dialog.dart
│   │   │   │   ├── ride_details_dialog.dart
│   │   │   │   └── payment_method_dialog.dart
│   │   │   ├── rider/
│   │   │   │   ├── upcoming_rides_list.dart
│   │   │   │   ├── ride_history_item.dart
│   │   │   │   └── driver_selection_list.dart
│   │   │   └── driver/
│   │   │       ├── ride_request_card.dart
│   │   │       ├── earnings_chart.dart
│   │   │       └── availability_toggle.dart
│   │   └── screens/
│   │       ├── common/
│   │       │   ├── splash_screen.dart
│   │       │   ├── onboarding_screen.dart
│   │       │   ├── auth/
│   │       │   │   ├── login_screen.dart
│   │       │   │   ├── signup_screen.dart
│   │       │   │   ├── phone_verification_screen.dart
│   │       │   │   └── forgot_password_screen.dart
│   │       │   ├── profile/
│   │       │   │   ├── profile_screen.dart
│   │       │   │   └── edit_profile_screen.dart
│   │       │   └── settings/
│   │       │       └── settings_screen.dart
│   │       ├── rider/
│   │       │   ├── home/
│   │       │   │   └── rider_home_screen.dart
│   │       │   ├── ride/
│   │       │   │   ├── schedule_ride_screen.dart
│   │       │   │   ├── driver_selection_screen.dart
│   │       │   │   ├── ride_confirmation_screen.dart
│   │       │   │   ├── upcoming_ride_screen.dart
│   │       │   │   ├── active_ride_screen.dart
│   │       │   │   ├── ride_completion_screen.dart
│   │       │   │   └── ride_history_screen.dart
│   │       │   └── subscription/
│   │       │       ├── subscription_selection_screen.dart
│   │       │       ├── payment_setup_screen.dart
│   │       │       ├── subscription_confirmation_screen.dart
│   │       │       └── my_subscription_screen.dart
│   │       ├── driver/
│   │       │   ├── home/
│   │       │   │   └── driver_home_screen.dart
│   │       │   ├── registration/
│   │       │   │   ├── driver_registration_screen.dart
│   │       │   │   └── driver_verification_screen.dart
│   │       │   ├── rides/
│   │       │   │   ├── ride_alert_screen.dart
│   │       │   │   ├── ride_navigation_screen.dart
│   │       │   │   ├── active_ride_screen.dart
│   │       │   │   └── ride_completion_screen.dart
│   │       │   ├── schedule/
│   │       │   │   └── weekly_schedule_screen.dart
│   │       │   └── earnings/
│   │       │       └── earnings_screen.dart
│   │       └── help/
│   │           ├── help_center_screen.dart
│   │           └── issue_reporting_screen.dart
│   └── main.dart                 # Entry point
├── test/
│   ├── core/
│   │   ├── network/
│   │   │   └── api_client_test.dart
│   │   └── utils/
│   │       └── validators_test.dart
│   ├── data/
│   │   ├── repositories/
│   │   │   ├── user_repository_test.dart
│   │   │   └── ride_repository_test.dart
│   │   └── datasources/
│   │       ├── local/
│   │       │   └── user_local_datasource_test.dart
│   │       └── remote/
│   │           └── firebase_user_datasource_test.dart
│   ├── domain/
│   │   └── usecases/
│   │       ├── sign_in_usecase_test.dart
│   │       └── schedule_ride_usecase_test.dart
│   ├── presentation/
│   │   ├── bloc/
│   │   │   ├── auth_bloc_test.dart
│   │   │   └── rider_home_bloc_test.dart
│   │   └── screens/
│   │       ├── login_screen_test.dart
│   │       └── rider_home_screen_test.dart
│   └── widget_test.dart          # Base widget test
├── integration_test/
│   ├── app_test.dart             # Main integration test
│   ├── driver_flow_test.dart     # Driver flows integration test
│   └── rider_flow_test.dart      # Rider flows integration test
├── analysis_options.yaml         # Linter rules
├── pubspec.yaml                  # Dependencies and package info
├── pubspec.lock                  # Generated lock file
├── README.md                     # Project documentation
├── .gitignore                    # Git ignore file
├── .gitlab-ci.yml                # CI/CD configuration
└── firebase.json                 # Firebase configuration
```

## Key Structure Components

### Feature-First Organization

The project structure follows a feature-first approach for the presentation layer, with common architecture layers underneath. This allows developers to work on specific features with minimal conflicts.

### Clean Architecture Implementation

The structure implements clean architecture principles with distinct layers:

1. **Presentation Layer** - UI components organized by feature and user type
2. **Domain Layer** - Business logic with use cases and repository interfaces
3. **Data Layer** - Implementation of repositories and data sources

### Common Module Organization

Shared functionality is organized in:

1. **Core** - Utilities, constants, and services used throughout the app
2. **Shared Widgets** - Reusable UI components with consistent styling

## Directory Details

### lib/app/

Contains application-level files including the root app widget, navigation router, and theme definitions. The app's color scheme from `color pallete.png` is implemented here.

### lib/core/

Houses shared utilities, services, and constants used across the application:

- **constants** - App-wide constants including API endpoints, asset paths
- **errors** - Custom exceptions and error handling logic
- **network** - API client and network utilities
- **services** - Core services like analytics, storage, notifications
- **utils** - Helper functions and extension methods

### lib/data/

Implements the data layer of the application:

- **models** - Data classes for API responses and local storage
- **repositories** - Implementation of domain repository interfaces
- **datasources** - Local and remote data sources

### lib/domain/

Defines the business logic and rules of the application:

- **entities** - Core business objects
- **repositories** - Abstract interfaces for data operations
- **usecases** - Single-responsibility business logic components

### lib/presentation/

Contains all UI-related code, organized by feature:

- **bloc** - State management for each feature
- **widgets** - Reusable UI components
- **screens** - Full screens organized by user type and feature

## Firebase Integration

Firebase services are integrated throughout the application with dedicated data sources and services:

- **Authentication** - Handled by `firebase_auth_datasource.dart`
- **Firestore** - Used for user profiles, rides, and subscriptions
- **Cloud Functions** - Implemented for matching and notifications
- **Cloud Messaging** - Integrated for push notifications
- **Analytics** - Tracked in `analytics_service.dart`

## Implementation Notes

### 1. UI Components

UI components are directly mapped to screens from the reference designs:
- `onboarding_screen.dart` implements designs from `onboarding v2.png`
- `rider_home_screen.dart` implements `HOME FINALLLL.png`
- `active_ride_screen.dart` implements `ongoing ride.png`

### 2. Bloc Structure

Each feature has a dedicated BLoC divided into:
- **Events** - User actions and triggers
- **States** - UI states resulting from events
- **BLoC** - Business logic connecting events to states

### 3. Repositories & Data Sources

Repositories abstract data operations with:
- **Repository Interface** - Defined in the domain layer
- **Repository Implementation** - Located in the data layer
- **Data Sources** - Split between local (shared preferences, secure storage) and remote (Firebase, APIs)

### 4. Navigation

The app uses a central router in `app_router.dart` with:
- Named routes for all screens
- Argument passing for screen parameters
- Deep linking support for notifications

## Development Guidelines

### 1. File Naming Conventions

- **Snake Case** for file names: `user_repository.dart`
- **Camel Case** for variables and functions: `getUserProfile()`
- **Pascal Case** for classes and types: `UserRepository`

### 2. Import Organization

Imports should be organized in the following order:
1. Dart imports
2. Flutter framework imports
3. Third-party package imports
4. App imports (absolute)

### 3. Widget Composition

- Prefer composition over inheritance
- Extract reusable widgets to the appropriate level in the widget directory
- Keep widget files under 300 lines by refactoring as needed

### 4. State Management

- Use Riverpod for dependency injection and Provider for simple state
- Use BLoC for complex feature state management
- Avoid StatefulWidget when possible

### 5. Testing Strategy

- Unit tests for all business logic
- Widget tests for UI components
- Integration tests for critical user flows

## Implementation Phases

This structure supports the phased implementation outlined in `timeline.md`:

- **Phase 1 (MVP)**: Core functionality with basic screens and data models
- **Phase 2**: Enhanced features with more refined user experiences
- **Phase 3**: Optimization and full feature implementation
- **Phase 4-5**: Post-funding expansions with minimal structural changes needed

## Conclusion

This project structure is designed for scalability, maintainability, and team collaboration. It follows Flutter best practices while implementing clean architecture principles. The feature-first organization allows for parallel development of rider and driver features, while the clean architecture layers ensure separation of concerns and testability.
