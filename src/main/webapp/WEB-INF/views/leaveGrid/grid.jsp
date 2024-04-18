<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="../ShareView/import.html"%>

    <style>
        .cell-content {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
            width: 100%;
        }

        .cell-content img {
            max-width: 100%;
            max-height: 100%;
            display: inline-block;
            vertical-align: middle;
        }

        /* 주말에 빨간색 배경 적용 */
        .grid-cell-0,
        .grid-cell-6 {
            background-color: red;
        }
    </style>




    <title>Document</title>
</head>

<body>


<nav class="fixed top-0 z-50 w-full bg-white dark:bg-gray-800 dark:border-gray-700">
    <div class="px-2 lg:px-5 lg:pl-3">
        <div class="flex items-center justify-between">
            <div class="flex items-center justify-start rtl:justify-end">
                <button data-drawer-target="logo-sidebar" data-drawer-toggle="logo-sidebar"
                        aria-controls="logo-sidebar" type="button"
                        class="inline-flex items-center p-2 text-sm text-gray-100 rounded-lg sm:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-whitetext-white">
                    <span class="sr-only">Open sidebar</span>
                    <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20"
                         xmlns="http://www.w3.org/2000/svg">
                        <path clip-rule="evenodd" fill-rule="evenodd"
                              d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z">
                        </path>
                    </svg>
                </button>
                <a href="https://flowbite.com" class="flex ms-2 md:me-0">
                    <!-- <img src="https://flowbite.com/docs/images/logo.svg" class="h-5 me-3" alt="HS Logo" /> -->
                    <img src="./img/hs2.logo.png" class="h-16 me-2" alt="HS Logo" />
                    <!-- <span class="self-center text-xl font-semibold sm:text-1xl whitespace-nowrap dark:text-white">HUMAN STORY</span> -->
                </a>
            </div>

            <!-- 우측 상단 Info & Icon -->
            <div class="flex items-center">
                <div class="flex items-center ms-3">

                    <a href="#"
                       class="flex items-center text-white hover:text-gray-900 rounded-lg dark:text-white group">
                        <svg class="w-7 h-7 text-gray-800 dark:text-white" aria-hidden="true"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                             viewBox="0 0 24 24">
                            <path
                                    d="M17.133 12.632v-1.8a5.406 5.406 0 0 0-4.154-5.262.955.955 0 0 0 .021-.106V3.1a1 1 0 0 0-2 0v2.364a.955.955 0 0 0 .021.106 5.406 5.406 0 0 0-4.154 5.262v1.8C6.867 15.018 5 15.614 5 16.807 5 17.4 5 18 5.538 18h12.924C19 18 19 17.4 19 16.807c0-1.193-1.867-1.789-1.867-4.175ZM8.823 19a3.453 3.453 0 0 0 6.354 0H8.823Z" />
                        </svg>
                    </a>
                    <a href="#"
                       class="flex items-center text-white hover:text-gray-900 rounded-lg dark:text-white group mr-1">
                        <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                             viewBox="0 0 24 24">
                            <path fill-rule="evenodd"
                                  d="M2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10S2 17.523 2 12Zm9.008-3.018a1.502 1.502 0 0 1 2.522 1.159v.024a1.44 1.44 0 0 1-1.493 1.418 1 1 0 0 0-1.037.999V14a1 1 0 1 0 2 0v-.539a3.44 3.44 0 0 0 2.529-3.256 3.502 3.502 0 0 0-7-.255 1 1 0 0 0 2 .076c.014-.398.187-.774.48-1.044Zm.982 7.026a1 1 0 1 0 0 2H12a1 1 0 1 0 0-2h-.01Z"
                                  clip-rule="evenodd" />
                        </svg>
                    </a>





                    <div>
                        <button type="button"
                                class="flex p-1 text-sm bg-gray-800 rounded-full focus:ring-4 focus:ring-gray-300 dark:focus:ring-whitetext-white"
                                aria-expanded="false" data-dropdown-toggle="dropdown-user">
                            <span class="sr-only">Open user menu</span>
                            <img class="w-8 h-8 rounded-full border-2" src="profile.png" alt="user photo">
                            <p class="text-1xl text-white dark:text-white p-1 mr-2" role="none">
                                강재헌
                            </p>

                        </button>
                    </div>
                    <div class="z-50 hidden my-4 text-base list-none bg-white divide-y divide-gray-100 rounded shadow dark:bg-gray-700 dark:divide-whitetext-white"
                         id="dropdown-user">
                        <div class="px-4 py-3" role="none">
                            <p class="text-sm text-black hover:text-gray-900 dark:text-white" role="none">
                                아이유는
                            </p>
                            <p class="text-sm font-medium text-black hover:text-gray-900 truncate dark:text-gray-300"
                               role="none">
                                재헌이를 안좋아해
                            </p>
                        </div>
                        <ul class="py-1" role="none">
                            <li>
                                <a href="#"
                                   class="block px-3 py-1 text-sm text-gray-700 hover:bg-gray-100 dark:text-gray-300 dark:hover:bg-whitetext-white dark:hover:text-white"
                                   role="menuitem">Dashboard</a>
                            </li>
                            <li>
                                <a href="#"
                                   class="block px-3 py-1 text-sm text-gray-700 hover:bg-gray-100 dark:text-gray-300 dark:hover:bg-whitetext-white dark:hover:text-white"
                                   role="menuitem">Settings</a>
                            </li>
                            <li>
                                <a href="#"
                                   class="block px-3 py-1 text-sm text-gray-700 hover:bg-gray-100 dark:text-gray-300 dark:hover:bg-whitetext-white dark:hover:text-white"
                                   role="menuitem">Document</a>
                            </li>
                            <li>
                                <a href="#"
                                   class="block px-3 py-1 text-sm text-gray-700 hover:bg-gray-100 dark:text-gray-300 dark:hover:bg-whitetext-white dark:hover:text-white"
                                   role="menuitem">Sign out</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>

        </div>
    </div>
