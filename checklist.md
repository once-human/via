# VIA App Development Checklist

This comprehensive checklist serves as a development guide for implementing the VIA subscription-based ride service app. Each section includes visual verification points to ensure progress is visible and testable after each major step.

## 1. Project Setup Phase

### 1.1. Environment & Repository Setup
- [x] 1.1.1. Install Flutter SDK (v3.19+) in the development environment
- [x] 1.1.2. Configure VS Code with Flutter & Dart plugins
- [x] 1.1.3. Initialize Git repository with appropriate .gitignore
- [x] 1.1.4. Create README.md with project overview, architecture and setup instructions
- [x] 1.1.5. Set up .gitignore file specifically for Flutter project with Firebase
- [x] 1.1.6. Create initial project structure matching project_structure.md specification
- [ ] 1.1.7. Configure GitHub Actions CI/CD pipeline with Flutter-specific workflows
- [x] 1.1.8. Create .cursorrules file for Cursor AI context management
- [x] 1.1.9. Setup status.md file for tracking progress
- [ ] 1.1.10. Configure Cursor AI IDE settings for Flutter development

**VISUAL CHECKPOINT #1**: Successfully run `flutter doctor` with all checkmarks green, showing Flutter environment is properly set up. Take screenshot of terminal output.

### 1.2. Flutter Project Initialization
- [ ] 1.2.1. Create new Flutter project with `flutter create via`
- [ ] 1.2.2. Configure app name to "VIA" in pubspec.yaml
- [ ] 1.2.3. Set app bundle identifier to "com.via.rider" and "com.via.driver"
- [ ] 1.2.4. Set up dev, staging, and production flavors in Flutter
- [ ] 1.2.5. Configure Android-specific settings in build.gradle
- [ ] 1.2.6. Configure iOS-specific settings in Info.plist and project settings
- [ ] 1.2.7. Set up web support with appropriate configurations
- [ ] 1.2.8. Update pubspec.yaml with all initial dependencies from tech_stack.md
- [ ] 1.2.9. Set up analysis_options.yaml with custom lint rules
- [ ] 1.2.10. Validate project structure against the one in project_structure.md
- [ ] 1.2.11. Setup initial assets directory structure
- [ ] 1.2.12. Configure min SDK versions for Android (21+) and iOS (12+)

**VISUAL CHECKPOINT #2**: Run the default Flutter app with VIA app name showing on the home screen. Take screenshot of the app running on emulator/device.

### 1.3. Design System Integration
- [ ] 1.3.1. Create theme directory structure as specified in project_structure.md
- [ ] 1.3.2. Implement color palette exactly as defined in "color pallete.png"
- [ ] 1.3.3. Extract exact hex codes from the color palette reference
- [ ] 1.3.4. Create ColorScheme class with all theme colors
- [ ] 1.3.5. Set up Typography styles for headings, body text, captions
- [ ] 1.3.6. Define TextTheme based on the design references
- [ ] 1.3.7. Create dimension constants for consistent spacing/sizing
- [ ] 1.3.8. Implement ThemeData with color scheme and text themes
- [ ] 1.3.9. Create theme provider using Riverpod
- [ ] 1.3.10. Set up asset organization structure for images, icons, and animations
- [ ] 1.3.11. Import and organize all design reference assets from references directory
- [ ] 1.3.12. Create app icon based on the design references
- [ ] 1.3.13. Generate splash screen assets
- [ ] 1.3.14. Setup custom fonts from the design system

**VISUAL CHECKPOINT #3**: Create a theme demo screen showing all color palettes, typography styles, and component examples. Take screenshot showing the design system applied.

## 2. Core Infrastructure Phase

### 2.1. Firebase Setup
- [ ] 2.1.1. Create Firebase project named "VIA Ride Service"
- [ ] 2.1.2. Add Android app to Firebase with correct package name
- [ ] 2.1.3. Add iOS app to Firebase with correct bundle ID
- [ ] 2.1.4. Add Web app to Firebase for administrative interface
- [ ] 2.1.5. Download and integrate google-services.json for Android
- [ ] 2.1.6. Download and integrate GoogleService-Info.plist for iOS
- [ ] 2.1.7. Configure Firebase CLI and link to project
- [ ] 2.1.8. Set up Firebase Authentication with email/password
- [ ] 2.1.9. Configure phone authentication in Firebase
- [ ] 2.1.10. Set up OAuth providers (Google, Apple) in Firebase

