<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelEase - Available Activities</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-50">
    <!-- Navigation -->
    <nav class="bg-blue-900 fixed w-full z-20 top-0">
        <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
            <!-- Logo -->
            <a href="#" class="flex items-center space-x-3">
                <span class="self-center text-2xl font-bold text-white">TravelEase</span>
            </a>

            <!-- Mobile menu button -->
            <button type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-white rounded-lg md:hidden hover:bg-blue-800 focus:outline-none focus:ring-2 focus:ring-blue-300">
                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
                </svg>
            </button>

            <!-- Menu -->
            <div class="hidden w-full md:block md:w-auto">
                <ul class="flex flex-col p-4 md:p-0 mt-4 font-medium rounded-lg md:flex-row md:space-x-8 md:mt-0">
                    <li>
                        <a href="../index.php" class="block py-2 pl-3 pr-4 text-white hover:text-blue-200 md:p-0">Home</a>
                    </li>
                    <li>
                        <a href="../pages/activities.php" class="block py-2 pl-3 pr-4 text-blue-200 border-b-2 border-blue-200 md:p-0">Activities</a>
                    </li>
                </ul>
            </div>

            <!-- Auth Buttons -->
            <div class="hidden md:flex items-center space-x-3">
                <a href="../autentification/login.php" class="text-white hover:text-blue-200 font-medium rounded-lg text-sm px-4 py-2">Login</a>
                <a href="../autentification/signUp.php" class="text-blue-900 bg-white hover:bg-blue-100 font-medium rounded-lg text-sm px-4 py-2">Sign Up</a>
            </div>
        </div>
    </nav>

    <!-- Page Header -->
    <section class="bg-gradient-to-b from-blue-900 to-blue-700 text-white pt-24">
        <div class="max-w-screen-xl px-4 py-8 mx-auto">
            <h1 class="text-4xl font-bold mb-4">Available Activities</h1>
            <p class="text-blue-100">Discover and book amazing experiences for your next adventure</p>
        </div>
    </section>

    <!-- Activities Grid -->
    <section class="py-12">
        <div class="max-w-screen-xl px-4 mx-auto">
            <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
                <!-- Activity Card 1 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="img/paris.jpg" alt="Paris City Tour" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <div class="flex justify-between items-start mb-4">
                            <div>
                                <h3 class="text-xl font-bold text-blue-900">Paris City Tour</h3>
                                <p class="text-gray-600">Guided tour of iconic landmarks</p>
                            </div>
                        </div>
                        <div class="mb-4">
                            <div class="flex items-center mb-12">
                                <svg class="w-5 h-5 text-gray-500 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                                <span class="text-gray-600">Duration: 4 hours</span>
                            </div>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="text-2xl font-bold text-blue-900">$99</span>
                            <button class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition-colors">
                                Reserve Now
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Activity Card 2 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="/api/placeholder/400/300" alt="Bali Beach Resort" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <div class="flex justify-between items-start mb-4">
                            <div>
                                <h3 class="text-xl font-bold text-blue-900">Bali Beach Resort</h3>
                                <p class="text-gray-600">Luxury beachfront accommodation</p>
                            </div>
                        </div>
                        <div class="mb-4">
                            <div class="flex items-center mb-12">
                                <svg class="w-5 h-5 text-gray-500 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                                <span class="text-gray-600">Per night</span>
                            </div>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="text-2xl font-bold text-blue-900">$299</span>
                            <button class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition-colors">
                                Reserve Now
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Activity Card 3 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="/api/placeholder/400/300" alt="Tokyo to Kyoto" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <div class="flex justify-between items-start mb-4">
                            <div>
                                <h3 class="text-xl font-bold text-blue-900">Tokyo to Kyoto</h3>
                                <p class="text-gray-600">Express train tickets</p>
                            </div>
                        </div>
                        <div class="mb-4">
                            <div class="flex items-center mb-12">
                                <svg class="w-5 h-5 text-gray-500 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                                <span class="text-gray-600">2.5 hours</span>
                            </div>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="text-2xl font-bold text-blue-900">$149</span>
                            <button class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition-colors">
                                Reserve Now
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-blue-950 text-white">
        <div class="max-w-screen-xl px-4 py-8 mx-auto">
            <div class="text-center">
                <span class="text-sm text-blue-200">© 2024 TravelEase™. All rights reserved.</span>
            </div>
        </div>
    </footer>
</body>
</html>