</nav>
<!-- 상단 메뉴 끝 -->

<!-- 좌측 메뉴 시작 -->
<aside id="logo-sidebar"
       class="fixed top-2 left-0 z-40 w-64 h-screen pt-10 transition-transform -translate-x-full bg-white border-r border-gray-200 sm:translate-x-0 dark:bg-gray-800 dark:border-gray-700"
       aria-label="Sidebar">
    <div class="h-full px-4 pb-4 overflow-y-auto bg-gray-800 w-67 mt-4">

        <div class="flex justify-center items-center mt-8">
            <img class="w-24 h-24 rounded-full border-2" src="profile.png" alt="user photo">
        </div>


        <p class="text-xl text-white dark:text-white text-center font-bold mt-2" role="none">강재헌</p>
        <p class="text-sm text-white dark:text-white text-center" role="none">XXXX@KOTSTA270.COM</p>


        <!-- 프로필 하단 3개 아이콘 -->
        <div class="inline-flex rounded-md shadow-sm mt-3" role="group">
            <button type="button"
                    class="inline-flex flex-col items-center px-5 py-1 font-medium text-gray-400 bg-transparent border border-gray-700 rounded-s-lg hover:bg-gray-900 hover:text-white focus:z-10 focus:ring-2 focus:ring-gray-500 focus:bg-gray-900 focus:text-white dark:border-white dark:text-white dark:hover:text-white dark:hover:bg-gray-700 dark:focus:bg-gray-700">
                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                     viewBox="0 0 20 20">
                    <path
                            d="M10 0a10 10 0 1 0 10 10A10.011 10.011 0 0 0 10 0Zm0 5a3 3 0 1 1 0 6 3 3 0 0 1 0-6Zm0 13a8.949 8.949 0 0 1-4.951-1.488A3.987 3.987 0 0 1 9 13h2a3.987 3.987 0 0 1 3.951 3.512A8.949 8.949 0 0 1 10 18Z" />
                </svg>
                <span class="text-xs font-black mt-1">Profile</span>
            </button>

            <button type="button"
                    class="inline-flex flex-col items-center px-6 py-1  font-medium text-gray-400 bg-transparent border-t border-b border-gray-700 hover:bg-gray-900 hover:text-white focus:z-10 focus:ring-2 focus:ring-gray-500 focus:bg-gray-900 focus:text-white dark:border-white dark:text-white dark:hover:text-white dark:hover:bg-gray-700 dark:focus:bg-gray-700">
                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                     viewBox="0 0 20 20">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M4 12.25V1m0 11.25a2.25 2.25 0 0 0 0 4.5m0-4.5a2.25 2.25 0 0 1 0 4.5M4 19v-2.25m6-13.5V1m0 2.25a2.25 2.25 0 0 0 0 4.5m0-4.5a2.25 2.25 0 0 1 0 4.5M10 19V7.75m6 4.5V1m0 11.25a2.25 2.25 0 1 0 0 4.5 2.25 2.25 0 0 0 0-4.5ZM16 19v-2" />
                </svg>
                <span class="text-xs font-black mt-1">List</span>
            </button>
            <button type="button"
                    class="inline-flex flex-col items-center px-2 py-1  font-medium text-gray-400 bg-transparent border border-gray-700 rounded-e-lg hover:bg-gray-900 hover:text-white focus:z-10 focus:ring-2 focus:ring-gray-500 focus:bg-gray-900 focus:text-white dark:border-white dark:text-white dark:hover:text-white dark:hover:bg-gray-700 dark:focus:bg-gray-700">
                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                     viewBox="0 0 20 20">
                    <path
                            d="M14.707 7.793a1 1 0 0 0-1.414 0L11 10.086V1.5a1 1 0 0 0-2 0v8.586L6.707 7.793a1 1 0 1 0-1.414 1.414l4 4a1 1 0 0 0 1.416 0l4-4a1 1 0 0 0-.002-1.414Z" />
                    <path
                            d="M18 12h-2.55l-2.975 2.975a3.5 3.5 0 0 1-4.95 0L4.55 12H2a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2Zm-3 5a1 1 0 1 1 0-2 1 1 0 0 1 0 2Z" />
                </svg>
                <span class="text-xs font-black mt-1">Downloads</span>
            </button>
        </div>





        <ul class="space-y-4 font-midium">
            <li>
                <a href="http://127.0.0.1:3000/Main Original with Dashboard.html"
                   class="flex items-center p-1 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group mt-5">
                    <svg class="w-6 h-6 text-gray-100 transition duration-75 dark:text-gray-400 group-hover:text-white hover:text-gray-900 dark:group-hover:text-gray-100"
                         aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                         viewBox="0 0 21 21" style="margin-left: -1px;">
                        <path fill-rule="evenodd"
                              d="M11.293 3.293a1 1 0 0 1 1.414 0l6 6 2 2a1 1 0 0 1-1.414 1.414L19 12.414V19a2 2 0 0 1-2 2h-3a1 1 0 0 1-1-1v-3h-2v3a1 1 0 0 1-1 1H7a2 2 0 0 1-2-2v-6.586l-.293.293a1 1 0 0 1-1.414-1.414l2-2 6-6Z"
                              clip-rule="evenodd" />
                    </svg>
                    <span class="ms-3 mt-1.5">Home</span>
                </a>
            </li>

            <li>
                <a href="#"
                   class="flex items-center p-1 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                    <svg class="w-7 h-7 text-gray-100 transition duration-75 dark:text-gray-400 group-hover:text-white hover:text-gray-900 dark:group-hover:text-gray-100"
                         aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                         fill="currentColor" viewBox="0 0 24 24">
                        <path
                                d="M17.133 12.632v-1.8a5.406 5.406 0 0 0-4.154-5.262.955.955 0 0 0 .021-.106V3.1a1 1 0 0 0-2 0v2.364a.955.955 0 0 0 .021.106 5.406 5.406 0 0 0-4.154 5.262v1.8C6.867 15.018 5 15.614 5 16.807 5 17.4 5 18 5.538 18h12.924C19 18 19 17.4 19 16.807c0-1.193-1.867-1.789-1.867-4.175ZM6 6a1 1 0 0 1-.707-.293l-1-1a1 1 0 0 1 1.414-1.414l1 1A1 1 0 0 1 6 6Zm-2 4H3a1 1 0 0 1 0-2h1a1 1 0 1 1 0 2Zm14-4a1 1 0 0 1-.707-1.707l1-1a1 1 0 1 1 1.414 1.414l-1 1A1 1 0 0 1 18 6Zm3 4h-1a1 1 0 1 1 0-2h1a1 1 0 1 1 0 2ZM8.823 19a3.453 3.453 0 0 0 6.354 0H8.823Z" />
                    </svg>

                    <span class="flex-1 ms-2 whitespace-nowrap">Alert</span>
                    <!-- <span class="inline-flex items-center justify-center w-3 h-3 p-3 ms-3 text-sm font-medium text-blue-800 bg-blue-100 rounded-full dark:bg-blue-900 dark:text-blue-300">3</span> -->
                </a>
            </li>

            <li>
                <a href="#"
                   class="flex items-center p-1.5 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                    <svg class="w-6 h-6 text-gray-100 transition duration-75 dark:text-gray-400 group-hover:text-white hover:text-gray-900 dark:group-hover:text-gray-100"
                         aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                         fill="currentColor" viewBox="0 0 24 24">
                        <path fill-rule="evenodd"
                              d="M18 5.05h1a2 2 0 0 1 2 2v2H3v-2a2 2 0 0 1 2-2h1v-1a1 1 0 1 1 2 0v1h3v-1a1 1 0 1 1 2 0v1h3v-1a1 1 0 1 1 2 0v1Zm-15 6v8a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-8H3ZM11 18a1 1 0 1 0 2 0v-1h1a1 1 0 1 0 0-2h-1v-1a1 1 0 1 0-2 0v1h-1a1 1 0 1 0 0 2h1v1Z"
                              clip-rule="evenodd" />
                    </svg>

                    <span class="flex-1 ms-2.5 whitespace-nowrap">ADD Leaves</span>
                    <span
                            class="inline-flex items-center justify-center px-2 ms-3 text-xs font-bold text-gray-800 bg-gray-100 rounded-full dark:bg-gray-700 dark:text-gray-300">ADD</span>
                </a>
            </li>
            <!-- Dashboard -->
            <!-- <div x-data="{ open: false }">
        <li>
            <a href="#" class="flex items-center p-2 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                <button @click="open = !open" class="flex justify-between items-center pr-5 text-gra cursor-pointer hover:bg-gray-100 hover:text-gray-700 focus:outline-none">
                <svg class="w-5 h-5 text-white transition duration-75 dark:text-white group-hover:text-gray-900 hover:text-gray-900 dark:group-hover:text-gray-100" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 22">
                  <path d="M16.975 11H10V4.025a1 1 0 0 0-1.066-.998 8.5 8.5 0 1 0 9.039 9.039.999.999 0 0 0-1-1.066h.002Z"/>
                  <path d="M12.5 0c-.157 0-.311.01-.565.027A1 1 0 0 0 11 1.02V10h8.975a1 1 0 0 0 1-.935c.013-.188.028-.374.028-.565A8.51 8.51 0 0 0 12.5 0Z"/>
               </svg>
               <span class="hover:text-gray-900 ml-3 mr-8">Dashboard</span>
            </button>
            <span>
                <svg class="h-4 w-4 ml-3" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                 <path x-show="! open" d="M9 5L16 12L9 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: none;"></path>
                 <path x-show="open" d="M19 9L12 16L5 9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                 </svg>
                 </span>
            </a>
            <div x-show="open" class="bg-gray-800 rounded-lg">
                <a class="py-2 px-16 block text-sm text-white hover:bg-blue-500 hover:text-gray-900 hover:bg-white rounded-lg text-center" href="#">Calendar</a>
                <a class="py-2 px-16 block text-sm text-white hover:bg-blue-500 hover:text-gray-900 hover:bg-white rounded-lg text-center" href="#">PTO List</a>
            </div>
         </li>
        </div> -->
            <!-- --------------------- -->
            <div x-data="{ open: false }">
                <li>
                    <a href="#"
                       class="flex items-center p-2 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                        <button @click="open = !open"
                                class="flex justify-between items-center pl- text-gra cursor-pointer hover:bg-gray-100 hover:text-gray-700 focus:outline-none">
                            <svg class="w-5 h-5 text-white transition duration-75 dark:text-white group-hover:text-gray-900 hover:text-gray-900 dark:group-hover:text-gray-100"
                                 aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                                 viewBox="0 0 22 22">
                                <path
                                        d="M16.975 11H10V4.025a1 1 0 0 0-1.066-.998 8.5 8.5 0 1 0 9.039 9.039.999.999 0 0 0-1-1.066h.002Z" />
                                <path
                                        d="M12.5 0c-.157 0-.311.01-.565.027A1 1 0 0 0 11 1.02V10h8.975a1 1 0 0 0 1-.935c.013-.188.028-.374.028-.565A8.51 8.51 0 0 0 12.5 0Z" />
                            </svg>
                            <span class="hover:text-gray-900 ml-3 mr-8">Dashboard</span>
                            <span>
                                    <svg class="h-4 w-4 ml-6" viewBox="0 0 14 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path x-show="! open" d="M9 5L16 12L9 19" stroke="currentColor" stroke-width="2"
                                              stroke-linecap="round" stroke-linejoin="round" style="display: none;">
                                        </path>
                                        <path x-show="open" d="M19 9L12 16L5 9" stroke="currentColor" stroke-width="2"
                                              stroke-linecap="round" stroke-linejoin="round"></path>
                                    </svg>
                                </span>
                        </button>

                    </a>
                    <div x-show="open" class="bg-gray-800 rounded-lg">
                        <a class="py-2 px-16 block text-sm text-white hover:bg-blue-500 hover:text-gray-900 hover:bg-white rounded-lg text-center"
                           href="http://127.0.0.1:3000/Main.html">Calendar</a>
                        <a class="py-2 px-16 block text-sm text-white hover:bg-blue-500 hover:text-gray-900 hover:bg-white rounded-lg text-center"
                           href="http://127.0.0.1:3000/Grid/Grid Main/Grid.html">PTO List</a>
                    </div>
                </li>
            </div>
            <!-- Dashboard -->

            <li>
                <a href="#"
                   class="flex items-center p-1 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                    <svg class="w-7 h-7 text-gray-100 transition duration-75 dark:text-gray-400 group-hover:text-white hover:text-gray-900 dark:group-hover:text-gray-100" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                        <path fill-rule="evenodd"
                              d="M20 10H4v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8ZM9 13v-1h6v1a1 1 0 0 1-1 1h-4a1 1 0 0 1-1-1Z"
                              clip-rule="evenodd" />
                        <path d="M2 6a2 2 0 0 1 2-2h16a2 2 0 1 1 0 4H4a2 2 0 0 1-2-2Z" />
                    </svg>

                    <span class="flex-1 ms-2 whitespace-nowrap">Document</span>
                </a>
            </li>

            <!-- User Settings -->
            <div x-data="{ open: false }">
                <li>
                    <a href="#"
                       class="flex items-center p-1 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                        <button @click="open = !open"
                                class="flex justify-between items-center pl- text-gra cursor-pointer hover:bg-gray-100 hover:text-gray-700 focus:outline-none">
                            <svg class="w-8 h-8 text-gray-100 transition duration-75 dark:text-gray-400 group-hover:text-white hover:text-gray-900 dark:group-hover:text-gray-100"
                                 aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                 fill="currentColor" viewBox="0 0 24 24">
                                <path fill-rule="evenodd"
                                      d="M17 10v1.126c.367.095.714.24 1.032.428l.796-.797 1.415 1.415-.797.796c.188.318.333.665.428 1.032H21v2h-1.126c-.095.367-.24.714-.428 1.032l.797.796-1.415 1.415-.796-.797a3.979 3.979 0 0 1-1.032.428V20h-2v-1.126a3.977 3.977 0 0 1-1.032-.428l-.796.797-1.415-1.415.797-.796A3.975 3.975 0 0 1 12.126 16H11v-2h1.126c.095-.367.24-.714.428-1.032l-.797-.796 1.415-1.415.796.797A3.977 3.977 0 0 1 15 11.126V10h2Zm.406 3.578.016.016c.354.358.574.85.578 1.392v.028a2 2 0 0 1-3.409 1.406l-.01-.012a2 2 0 0 1 2.826-2.83ZM5 8a4 4 0 1 1 7.938.703 7.029 7.029 0 0 0-3.235 3.235A4 4 0 0 1 5 8Zm4.29 5H7a4 4 0 0 0-4 4v1a2 2 0 0 0 2 2h6.101A6.979 6.979 0 0 1 9 15c0-.695.101-1.366.29-2Z"
                                      clip-rule="evenodd" />
                            </svg>
                            <span class="hover:text-gray-900 ml-1 mr-8">Users Settings</span>
                            <span>
                                    <svg class="h-4 w-4 ml-4" viewBox="0 0 14 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path x-show="! open" d="M9 5L16 12L9 19" stroke="currentColor" stroke-width="2"
                                              stroke-linecap="round" stroke-linejoin="round" style="display: none;">
                                        </path>
                                        <path x-show="open" d="M19 9L12 16L5 9" stroke="currentColor" stroke-width="2"
                                              stroke-linecap="round" stroke-linejoin="round"></path>
                                    </svg>
                                </span>
                        </button>

                    </a>
                    <div x-show="open" class="bg-gray-800 rounded-lg">
                        <a class="py-2 px-16 block text-sm text-white hover:bg-blue-500 hover:text-gray-900 hover:bg-white rounded-lg text-center"
                           href="#">Employees</a>
                        <a class="py-2 px-16 block text-sm text-white hover:bg-blue-500 hover:text-gray-900 hover:bg-white rounded-lg text-center"
                           href="#">Department</a>
                    </div>
                </li>
            </div>

            <!-- ------------ -->
            <!-- <li>
          <a href="#" class="flex items-center p-1 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
           <svg class="w-8 h-8 text-gray-100 transition duration-75 dark:text-gray-400 group-hover:text-white hover:text-gray-900 dark:group-hover:text-gray-100" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
              <path fill-rule="evenodd" d="M17 10v1.126c.367.095.714.24 1.032.428l.796-.797 1.415 1.415-.797.796c.188.318.333.665.428 1.032H21v2h-1.126c-.095.367-.24.714-.428 1.032l.797.796-1.415 1.415-.796-.797a3.979 3.979 0 0 1-1.032.428V20h-2v-1.126a3.977 3.977 0 0 1-1.032-.428l-.796.797-1.415-1.415.797-.796A3.975 3.975 0 0 1 12.126 16H11v-2h1.126c.095-.367.24-.714.428-1.032l-.797-.796 1.415-1.415.796.797A3.977 3.977 0 0 1 15 11.126V10h2Zm.406 3.578.016.016c.354.358.574.85.578 1.392v.028a2 2 0 0 1-3.409 1.406l-.01-.012a2 2 0 0 1 2.826-2.83ZM5 8a4 4 0 1 1 7.938.703 7.029 7.029 0 0 0-3.235 3.235A4 4 0 0 1 5 8Zm4.29 5H7a4 4 0 0 0-4 4v1a2 2 0 0 0 2 2h6.101A6.979 6.979 0 0 1 9 15c0-.695.101-1.366.29-2Z" clip-rule="evenodd"/>
            </svg>

             <span class="flex-1 ms-1 whitespace-nowrap">Users Settings</span>
          </a>
       </li> -->


            <!-- Logout -->
            <li>
                <a href="#"
                   class="flex items-center p-2 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                    <svg class="w-6 h-6 text-gray-100 transition duration-75 dark:text-gray-400 group-hover:text-white hover:text-gray-900 dark:group-hover:text-white"
                         aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                         fill="currentColor" viewBox="0 0 24 24">
                        <path fill-rule="evenodd"
                              d="M9.586 2.586A2 2 0 0 1 11 2h2a2 2 0 0 1 2 2v.089l.473.196.063-.063a2.002 2.002 0 0 1 2.828 0l1.414 1.414a2 2 0 0 1 0 2.827l-.063.064.196.473H20a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2h-.089l-.196.473.063.063a2.002 2.002 0 0 1 0 2.828l-1.414 1.414a2 2 0 0 1-2.828 0l-.063-.063-.473.196V20a2 2 0 0 1-2 2h-2a2 2 0 0 1-2-2v-.089l-.473-.196-.063.063a2.002 2.002 0 0 1-2.828 0l-1.414-1.414a2 2 0 0 1 0-2.827l.063-.064L4.089 15H4a2 2 0 0 1-2-2v-2a2 2 0 0 1 2-2h.09l.195-.473-.063-.063a2 2 0 0 1 0-2.828l1.414-1.414a2 2 0 0 1 2.827 0l.064.063L9 4.089V4a2 2 0 0 1 .586-1.414ZM8 12a4 4 0 1 1 8 0 4 4 0 0 1-8 0Z"
                              clip-rule="evenodd" />
                    </svg>

                    <span class="flex-1 ms-2 whitespace-nowrap">Settings</span>
                </a>
            </li>
            <li>
                <a href="#"
                   class="flex items-center p-2 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                    <svg class="flex-shrink-0 text-gray-100 transition duration-75 dark:text-gray-400 group-hover:text-white hover:text-gray-900 dark:group-hover:text-white"
                         aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                         viewBox="0 0 24 24">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M20 12H8m12 0-4 4m4-4-4-4M9 4H7a3 3 0 0 0-3 3v10a3 3 0 0 0 3 3h2" />
                    </svg>
                    <span class="flex-1 ms-2 whitespace-nowrap">Logout</span>
                </a>
            </li>




            <!-- 추가 버튼 -->
            <!-- <li>
        <a href="#" class="flex items-center p-2 text-white hover:text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
         <svg class="flex-shrink-0 text-gray-100 transition duration-75 dark:text-gray-400 group-hover:text-white hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 12H8m12 0-4 4m4-4-4-4M9 4H7a3 3 0 0 0-3 3v10a3 3 0 0 0 3 3h2"/>
          </svg>
           <span class="flex-1 ms-2 whitespace-nowrap">Logout</span>
        </a>
     </li> -->
        </ul>
    </div>