**VISUAL CHECKPOINT #4**: Take screenshots of Firebase console showing project setup and authentication methods enabled.

- [ ] 2.1.11. Create Firestore database with initial collections (users, rides, subscriptions)
- [ ] 2.1.12. Establish initial Firestore security rules
- [ ] 2.1.13. Set up Firebase Storage for profile pictures and documents
- [ ] 2.1.14. Configure Firebase Cloud Messaging for push notifications
- [ ] 2.1.15. Set up Firebase Analytics with custom events
- [ ] 2.1.16. Configure Firebase Crashlytics
- [ ] 2.1.17. Initialize FlutterFire in the app with firebase_core package
- [ ] 2.1.18. Test Firebase connection with simple authentication check

**VISUAL CHECKPOINT #5**: Create a simple Firebase connection test screen showing successful connection to Firebase. Take screenshot of working connection.

### 2.2. Core Services Implementation
- [ ] 2.2.1. Create NetworkService for API calls with error handling
- [ ] 2.2.2. Implement retry mechanism for network requests
- [ ] 2.2.3. Implement LocalStorageService using shared_preferences
- [ ] 2.2.4. Create SecureStorageService for sensitive data
- [ ] 2.2.5. Build LocationService with permission handling and location tracking

**VISUAL CHECKPOINT #6**: Create a location services test screen showing current location on map. Take screenshot of working location detection.

- [ ] 2.2.6. Implement geofencing capabilities in LocationService
- [ ] 2.2.7. Create NotificationService for local and push notifications
- [ ] 2.2.8. Implement notification permissions handling
- [ ] 2.2.9. Set up AnalyticsService for event tracking
- [ ] 2.2.10. Create ErrorReportingService integrated with Crashlytics
- [ ] 2.2.11. Implement LoggingService with different log levels
- [ ] 2.2.12. Create PermissionsService for centralized permission management
- [ ] 2.2.13. Implement ConnectivityService to monitor network status
- [ ] 2.2.14. Create DateTimeService for consistent date handling
- [ ] 2.2.15. Set up MapService as wrapper for Google Maps

**VISUAL CHECKPOINT #7**: Create a services test screen with buttons to test each core service functionality. Take screenshot of service test screen.

### 2.3. State Management Setup
- [ ] 2.3.1. Configure Riverpod providers container
- [ ] 2.3.2. Set up provider observers for debugging
- [ ] 2.3.3. Create core app state structure
- [ ] 2.3.4. Implement authentication state management
- [ ] 2.3.5. Set up BLoC architecture for complex features
- [ ] 2.3.6. Create base BLoC classes for event handling
- [ ] 2.3.7. Implement state freezing with freezed package
- [ ] 2.3.8. Set up shared state management utilities
- [ ] 2.3.9. Implement connectivity monitoring with state updates
- [ ] 2.3.10. Create app lifecycle state management
- [ ] 2.3.11. Set up error state handling
- [ ] 2.3.12. Implement loading state management
- [ ] 2.3.13. Create global state persistence mechanism
- [ ] 2.3.14. Set up repositories with proper state management

**VISUAL CHECKPOINT #8**: Create a state management demo screen showing state changes (e.g., theme switching, connectivity status). Take screenshot of state changes.

## 3. Feature Development Phase 1 (MVP)

### 3.1. Authentication Implementation
- [ ] 3.1.1. Create User entity model with core fields
- [ ] 3.1.2. Create RiderModel extending UserModel
- [ ] 3.1.3. Create DriverModel extending UserModel
- [ ] 3.1.4. Implement UserRepository interface
- [ ] 3.1.5. Create FirebaseUserRepository implementation

**VISUAL CHECKPOINT #9**: Test FirebaseUserRepository functionality with simple console logs. Take screenshot of successful repository operations.

- [ ] 3.1.6. Implement authentication BLoC with states and events
- [ ] 3.1.7. Create login screen matching design references
- [ ] 3.1.8. Implement email/password login functionality
- [ ] 3.1.9. Build signup screen with validation

**VISUAL CHECKPOINT #10**: Run the app showing login and signup screens. Take screenshots of both screens.

- [ ] 3.1.10. Implement phone verification screen with countdown timer
- [ ] 3.1.11. Create OTP input component with auto-focus
- [ ] 3.1.12. Implement forgot password flow
- [ ] 3.1.13. Set up Google Sign-In integration
- [ ] 3.1.14. Implement Apple Sign-In for iOS

