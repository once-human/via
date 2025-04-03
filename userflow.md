# VIA App - User Flow Documentation

## Overview

This document outlines the complete user flow for the VIA app, a subscription-based ride service. The flow is organized by user type (rider/driver) and includes all screens with their functionality and transitions.

## User Types

1. **Riders** - Primary users who subscribe to the service and book rides
2. **Drivers** - Service providers who fulfill ride requests and maintain scheduled routes

## Common Flows

### Authentication Flow

#### 1. Splash Screen
- App logo animation with branded background
- Transitions automatically to Welcome/Onboarding for new users or Home for returning authenticated users

#### 2. Onboarding Screens (screen1.png, onboarding v2.png)
- **Screen 1:** Introduction to VIA's subscription model
- **Screen 2:** Highlighting the pre-scheduled rides feature
- **Screen 3:** Showcasing fixed pricing and driver selection
- **Screen 4:** Explaining the benefits for commuters and drivers
- Each screen has a "Next" button and progress indicator
- Final screen has "Get Started" button

#### 3. Authentication Screens
- **Sign Up Screen:** Fields for name, email, phone, password, profile photo upload
- **Login Screen:** Email/phone and password fields with social login options (Google, Apple)
- **Phone Verification Screen:** OTP input with countdown timer
- **Forgot Password Screen:** Email input for password reset link

## Rider Flow

### Subscription Management

#### 4. Subscription Selection Screen (screen3.png)
- Display of available subscription plans (weekly/monthly)
- Plan details include number of rides, price, and features
- "Subscribe" button for each plan

#### 5. Payment Setup Screen (screen4.png)
- Credit/debit card input
- Other payment method options (PayPal, Google Pay, etc.)
- Billing information input
- "Confirm Payment" button

#### 6. Subscription Confirmation Screen
- Confirmation message with subscription details
- "Go to Home" button

### Home & Profile

#### 7. Home Screen (HOME FINALLLL.png, screen5.png)
- Main navigation bar with Home, Rides, Profile tabs
- User's active subscription status
- Quick access to schedule new rides
- Map view showing nearby drivers
- Upcoming scheduled rides
- "Schedule Ride" button

#### 8. Profile Screen (screen6.png)
- User information and profile picture
- Edit profile option
- Subscription details and management
- Payment methods management
- Ride history access
- Settings access
- Support/Help access
- Logout option

#### 9. Settings Screen (screen7.png)
- Notification preferences
- Language selection
- Theme selection (dark/light)
- Privacy settings
- Terms and conditions
- App version information

### Ride Scheduling

#### 10. Schedule Ride Screen (screen8.png, screen9.png)
- Pickup location input with map view
- Destination input with map view
- Date and time selection
- Recurrence options (one-time, daily, weekly)
- Ride type selection
- "Confirm Schedule" button

#### 11. Driver Selection Screen (screen10.png)
- List of available drivers with ratings and details
- Filter options for driver preferences
- "Select Driver" button

#### 12. Ride Confirmation Screen (screen11.png, ride booking-confirmed 16.png)
- Summary of ride details (pickup, destination, time, driver)
- Payment method confirmation
- "Confirm Ride" button

### Active Ride Management

#### 13. Upcoming Ride Screen (screen12.png)
- Countdown to next scheduled ride
- Ride details with map preview
- Driver information
- "Cancel Ride" option
- "Modify Ride" option

#### 14. Active Ride Screen (ongoing ride.png, ongoing ride2.png)
- Real-time map showing driver location
- ETA information
- Driver details and contact options
- Ride progress status
- "Cancel Ride" button

#### 15. Ride Completion Screen (screen13.png)
- Ride summary (route, time, cost)
- Rating and feedback prompt for driver
- "Complete" button
- Option to schedule a similar ride

#### 16. Ride History Screen (screen14.png)
- List of past rides with details
- Filters for date range and ride type
- Search functionality
- Option to book similar rides

### Subscription Management

#### 17. My Subscription Screen
- Current subscription details
- Usage statistics (rides used/remaining)
- Upgrade/downgrade options
- Renewal information
- Cancellation option

## Driver Flow

### Registration & Onboarding

#### 18. Driver Registration Screen
- Personal information input
- Vehicle information input
- License and insurance document upload
- Bank account/payment information
- Background check consent