</aside>

<!-- 리스트 시작 지점 -->

<div class="sm:ml-64 mt-14 bg-gray-100 p-4">

    <div class="flex justify-between w-full max-w-full bg-white rounded-lg shadow-lg overflow-hidden mb-4 p-4">
        <!-- 이전 달 버튼 -->
        <button id="prevMonthBtn"
                class="px-4 py-2 bg-gray-800 text-white rounded-md focus:outline-none focus:bg-gray-600"><svg
                xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 cursor-pointer" fill="none" viewBox="0 0 24 24"
                stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
        </svg>
        </button>
        <!-- 월 표시 -->
        <h2 id="currentMonth" class="text-lg font-semibold"></h2>
        <!-- 다음 달 버튼 -->
        <button id="nextMonthBtn"
                class="px-4 py-2 bg-gray-800 text-white rounded-md focus:outline-none focus:bg-gray-600">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 cursor-pointer" fill="none" viewBox="0 0 24 24"
                 stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
            </svg>
        </button>
    </div>

    <div id="grid" class="w-full max-w-full bg-white rounded-lg shadow-lg overflow-hidden"></div>

    <script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function () {

            let currentDate = new Date();
            let currentYear = currentDate.getFullYear();
            let currentMonth = currentDate.getMonth() + 1; // 월은 1을 더해줍니다.

            function generateColumns(year, month) {
                const daysInMonth = new Date(year, month, 0).getDate(); // 이전 달의 마지막 날을 가져옵니다.
                const columns = [
                    { header: 'ID', name: 'employeeId' },
                    { header: 'Employee Name', name: 'employeeName', width: 120 } // Employee Name 열 추가
                ];
                // 요일을 추가합니다.
                for (let i = 1; i <= daysInMonth; i++) {
                    columns.push({
                        header: i,
                        name: 'col'+i,
                        renderer: 'html' // HTML 렌더링을 사용합니다.
                    });
                }
                return columns;
            }



            async function generateData(year, month) {

                const daysInMonth = new Date(year, month, 0).getDate(); // 이전 달의 마지막 날을 가져옵니다.
                const data = [];

                const response = await fetch('http://localhost:8081/leave/grid');
                const jsonData = await response.json();

                for (const employee of jsonData) {
                    const employeeData = { employeeId: employee.empNum, employeeName: employee.employeeName }; // employeeId 추가
                    for (let i = 1; i <= daysInMonth; i++) {
                        const currentDate = new Date(year, month - 1, i + 1); // 날짜는 1을 빼주고 1일부터 시작합니다.
                        const key = currentDate.toISOString().split('T')[0]; // ISO 형식으로 변환하여 키 생성
                        const value = (key >= employee.startDate && key <= employee.endDate) ? `<div class="cell-content"><img src="./img/plane.png" alt="V"></div>` : ''; // 이미지로 표시
                        employeeData['col'+i] = value;
                    }
                    data.push(employeeData);
                }

                return data;
            }


            const instance = new tui.Grid({
                el: document.getElementById('grid'),
                columns: generateColumns(currentYear, currentMonth),
                data: []
            });

            tui.Grid.applyTheme('striped');

            // 버튼 클릭 시 이벤트 처리
            document.getElementById('prevMonthBtn').addEventListener('click', function () {
                currentMonth -= 1;
                if (currentMonth < 1) {
                    currentYear -= 1;
                    currentMonth = 12;
                }
                updateGrid(currentYear, currentMonth);
            });

            document.getElementById('nextMonthBtn').addEventListener('click', function () {
                currentMonth += 1;
                if (currentMonth > 12) {
                    currentYear += 1;
                    currentMonth = 1;
                }
                updateGrid(currentYear, currentMonth);
            });

            // 그리드 업데이트 함수
            async function updateGrid(year, month) {
                const grid = instance;

                // 컬럼 업데이트
                const newColumns = generateColumns(year, month);
                grid.setColumns(newColumns);

                // 데이터 업데이트
                const newData = await generateData(year, month);
                grid.resetData(newData);

                // 월 표시 업데이트
                document.getElementById('currentMonth').textContent = year + '년 ' + month + '월'; // 월은 1을 더하지 않습니다.
            }

            // 초기 월 표시
            document.getElementById('currentMonth').textContent = `${currentYear}년  ${currentMonth}월`; // 월은 1을 더하지 않습니다.

            // 초기 그리드 업데이트
            updateGrid(currentYear, currentMonth);
        });
    </script>


    <footer class="p-4 bg-white md:p-4 lg:p-5 dark:bg-gray-800">
        <div class="mx-auto max-w-screen-xl text-center">
            <a href="#"
               class="flex justify-center items-center text-2xl font-semibold text-gray-900 dark:text-white">
                <img src="./img/hs2.logo.only.png" class="h-14 me-2" alt="HS Logo" />
                <!-- <svg class="mr-2 h-8" viewBox="0 0 33 33" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M25.2696 13.126C25.1955 13.6364 24.8589 14.3299 24.4728 14.9328C23.9856 15.6936 23.2125 16.2264 22.3276 16.4114L18.43 17.2265C17.8035 17.3575 17.2355 17.6853 16.8089 18.1621L14.2533 21.0188C13.773 21.5556 13.4373 21.4276 13.4373 20.7075C13.4315 20.7342 12.1689 23.9903 15.5149 25.9202C16.8005 26.6618 18.6511 26.3953 19.9367 25.6538L26.7486 21.7247C29.2961 20.2553 31.0948 17.7695 31.6926 14.892C31.7163 14.7781 31.7345 14.6639 31.7542 14.5498L25.2696 13.126Z" fill="url(#paint0_linear_11430_22515)"/><path d="M23.5028 9.20133C24.7884 9.94288 25.3137 11.0469 25.3137 12.53C25.3137 12.7313 25.2979 12.9302 25.2694 13.1261L28.0141 14.3051L31.754 14.5499C32.2329 11.7784 31.2944 8.92561 29.612 6.65804C28.3459 4.9516 26.7167 3.47073 24.7581 2.34097C23.167 1.42325 21.5136 0.818599 19.8525 0.486816L17.9861 2.90382L17.3965 5.67918L23.5028 9.20133Z" fill="url(#paint1_linear_11430_22515)"/><path d="M1.5336 11.2352C1.5329 11.2373 1.53483 11.238 1.53556 11.2358C1.67958 10.8038 1.86018 10.3219 2.08564 9.80704C3.26334 7.11765 5.53286 5.32397 8.32492 4.40943C11.117 3.49491 14.1655 3.81547 16.7101 5.28323L17.3965 5.67913L19.8525 0.486761C12.041 -1.07341 4.05728 3.51588 1.54353 11.2051C1.54233 11.2087 1.53796 11.2216 1.5336 11.2352Z" fill="url(#paint2_linear_11430_22515)"/><path d="M19.6699 25.6538C18.3843 26.3953 16.8003 26.3953 15.5147 25.6538C15.3402 25.5531 15.1757 25.4399 15.0201 25.3174L12.7591 26.8719L10.8103 30.0209C12.9733 31.821 15.7821 32.3997 18.589 32.0779C20.7013 31.8357 22.7995 31.1665 24.7582 30.0368C26.3492 29.1191 27.7 27.9909 28.8182 26.7195L27.6563 23.8962L25.7762 22.1316L19.6699 25.6538Z" fill="url(#paint3_linear_11430_22515)"/><path d="M15.0201 25.3175C14.0296 24.5373 13.4371 23.3406 13.4371 22.0588V21.931V11.2558C13.4371 10.6521 13.615 10.5494 14.1384 10.8513C13.3323 10.3864 11.4703 8.79036 9.17118 10.1165C7.88557 10.858 6.8269 12.4949 6.8269 13.978V21.8362C6.8269 24.775 8.34906 27.8406 10.5445 29.7966C10.6313 29.874 10.7212 29.9469 10.8103 30.0211L15.0201 25.3175Z" fill="url(#paint4_linear_11430_22515)"/><path d="M28.6604 5.49565C28.6589 5.49395 28.6573 5.49532 28.6589 5.49703C28.9613 5.83763 29.2888 6.23485 29.6223 6.68734C31.3648 9.05099 32.0158 12.0447 31.4126 14.9176C30.8093 17.7906 29.0071 20.2679 26.4625 21.7357L25.7761 22.1316L28.8181 26.7195C34.0764 20.741 34.09 11.5388 28.6815 5.51929C28.6789 5.51641 28.67 5.50622 28.6604 5.49565Z" fill="url(#paint5_linear_11430_22515)"/><path d="M7.09355 13.978C7.09354 12.4949 7.88551 11.1244 9.17113 10.3829C9.34564 10.2822 9.52601 10.1965 9.71002 10.1231L9.49304 7.38962L7.96861 4.26221C5.32671 5.23364 3.1897 7.24125 2.06528 9.83067C1.2191 11.7793 0.75001 13.9294 0.75 16.1888C0.75 18.0243 1.05255 19.7571 1.59553 21.3603L4.62391 21.7666L7.09355 21.0223V13.978Z" fill="url(#paint6_linear_11430_22515)"/><path d="M9.71016 10.1231C10.8817 9.65623 12.2153 9.74199 13.3264 10.3829L13.4372 10.4468L22.3326 15.5777C22.9566 15.9376 22.8999 16.2918 22.1946 16.4392L22.7078 16.332C23.383 16.1908 23.9999 15.8457 24.4717 15.3428C25.2828 14.4782 25.5806 13.4351 25.5806 12.5299C25.5806 11.0468 24.7886 9.67634 23.503 8.93479L16.6911 5.00568C14.1436 3.53627 11.0895 3.22294 8.29622 4.14442C8.18572 4.18087 8.07756 4.2222 7.96875 4.26221L9.71016 10.1231Z" fill="url(#paint7_linear_11430_22515)"/><path d="M20.0721 31.8357C20.0744 31.8352 20.0739 31.8332 20.0717 31.8337C19.6252 31.925 19.1172 32.0097 18.5581 32.0721C15.638 32.3978 12.7174 31.4643 10.5286 29.5059C8.33986 27.5474 7.09347 24.7495 7.09348 21.814L7.09347 21.0222L1.59546 21.3602C4.1488 28.8989 12.1189 33.5118 20.0411 31.8421C20.0449 31.8413 20.0582 31.8387 20.0721 31.8357Z" fill="url(#paint8_linear_11430_22515)"/>
            <defs>
            <linearGradient id="paint0_linear_11430_22515" x1="20.8102" y1="23.9532" x2="23.9577" y2="12.9901" gradientUnits="userSpaceOnUse"><stop stop-color="#1724C9"/><stop offset="1" stop-color="#1C64F2"/></linearGradient>
            <linearGradient id="paint1_linear_11430_22515" x1="28.0593" y1="10.5837" x2="19.7797" y2="2.33321" gradientUnits="userSpaceOnUse"><stop stop-color="#1C64F2"/><stop offset="1" stop-color="#0092FF"/></linearGradient>
            <linearGradient id="paint2_linear_11430_22515" x1="16.9145" y1="5.2045" x2="4.42432" y2="5.99375" gradientUnits="userSpaceOnUse"><stop stop-color="#0092FF"/><stop offset="1" stop-color="#45B2FF"/></linearGradient>
            <linearGradient id="paint3_linear_11430_22515" x1="16.0698" y1="28.846" x2="27.2866" y2="25.8192" gradientUnits="userSpaceOnUse"><stop stop-color="#1C64F2"/><stop offset="1" stop-color="#0092FF"/></linearGradient>
            <linearGradient id="paint4_linear_11430_22515" x1="8.01881" y1="15.8661" x2="15.9825" y2="24.1181" gradientUnits="userSpaceOnUse"><stop stop-color="#1724C9"/><stop offset="1" stop-color="#1C64F2"/></linearGradient>
            <linearGradient id="paint5_linear_11430_22515" x1="26.2004" y1="21.8189" x2="31.7569" y2="10.6178" gradientUnits="userSpaceOnUse"><stop stop-color="#0092FF"/><stop offset="1" stop-color="#45B2FF"/></linearGradient>
            <linearGradient id="paint6_linear_11430_22515" x1="6.11387" y1="9.31427" x2="3.14054" y2="20.4898" gradientUnits="userSpaceOnUse"><stop stop-color="#1C64F2"/><stop offset="1" stop-color="#0092FF"/></linearGradient>
            <linearGradient id="paint7_linear_11430_22515" x1="21.2932" y1="8.78271" x2="10.4278" y2="11.488" gradientUnits="userSpaceOnUse"><stop stop-color="#1724C9"/><stop offset="1" stop-color="#1C64F2"/></linearGradient>
            <linearGradient id="paint8_linear_11430_22515" x1="7.15667" y1="21.5399" x2="14.0824" y2="31.9579" gradientUnits="userSpaceOnUse"><stop stop-color="#0092FF"/><stop offset="1" stop-color="#45B2FF"/></linearGradient>
            </defs>
        </svg> -->
                HUMAN STORY
            </a>
            <p class="my-6 text-gray-500 dark:text-gray-400">Take a Break, Unlock Your Potential<br> (재헌이 멍청이 바보 해삼
                멍게)</p>
            <ul class="flex flex-wrap justify-center items-center mb-6 text-gray-900 dark:text-white">
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6 ">About</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6">Premium</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6 ">Campaigns</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6">Blog</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6">Affiliate Program</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6">FAQs</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6">Contact</a>
                </li>
            </ul>
            <span class="text-sm text-gray-500 sm:text-center dark:text-gray-400">© 2024-2025 <a href="#"
                                                                                                 class="hover:underline">HUMAN STORY™</a>. All Rights Reserved.</span>
        </div>
    </footer>

</div>

</body>


</html>


</html>