**VISUAL CHECKPOINT #11**: Run through entire authentication flow including third-party login, phone verification, and password reset. Take screenshots of each authentication screen.

- [ ] 3.1.15. Create session management with token refresh
- [ ] 3.1.16. Implement secure token storage
- [ ] 3.1.17. Create authentication state persistence
- [ ] 3.1.18. Implement auth guards for protected routes
- [ ] 3.1.19. Write comprehensive tests for auth flows

**VISUAL CHECKPOINT #12**: Test persistent login by closing and reopening app. Take screenshot showing automatic authentication.

### 3.2. Onboarding Flow
- [ ] 3.2.1. Design splash screen with VIA logo animation
- [ ] 3.2.2. Create onboarding screen carousel with page indicator

**VISUAL CHECKPOINT #13**: Run the app showing splash screen and first onboarding page. Take screenshots of both.

- [ ] 3.2.3. Create first onboarding screen introducing subscription model
- [ ] 3.2.4. Implement second onboarding screen showing pre-scheduled rides
- [ ] 3.2.5. Build third onboarding screen showcasing fixed pricing
- [ ] 3.2.6. Create fourth onboarding screen highlighting benefits

**VISUAL CHECKPOINT #14**: Run through complete onboarding flow with all screens. Take screenshots of each onboarding screen.

- [ ] 3.2.7. Implement swipe gestures for onboarding navigation
- [ ] 3.2.8. Create "Skip" and "Next" buttons on onboarding screens
- [ ] 3.2.9. Store onboarding completion status
- [ ] 3.2.10. Implement user role selection screen (rider/driver)
- [ ] 3.2.11. Create first-time user detection logic
- [ ] 3.2.12. Implement onboarding completion tracking
- [ ] 3.2.13. Design and build welcome screen with role-specific messaging
- [ ] 3.2.14. Create transitions between onboarding screens

**VISUAL CHECKPOINT #15**: Test complete onboarding flow including role selection and welcome screen. Take screenshots of role selection and welcome screens.

### 3.3. Common UI Components
- [ ] 3.3.1. Create primary button component with different states
- [ ] 3.3.2. Implement secondary button with border styling
- [ ] 3.3.3. Create text button component
- [ ] 3.3.4. Build icon button component
- [ ] 3.3.5. Create standard text field with validation

**VISUAL CHECKPOINT #16**: Create a UI components showcase screen 1 displaying all button types and text fields. Take screenshot of component showcase.

- [ ] 3.3.6. Implement password text field with visibility toggle
- [ ] 3.3.7. Create phone number input with country code
- [ ] 3.3.8. Build custom app bar with brand styling
- [ ] 3.3.9. Create animated loading indicator with branding
- [ ] 3.3.10. Implement shimmer loading effect

**VISUAL CHECKPOINT #17**: Create a UI components showcase screen 2 displaying inputs, app bar, and loading states. Take screenshot of component showcase.

- [ ] 3.3.11. Build error state widgets with retry option
- [ ] 3.3.12. Create success state feedback widget
- [ ] 3.3.13. Implement modal bottom sheet component
- [ ] 3.3.14. Create dialog components with different actions
- [ ] 3.3.15. Build ride card component with ride details

**VISUAL CHECKPOINT #18**: Create a UI components showcase screen 3 displaying state feedback widgets and dialogs. Take screenshot of component showcase.

- [ ] 3.3.16. Create driver card component with rating
- [ ] 3.3.17. Implement subscription card component
- [ ] 3.3.18. Create custom rating bar with interaction
- [ ] 3.3.19. Implement map widget wrapper over Google Maps
- [ ] 3.3.20. Create location search component

**VISUAL CHECKPOINT #19**: Create a UI components showcase screen 4 displaying business-specific components (ride card, driver card, maps). Take screenshot of component showcase.

### 3.4. Navigation Structure
- [ ] 3.4.1. Set up Go Router for route management
- [ ] 3.4.2. Define all app routes with typed parameters
- [ ] 3.4.3. Create route transitions with animations
- [ ] 3.4.4. Implement bottom navigation for rider app with 3 tabs
- [ ] 3.4.5. Create custom bottom navigation styling
- [ ] 3.4.6. Implement bottom navigation for driver app

**VISUAL CHECKPOINT #20**: Create a navigation demo showing bottom navigation with tabs. Take screenshot of navigation structure.

