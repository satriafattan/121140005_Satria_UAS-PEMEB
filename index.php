<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UAS Pemrograman Web</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-800">
    <div class="relative bg-blue-600 text-white">
        <div class="container mx-auto p-12 text-center">
            <h1 class="text-5xl font-bold mb-4">Selamat Datang di Website Saya</h1>
            <p class="text-lg">Sebuah Website Untuk Mendaftar</p>
        </div>
        <div class="absolute inset-0 bg-opacity-50 bg-blue-700" style="background: url('D:\laragon\www\Tubes PEMWEB\aset\images.jpeg') center/cover no-repeat;"></div>
    </div>

    <div class="container mx-auto p-4">
    
        <form id="formData" action="server.php" method="POST" class="max-w-lg mx-auto bg-white p-6 rounded-lg shadow-lg">
            <div class="mb-4">
                <label for="name" class="block text-sm font-medium text-gray-700">Name:</label>
                <input type="text" id="name" name="name" class="mt-1 block w-full p-2 border border-gray-300 rounded-md">
            </div>

            <div class="mb-4">
                <label for="email" class="block text-sm font-medium text-gray-700">Email:</label>
                <input type="email" id="email" name="email" class="mt-1 block w-full p-2 border border-gray-300 rounded-md">
            </div>

            <div class="mb-4">
                <span class="block text-sm font-medium text-gray-700">Gender:</span>
                <div class="mt-1">
                    <label class="inline-flex items-center">
                        <input type="radio" name="gender" value="Male" class="text-blue-600">
                        <span class="ml-2">Male</span>
                    </label>
                    <label class="inline-flex items-center ml-4">
                        <input type="radio" name="gender" value="Female" class="text-blue-600">
                        <span class="ml-2">Female</span>
                    </label>
                </div>
            </div>

            <div class="mb-4">
                <label class="inline-flex items-center">
                    <input type="checkbox" id="terms" name="terms" class="text-blue-600">
                    <span class="ml-2">Accept Terms</span>
                </label>
            </div>

            <button type="submit" class="w-full bg-blue-600 text-white py-2 px-4 rounded hover:bg-blue-700">Submit</button>
        </form>

        <h2 class="text-2xl font-bold text-center text-gray-700 mt-12">Data Table</h2>
        <div class="overflow-x-auto mt-4">
            <table class="min-w-full bg-white rounded-lg shadow-md">
                <thead>
                    <tr class="bg-gray-100 border-b">
                        <th class="px-4 py-2 text-left text-sm font-medium text-gray-500">Name</th>
                        <th class="px-4 py-2 text-left text-sm font-medium text-gray-500">Email</th>
                        <th class="px-4 py-2 text-left text-sm font-medium text-gray-500">Gender</th>
                        <th class="px-4 py-2 text-left text-sm font-medium text-gray-500">Date Submitted</th>
                    </tr>
                </thead>
                <tbody id="data-table-body" class="divide-y divide-gray-200"></tbody>
            </table>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