#### 19. Driver Verification Screen
- Document verification status
- Background check status
- Vehicle inspection status
- "Complete Registration" button when all verifications pass

### Home & Schedule

#### 20. Driver Home Screen
- Online/Offline toggle
- Current day's scheduled rides
- Map view of service area
- Earnings summary
- Quick access to upcoming schedules

#### 21. Weekly Schedule Screen
- Calendar view of upcoming week
- Assigned rides for each day
- Availability management
- Time block allocation

#### 22. Earnings Screen
- Current earnings summary
- Weekly/monthly earnings breakdown
- Transaction history
- Payout settings and history

### Ride Management

#### 23. Ride Alert Screen (screen15-ridebooking.png)
- Incoming ride notification
- Ride details (pickup, destination, time)
- "Accept" and "Decline" options with countdown

#### 24. Ride Navigation Screen (ride booking -17.png)
- Turn-by-turn navigation to pickup location
- Passenger information and contact options
- "Arrived" button

#### 25. Active Ride Screen (for driver)
- Turn-by-turn navigation to destination
- Ride progress tracking
- "End Ride" button
- Emergency assistance option

#### 26. Ride Completion Screen (for driver)
- Ride summary (route, time, fare)
- Next scheduled ride preview
- Break time indicator
- "Ready for Next Ride" button

## Special Flows

### Support & Help

#### 27. Help Center Screen
- FAQ sections
- Video tutorials
- Contact support options
- Issue reporting form

#### 28. Issue Reporting Screen
- Issue category selection
- Description input
- Attachment option (photo/video)
- Submission confirmation

### Notifications

#### 29. Notification Center
- Categorized notifications (rides, subscription, system)
- Read/unread indicators
- Action buttons where applicable
- Clear all option

## Screen States and Transitions

### Loading States
- Skeleton loading screens for data-heavy views
- Shimmer effects for elegant loading experience
- Progress indicators for time-sensitive operations

### Error States
- Network error screens with retry options
- Location permission denial handling
- Payment failure handling
- Service unavailability notifications

### Transitions
- Smooth card transitions between related screens
- Slide transitions for sequential flows
- Fade transitions for modal overlays
- Map zoom transitions for location-based screens

## User Journey Maps

### First-Time Rider
1. Splash Screen → Onboarding → Sign Up → Phone Verification → Subscription Selection → Payment Setup → Home

### Regular Commuter
1. Splash Screen → Login → Home → Schedule Ride → Driver Selection → Ride Confirmation → Home
2. Home → Upcoming Ride → Active Ride → Ride Completion → Rating → Home

### Subscription Management
1. Home → Profile → My Subscription → Subscription Selection → Payment Confirmation → Home

### Driver Onboarding
1. Splash Screen → Driver Registration → Document Upload → Verification → Driver Home

### Regular Driver Day
1. Splash Screen → Login → Driver Home → Ride Alert → Ride Navigation → Active Ride → Ride Completion → Driver Home

## Implementation Priorities

### MVP Phase 1 (Core Functionality)
- Authentication Flow
- Basic Rider Home
- Ride Scheduling
- Basic Driver Home
- Ride Acceptance and Completion

### Phase 2 (Enhanced Experience)
- Driver Selection
- Ride History
- Ratings and Reviews
- Enhanced Navigation
- Notification Center

### Phase 3 (Full Features)
- Subscription Management
- Driver Schedule Optimization
- Analytics and Reports
- Support Center
- Social Features

## Design System Integration

All screens will follow the color palette and design system defined in "color pallete.png" with:
- Primary Color: #4B39EF (purple)
- Secondary Color: #FF9D42 (orange)
- Background: #F1F4F8 (light gray)
- Text Primary: #1D2429 (dark gray)
- Text Secondary: #57636C (medium gray)
- Success: #39D2C0 (teal)
- Error: #FF5963 (red)
- White: #FFFFFF
- Black: #000000

## Conclusion

This user flow document serves as a comprehensive guide for implementing the VIA app. The screens and flows outlined here directly correspond to the reference designs and align with the subscription-based ride service concept. The implementation should follow the Flutter-based tech stack defined in the tech_stack.md document to ensure optimal performance and user experience. 