- [ ] 3.4.7. Configure deep linking support
- [ ] 3.4.8. Create URI strategy for web platform
- [ ] 3.4.9. Implement navigation guards for authenticated routes
- [ ] 3.4.10. Set up redirect logic for unauthorized access
- [ ] 3.4.11. Create route transition animations
- [ ] 3.4.12. Implement tab navigation for multi-tab screens
- [ ] 3.4.13. Create route history management
- [ ] 3.4.14. Set up app links configuration

**VISUAL CHECKPOINT #21**: Test navigation flow through different screens with transitions. Record short video of navigation transitions.

### 3.5. Rider Home Screen
- [ ] 3.5.1. Create rider home screen layout matching HOME FINALLLL.png
- [ ] 3.5.2. Implement Google Maps integration with current location
- [ ] 3.5.3. Add location markers for nearby drivers

**VISUAL CHECKPOINT #22**: Create initial rider home screen with map and basic layout. Take screenshot of home screen with map.

- [ ] 3.5.4. Build upcoming rides section with horizontal scroll
- [ ] 3.5.5. Create "Schedule Ride" floating action button
- [ ] 3.5.6. Implement user profile button on app bar
- [ ] 3.5.7. Create subscription status indicator with remaining rides
- [ ] 3.5.8. Build nearby drivers display with custom markers

**VISUAL CHECKPOINT #23**: Complete rider home screen with all UI elements. Take screenshot of fully implemented home screen.

- [ ] 3.5.9. Implement address search functionality with autocomplete
- [ ] 3.5.10. Create location permission request with explanation
- [ ] 3.5.11. Implement map controls for zoom and centering
- [ ] 3.5.12. Create location services check and prompt
- [ ] 3.5.13. Implement rider home BLoC for state management
- [ ] 3.5.14. Create empty state for no upcoming rides
- [ ] 3.5.15. Implement pull-to-refresh for map and ride data

**VISUAL CHECKPOINT #24**: Test full rider home screen functionality including search, permissions, and interactions. Take screenshot of search in action.

### 3.6. Driver Home Screen
- [ ] 3.6.1. Create driver home layout with status section
- [ ] 3.6.2. Implement online/offline toggle with animation
- [ ] 3.6.3. Build current day's schedule view with timeline

**VISUAL CHECKPOINT #25**: Create initial driver home screen with online/offline toggle. Take screenshot of driver home with toggle states.

- [ ] 3.6.4. Create earnings summary widget with daily amount
- [ ] 3.6.5. Implement service area map view with boundaries
- [ ] 3.6.6. Add heat map overlay for demand areas
- [ ] 3.6.7. Build ride alert notification handling with sound
- [ ] 3.6.8. Create countdown timer for ride acceptance

**VISUAL CHECKPOINT #26**: Complete driver home screen with earnings and map elements. Take screenshot of fully implemented driver home.

- [ ] 3.6.9. Implement navigation to weekly schedule view
- [ ] 3.6.10. Add profile access from driver home
- [ ] 3.6.11. Create driver stats dashboard
- [ ] 3.6.12. Implement active ride highlighting
- [ ] 3.6.13. Create driver home BLoC for state management
- [ ] 3.6.14. Add driver location tracking with battery optimization
- [ ] 3.6.15. Implement offline data caching for routes

**VISUAL CHECKPOINT #27**: Test full driver home screen functionality including schedule view and stats. Take screenshot of each subscreen.

## 4. Feature Development Phase 2

### 4.1. Rider Profile & Settings
- [ ] 4.1.1. Create profile screen with user information display
- [ ] 4.1.2. Implement profile picture upload and cropping
- [ ] 4.1.3. Build profile editing form with validation

**VISUAL CHECKPOINT #28**: Create rider profile screen with editable fields. Take screenshot of profile screen.

- [ ] 4.1.4. Create settings screen with sections
- [ ] 4.1.5. Implement notification preferences toggles
- [ ] 4.1.6. Create language selection with localization
- [ ] 4.1.7. Build theme selection (dark/light) with preview
- [ ] 4.1.8. Implement logout functionality with confirmation

**VISUAL CHECKPOINT #29**: Create settings screen with all toggles and options. Take screenshot of settings screen.

- [ ] 4.1.9. Create account deletion option with verification
- [ ] 4.1.10. Build help & support access with contact options
- [ ] 4.1.11. Implement saved addresses management
- [ ] 4.1.12. Create payment methods section
- [ ] 4.1.13. Implement subscription details view
- [ ] 4.1.14. Build ride history access
- [ ] 4.1.15. Create app version and legal information section

**VISUAL CHECKPOINT #30**: Test full profile and settings functionality. Take screenshots of each settings subscreen.

### 4.2. Driver Profile & Verification
- [ ] 4.2.1. Create multi-step driver registration flow
- [ ] 4.2.2. Implement personal information form
- [ ] 4.2.3. Create document upload functionality with camera access

**VISUAL CHECKPOINT #31**: Create driver registration flow first steps. Take screenshots of registration screens.

- [ ] 4.2.4. Build vehicle information form with make/model selection
- [ ] 4.2.5. Implement license plate validation
- [ ] 4.2.6. Create driver verification status screen with progress tracking
- [ ] 4.2.7. Implement document verification status indicators
- [ ] 4.2.8. Build driver profile screen with public information

**VISUAL CHECKPOINT #32**: Complete driver registration flow with verification status. Take screenshots of vehicle info and verification screens.

- [ ] 4.2.9. Create driver biography editor
- [ ] 4.2.10. Implement driver settings screen
- [ ] 4.2.11. Create earnings history view with filtering
- [ ] 4.2.12. Implement bank account information management
- [ ] 4.2.13. Build secure ID verification process
- [ ] 4.2.14. Create vehicle photo upload section
- [ ] 4.2.15. Implement background check status display

**VISUAL CHECKPOINT #33**: Test complete driver profile section with all settings. Take screenshots of earnings and verification status screens.

### 4.3. Subscription Management
- [ ] 4.3.1. Create subscription plan models with different tiers
- [ ] 4.3.2. Implement SubscriptionRepository interface
- [ ] 4.3.3. Create FirebaseSubscriptionRepository implementation
- [ ] 4.3.4. Build subscription selection screen with plan comparison
- [ ] 4.3.5. Create animated subscription cards

**VISUAL CHECKPOINT #34**: Create subscription selection screen with plan options. Take screenshot of subscription selection screen.

- [ ] 4.3.6. Implement payment setup screen with Stripe integration
- [ ] 4.3.7. Create credit card input with validation
- [ ] 4.3.8. Build subscription confirmation flow with receipt
- [ ] 4.3.9. Implement subscription management screen
- [ ] 4.3.10. Create usage tracking with rides used/remaining

**VISUAL CHECKPOINT #35**: Create payment flow and subscription management screens. Take screenshots of payment and confirmation screens.

- [ ] 4.3.11. Implement plan upgrade/downgrade logic
- [ ] 4.3.12. Create upgrade benefits comparison
- [ ] 4.3.13. Build automatic renewal management
- [ ] 4.3.14. Implement subscription cancellation flow
- [ ] 4.3.15. Create subscription renewal notifications

**VISUAL CHECKPOINT #36**: Test complete subscription management flow including upgrades and cancellations. Take screenshots of each step.

### 4.4. Ride Scheduling
- [ ] 4.4.1. Create ride scheduling screen with map and form
- [ ] 4.4.2. Implement date picker with custom styling
- [ ] 4.4.3. Create time picker with available slots
- [ ] 4.4.4. Build location selection with saved addresses
- [ ] 4.4.5. Implement location search with autocomplete

**VISUAL CHECKPOINT #37**: Create ride scheduling screen with date/time pickers. Take screenshot of scheduling screen.

- [ ] 4.4.6. Create recurring ride options (daily, weekly)
- [ ] 4.4.7. Implement ride type selection (standard, premium)
- [ ] 4.4.8. Build route preview on map
- [ ] 4.4.9. Create estimated time and distance display
- [ ] 4.4.10. Implement driver preference selection from favorites

**VISUAL CHECKPOINT #38**: Create ride options and route preview screens. Take screenshots of ride options and map preview.

- [ ] 4.4.11. Create fare estimation with breakdown
- [ ] 4.4.12. Build scheduling confirmation with summary
- [ ] 4.4.13. Implement ride notes/special requests field
- [ ] 4.4.14. Create ride conflict detection
- [ ] 4.4.15. Implement scheduling BLoC for state management

**VISUAL CHECKPOINT #39**: Test complete ride scheduling flow from start to confirmation. Take screenshots of fare estimate and confirmation screens.

### 4.5. Ride Management (Rider)
- [ ] 4.5.1. Create upcoming ride screen with countdown
- [ ] 4.5.2. Implement ride details expansion panel
- [ ] 4.5.3. Build ride modification functionality with rescheduling
- [ ] 4.5.4. Create ride cancellation flow with policy
- [ ] 4.5.5. Implement cancellation fee calculation

**VISUAL CHECKPOINT #40**: Create upcoming ride management screen with modification options. Take screenshot of upcoming ride screen.

- [ ] 4.5.6. Create active ride tracking screen with map
- [ ] 4.5.7. Implement driver location tracking with updates
- [ ] 4.5.8. Build ETA display with minutes remaining
- [ ] 4.5.9. Create ride progress indicators (accepted, arriving, etc.)
- [ ] 4.5.10. Implement ride path visualization on map

**VISUAL CHECKPOINT #41**: Create active ride tracking screen with location updates. Take screenshot of active ride screen.

- [ ] 4.5.11. Create driver contact options (call, message)
- [ ] 4.5.12. Build in-app messaging with driver
- [ ] 4.5.13. Implement emergency contact feature
- [ ] 4.5.14. Create ride completion screen with fare
- [ ] 4.5.15. Implement driver rating with comments

**VISUAL CHECKPOINT #42**: Create ride completion flow with rating screen. Take screenshots of messaging and rating screens.

### 4.6. Ride Management (Driver)
- [ ] 4.6.1. Create ride alert screen with rider details
- [ ] 4.6.2. Implement ride acceptance/rejection with timer
- [ ] 4.6.3. Build navigation to pickup screen with directions
- [ ] 4.6.4. Create "Arrived at pickup" notification functionality
- [ ] 4.6.5. Implement rider waiting timer

**VISUAL CHECKPOINT #43**: Create ride alert and pickup navigation screens. Take screenshots of ride alert and navigation screens.

- [ ] 4.6.6. Create "Start Ride" functionality
- [ ] 4.6.7. Build active ride navigation with turn-by-turn directions
- [ ] 4.6.8. Implement ride status update controls
- [ ] 4.6.9. Create "Arrived at destination" confirmation
- [ ] 4.6.10. Build ride completion screen with summary

**VISUAL CHECKPOINT #44**: Create active ride screen for drivers with navigation. Take screenshots of active ride and completion screens.

- [ ] 4.6.11. Implement earnings calculation with breakdown
- [ ] 4.6.12. Create rider rating prompt
- [ ] 4.6.13. Build break time management between rides
- [ ] 4.6.14. Implement next ride preview
- [ ] 4.6.15. Create ride issues reporting

**VISUAL CHECKPOINT #45**: Create earnings and next ride preview screens. Take screenshots of earnings breakdown and upcoming ride preview.

## 5. Status Tracking

### 5.1. Progress Monitoring
- [ ] 5.1.1. Create status.md file for tracking implementation progress
- [ ] 5.1.2. Implement automated progress tracking
- [ ] 5.1.3. Set up task completion reporting
- [ ] 5.1.4. Create feature implementation summary
- [ ] 5.1.5. Set up issue tracking integration

**VISUAL CHECKPOINT #46**: Create a development dashboard showing progress statistics. Take screenshot of progress tracking dashboard.

### 5.2. Context Management
- [ ] 5.2.1. Create context files for Cursor AI
- [ ] 5.2.2. Set up file references between documents
- [ ] 5.2.3. Implement context retention system
- [ ] 5.2.4. Create implementation notes for each major component
- [ ] 5.2.5. Set up automated file opening based on current task

**VISUAL CHECKPOINT #47**: Create documentation site or README with implementation guide. Take screenshot of documentation.

## Important Note for Development Process

This checklist is designed to ensure visibility of progress at each stage. After completing each section marked with a **VISUAL CHECKPOINT**, take time to:

1. Run the app and verify the visual output
2. Take screenshots to document progress
3. Update status.md with:
   - What was completed
   - Any challenges encountered
   - Screenshots of the current state
   - Next steps

Remember to check implementation against the design references in the `/references` directory frequently to ensure UI consistency.

For the development approach:
1. Focus on one screen at a time
2. Complete and test each visual component before moving to the next
3. Prioritize ensuring each screen is functional before adding complex business logic
4. Regular testing on both Android and iOS platforms

When working on a task, remember to refer to:
- userflow.md for screen sequences and user journeys
- project_structure.md for code organization
- tech_stack.md for technology decisions
- timeline.md for development phases 