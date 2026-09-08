<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>NexusShop | Friendly Shopping</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        /* =========================================================
           NEXUSSHOP - ORANGE EDITION
           ========================================================= */

        :root {
            --primary: #2d211b;
            --primary-soft: #49362b;

            --orange: #ff6b1a;
            --orange-dark: #e65308;
            --orange-light: #fff0e6;
            --orange-pale: #fff8f3;

            --cream: #fffaf6;
            --white: #ffffff;

            --bg: #f8f5f2;
            --surface: #f1ebe6;

            --text: #2d211b;
            --muted: #776b64;
            --muted-light: #a99e97;

            --green: #24966f;
            --red: #e84b4b;
            --yellow: #f5b942;

            --radius: 18px;
            --radius-sm: 12px;

            --shadow: 0 6px 25px rgba(45, 33, 27, .07);
            --shadow-hover: 0 18px 45px rgba(45, 33, 27, .14);

            --transition: .25s ease;

            --container: 1240px;
        }

        /* DARK MODE */

        body.dark {
            --primary: #fff;
            --primary-soft: #eee5df;

            --bg: #181411;
            --cream: #211b17;
            --white: #241d18;

            --surface: #302720;

            --text: #fff;
            --muted: #c2b6ae;
            --muted-light: #93867d;

            --orange-light: #432615;
            --orange-pale: #2c2019;

            --shadow: 0 6px 25px rgba(0, 0, 0, .3);
            --shadow-hover: 0 18px 45px rgba(0, 0, 0, .45);
        }

        /* RESET */

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, Arial, sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.5;
            transition: background .3s, color .3s;
        }

        button,
        input {
            font-family: inherit;
        }

        button {
            border: 0;
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            width: 100%;
            display: block;
        }

        .container {
            width: min(100% - 40px, var(--container));
            margin: auto;
        }

        /* =========================================================
           TOP BAR
           ========================================================= */

        .topbar {
            background: var(--primary);
            color: #fff;
            padding: 8px 0;
            font-size: 13px;
        }

        .topbar-inner {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        .topbar span {
            opacity: .9;
        }

        /* =========================================================
           HEADER
           ========================================================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255, 250, 246, .94);
            backdrop-filter: blur(15px);
            border-bottom: 1px solid rgba(45, 33, 27, .06);
        }

        body.dark header {
            background: rgba(24, 20, 17, .94);
        }

        .header-inner {
            min-height: 72px;
            display: flex;
            align-items: center;
            gap: 25px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 9px;
            font-size: 22px;
            font-weight: 800;
            white-space: nowrap;
        }

        .brand i {
            color: var(--orange);
            font-size: 25px;
        }

        .accent {
            color: var(--orange);
        }

        nav {
            margin-left: auto;
        }

        nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
        }

        nav a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 9px 14px;
            border-radius: 30px;
            color: var(--muted);
            font-size: 14px;
            font-weight: 600;
            transition: var(--transition);
        }

        nav a:hover,
        nav a.active {
            background: var(--orange-light);
            color: var(--orange);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 7px;
        }

        /* SEARCH */

        .search {
            display: flex;
            align-items: center;
            width: 230px;
            padding: 0 14px;
            background: var(--white);
            border: 2px solid var(--surface);
            border-radius: 50px;
            transition: var(--transition);
        }

        .search:focus-within {
            border-color: var(--orange);
            box-shadow: 0 0 0 5px rgba(255, 107, 26, .10);
        }

        .search input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            color: var(--text);
            padding: 11px 8px;
        }

        .search i {
            color: var(--muted);
        }

        .icon-btn {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: transparent;
            color: var(--muted);
            display: grid;
            place-items: center;
            font-size: 17px;
            position: relative;
            transition: var(--transition);
        }

        .icon-btn:hover {
            background: var(--orange-light);
            color: var(--orange);
        }

        .badge-count {
            position: absolute;
            top: -2px;
            right: -1px;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: var(--orange);
            color: white;
            font-size: 10px;
            font-weight: 800;
            border: 2px solid var(--white);
        }

        .mobile-menu-btn {
            display: none;
        }

        /* =========================================================
           HERO
           ========================================================= */

        .hero {
            margin-top: 20px;
            min-height: 500px;
            border-radius: 25px;
            overflow: hidden;
            position: relative;
            display: flex;
            align-items: center;
            background:
                linear-gradient(110deg, #ff6b1a 0%, #f98b43 48%, #ffb36f 100%);
        }

        .hero::after {
            content: "";
            position: absolute;
            width: 520px;
            height: 520px;
            right: -130px;
            top: -170px;
            border-radius: 50%;
            background: rgba(255,255,255,.13);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 630px;
            padding: 70px 0;
            color: white;
        }

        .hero-label {
            display: inline-flex;
            gap: 8px;
            align-items: center;
            padding: 7px 16px;
            background: rgba(255,255,255,.17);
            border: 1px solid rgba(255,255,255,.25);
            border-radius: 50px;
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 18px;
        }

        .hero h1 {
            font-family: "Playfair Display", serif;
            font-size: clamp(38px, 5vw, 62px);
            line-height: 1.08;
            margin-bottom: 18px;
        }

        .hero p {
            max-width: 540px;
            font-size: 17px;
            opacity: .9;
            margin-bottom: 28px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* BUTTONS */

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            border-radius: 50px;
            padding: 13px 25px;
            font-weight: 700;
            transition: var(--transition);
        }

        .btn-orange {
            background: var(--orange);
            color: white;
        }

        .btn-orange:hover {
            background: var(--orange-dark);
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(255,107,26,.3);
        }

        .btn-white {
            background: white;
            color: var(--orange);
        }

        .btn-white:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(0,0,0,.12);
        }

        .btn-outline {
            background: transparent;
            border: 2px solid var(--surface);
            color: var(--text);
        }

        .btn-outline:hover {
            border-color: var(--orange);
            color: var(--orange);
        }

        /* =========================================================
           TRUST BAR
           ========================================================= */

        .trust {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
            margin: 25px 0 5px;
        }

        .trust-card {
            background: var(--white);
            padding: 20px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .trust-icon {
            width: 45px;
            height: 45px;
            display: grid;
            place-items: center;
            background: var(--orange-light);
            color: var(--orange);
            border-radius: 50%;
        }

        .trust-card h4 {
            font-size: 14px;
        }

        .trust-card p {
            font-size: 12px;
            color: var(--muted);
        }

        /* =========================================================
           SECTIONS
           ========================================================= */

        .section {
            padding: 65px 0;
        }

        .section-head {
            display: flex;
            align-items: end;
            justify-content: space-between;
            margin-bottom: 28px;
            gap: 15px;
        }

        .section-head h2 {
            font-size: 30px;
            letter-spacing: -.5px;
        }

        .section-head p {
            color: var(--muted);
            font-size: 14px;
            margin-top: 5px;
        }

        .view-all {
            color: var(--orange);
            font-weight: 700;
            font-size: 14px;
        }

        /* =========================================================
           CATEGORIES
           ========================================================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 15px;
        }

        .category {
            background: var(--white);
            padding: 25px 12px;
            text-align: center;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            cursor: pointer;
            border: 2px solid transparent;
            transition: var(--transition);
        }

        .category:hover,
        .category.selected {
            border-color: var(--orange);
            transform: translateY(-5px);
        }

        .category-icon {
            width: 62px;
            height: 62px;
            margin: auto auto 12px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: var(--orange-light);
            color: var(--orange);
            font-size: 24px;
        }

        .category h4 {
            font-size: 14px;
        }

        .category span {
            color: var(--muted);
            font-size: 12px;
        }

        /* =========================================================
           PRODUCT GRID
           ========================================================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            background: var(--white);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 2px solid transparent;
        }

        .product:hover {
            transform: translateY(-7px);
            box-shadow: var(--shadow-hover);
            border-color: var(--orange-light);
        }

        .product-image {
            height: 235px;
            background: var(--surface);
            position: relative;
            overflow: hidden;
        }

        .product-image img {
            height: 100%;
            object-fit: cover;
            transition: .4s ease;
        }

        .product:hover .product-image img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;
            top: 13px;
            left: 13px;
            padding: 5px 11px;
            border-radius: 30px;
            background: var(--orange);
            color: white;
            font-size: 10px;
            font-weight: 800;
        }

        .product-badge.sale {
            background: var(--red);
        }

        .heart {
            position: absolute;
            right: 13px;
            top: 13px;
            width: 38px;
            height: 38px;
            background: rgba(255,255,255,.92);
            border-radius: 50%;
            display: grid;
            place-items: center;
            color: #756b65;
            transition: var(--transition);
        }

        .heart:hover,
        .heart.liked {
            color: var(--red);
            transform: scale(1.08);
        }

        .product-body {
            padding: 17px;
        }

        .product-category {
            color: var(--muted-light);
            font-size: 11px;
            text-transform: uppercase;
            font-weight: 700;
            letter-spacing: .7px;
        }

        .product h3 {
            font-size: 15px;
            margin: 5px 0 8px;
            line-height: 1.35;
        }

        .rating {
            color: var(--yellow);
            font-size: 12px;
        }

        .rating span {
            color: var(--muted);
            margin-left: 4px;
        }

        .price {
            margin-top: 10px;
            display: flex;
            align-items: center;
            gap: 9px;
        }

        .price strong {
            font-size: 19px;
        }

        .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 13px;
        }

        .add-cart {
            width: 100%;
            margin-top: 13px;
            padding: 11px;
            background: var(--primary);
            color: white;
            border-radius: 10px;
            font-weight: 700;
            transition: var(--transition);
        }

        .add-cart:hover {
            background: var(--orange);
        }

        /* =========================================================
           DEAL
           ========================================================= */

        .deal {
            background: var(--primary);
            color: white;
            border-radius: var(--radius);
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
        }

        .deal-image {
            min-height: 350px;
        }

        .deal-image img {
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-tag {
            align-self: flex-start;
            background: var(--orange);
            color: white;
            padding: 6px 14px;
            border-radius: 30px;
            font-size: 11px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .deal h2 {
            font-size: 32px;
            margin-bottom: 8px;
        }

        .deal p {
            color: rgba(255,255,255,.7);
            margin-bottom: 18px;
        }

        .deal-price {
            font-size: 32px;
            font-weight: 800;
            color: #ff9b5e;
        }

        .deal-price del {
            font-size: 17px;
            color: #999;
            margin-left: 8px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 20px 0;
        }

        .time-box {
            background: rgba(255,255,255,.08);
            border: 1px solid rgba(255,255,255,.08);
            border-radius: 10px;
            min-width: 65px;
            text-align: center;
            padding: 9px;
        }

        .time-box strong {
            display: block;
            font-size: 22px;
        }

        .time-box span {
            font-size: 9px;
            opacity: .6;
            text-transform: uppercase;
        }

        /* =========================================================
           REVIEWS
           ========================================================= */

        .reviews {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .review {
            background: var(--white);
            padding: 27px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
        }

        .review-stars {
            color: var(--yellow);
            margin-bottom: 13px;
        }

        .review p {
            color: var(--muted);
            font-size: 14px;
            line-height: 1.7;
        }

        .review-user {
            display: flex;
            align-items: center;
            gap: 11px;
            margin-top: 18px;
        }

        .avatar {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
        }

        .review-user strong {
            font-size: 13px;
        }

        .review-user small {
            display: block;
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================================================
           NEWSLETTER
           ========================================================= */

        .newsletter {
            background: var(--orange);
            color: white;
            padding: 40px;
            border-radius: var(--radius);
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 25px;
        }

        .newsletter h2 {
            font-size: 25px;
        }

        .newsletter p {
            opacity: .85;
            font-size: 14px;
        }

        .newsletter-form {
            display: flex;
            gap: 8px;
            width: 450px;
            max-width: 100%;
        }

        .newsletter-form input {
            flex: 1;
            min-width: 0;
            padding: 13px 18px;
            border: 0;
            outline: 0;
            border-radius: 50px;
        }

        .newsletter-form button {
            padding: 13px 20px;
            border-radius: 50px;
            background: var(--primary);
            color: white;
            font-weight: 700;
        }

        #newsletterMsg {
            font-size: 12px;
            margin-top: 7px;
        }

        /* =========================================================
           FOOTER
           ========================================================= */

        footer {
            margin-top: 60px;
            padding: 50px 0 25px;
            background: var(--primary);
            color: white;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }

        .footer-brand p {
            color: #b9aaa1;
            font-size: 13px;
            max-width: 320px;
            margin-top: 12px;
        }

        .footer h4 {
            margin-bottom: 14px;
        }

        .footer ul {
            list-style: none;
        }

        .footer li {
            margin: 8px 0;
        }

        .footer li a {
            color: #b9aaa1;
            font-size: 13px;
        }

        .footer li a:hover {
            color: #ff995f;
        }

        .socials {
            display: flex;
            gap: 9px;
            margin-top: 18px;
        }

        .socials a {
            width: 37px;
            height: 37px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: rgba(255,255,255,.08);
        }

        .copyright {
            border-top: 1px solid rgba(255,255,255,.08);
            margin-top: 35px;
            padding-top: 20px;
            text-align: center;
            color: #8e8179;
            font-size: 12px;
        }

        /* =========================================================
           CART DRAWER
           ========================================================= */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.45);
            z-index: 2000;
            display: none;
        }

        .overlay.show {
            display: block;
        }

        .cart-drawer {
            position: fixed;
            right: -430px;
            top: 0;
            width: min(430px, 100%);
            height: 100vh;
            background: var(--white);
            z-index: 2100;
            transition: .3s ease;
            display: flex;
            flex-direction: column;
            box-shadow: -10px 0 40px rgba(0,0,0,.15);
        }

        .cart-drawer.open {
            right: 0;
        }

        .cart-header {
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid var(--surface);
        }

        .cart-header h2 {
            font-size: 20px;
        }

        .close-cart {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: var(--surface);
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 15px 20px;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 65px 1fr auto;
            gap: 12px;
            padding: 14px 0;
            border-bottom: 1px solid var(--surface);
        }

        .cart-item img {
            width: 65px;
            height: 65px;
            border-radius: 10px;
            object-fit: cover;
        }

        .cart-item h4 {
            font-size: 13px;
        }

        .cart-item small {
            color: var(--muted);
        }

        .qty {
            display: flex;
            align-items: center;
            gap: 7px;
            margin-top: 7px;
        }

        .qty button {
            width: 24px;
            height: 24px;
            border-radius: 50%;
            background: var(--surface);
        }

        .remove {
            color: var(--red);
            font-size: 12px;
            margin-top: 7px;
        }

        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--surface);
        }

        .subtotal {
            display: flex;
            justify-content: space-between;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .empty-cart {
            padding: 60px 20px;
            text-align: center;
            color: var(--muted);
        }

        .empty-cart i {
            color: var(--orange);
            font-size: 45px;
            margin-bottom: 15px;
        }

        /* =========================================================
           TOAST
           ========================================================= */

        #toast {
            position: fixed;
            left: 50%;
            bottom: 25px;
            transform: translate(-50%, 100px);
            background: var(--primary);
            color: white;
            padding: 13px 20px;
            border-radius: 50px;
            font-size: 13px;
            z-index: 5000;
            opacity: 0;
            transition: .3s ease;
        }

        #toast.show {
            transform: translate(-50%, 0);
            opacity: 1;
        }

        /* =========================================================
           MOBILE
           ========================================================= */

        @media(max-width: 1100px) {
            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            nav {
                display: none;
            }

            .mobile-menu-btn {
                display: grid;
                place-items: center;
            }
        }

        @media(max-width: 800px) {
            .container {
                width: min(100% - 28px, var(--container));
            }

            .search {
                width: 150px;
            }

            .trust {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 230px;
            }

            .deal-content {
                padding: 30px;
            }

            .reviews {
                grid-template-columns: 1fr;
            }

            .newsletter {
                flex-direction: column;
                text-align: center;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width: 550px) {
            .topbar-inner {
                justify-content: center;
            }

            .topbar-inner span:last-child {
                display: none;
            }

            .header-inner {
                gap: 8px;
            }

            .brand {
                font-size: 18px;
            }

            .brand i {
                font-size: 20px;
            }

            .search {
                width: 120px;
            }

            .search input {
                width: 70px;
                font-size: 12px;
            }

            .header-right .icon-btn:nth-child(2) {
                display: none;
            }

            .hero {
                min-height: 420px;
                border-radius: 18px;
            }

            .hero-content {
                padding: 40px 0;
            }

            .hero h1 {
                font-size: 38px;
            }

            .hero p {
                font-size: 14px;
            }

            .trust {
                grid-template-columns: 1fr 1fr;
                gap: 8px;
            }

            .trust-card {
                padding: 13px;
            }

            .trust-card p {
                display: none;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }

            .product-image {
                height: 165px;
            }

            .product-body {
                padding: 12px;
            }

            .product h3 {
                font-size: 13px;
            }

            .price strong {
                font-size: 16px;
            }

            .add-cart {
                font-size: 11px;
            }

            .section {
                padding: 42px 0;
            }

            .section-head h2 {
                font-size: 24px;
            }

            .newsletter {
                padding: 25px 18px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

<!-- =========================================================
     TOP BAR
     ========================================================= -->

<div class="topbar">
    <div class="container topbar-inner">
        <span><i class="fa-solid fa-truck"></i> Free delivery on orders above ₹999</span>
        <span>Easy returns · Secure payments · 24/7 support</span>
    </div>
</div>

<!-- =========================================================
     HEADER
     ========================================================= -->

<header>
    <div class="container header-inner">

        <button class="icon-btn mobile-menu-btn" id="mobileMenuBtn">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="brand">
            <i class="fa-solid fa-bag-shopping"></i>
            <span>Nexus<span class="accent">Shop</span></span>
        </a>

        <nav id="mainNav">
            <ul>
                <li><a class="active" href="#home">Home</a></li>
                <li><a href="#categories">Categories</a></li>
                <li><a href="#products">Trending</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#reviews">Reviews</a></li>
            </ul>
        </nav>

        <div class="header-right">

            <div class="search">
                <input
                        type="search"
                        id="searchInput"
                        placeholder="Search..."
                        aria-label="Search products">
                <i class="fa-solid fa-magnifying-glass"></i>
            </div>

            <button class="icon-btn" id="darkModeBtn" title="Toggle dark mode">
                <i class="fa-solid fa-moon"></i>
            </button>

            <button class="icon-btn" title="Wishlist" onclick="showWishlist()">
                <i class="fa-regular fa-heart"></i>
                <span class="badge-count" id="wishlistCount">0</span>
            </button>

            <button class="icon-btn" title="Shopping cart" id="cartBtn">
                <i class="fa-solid fa-cart-shopping"></i>
                <span class="badge-count" id="cartCount">0</span>
            </button>

        </div>
    </div>
</header>

<!-- =========================================================
     MAIN
     ========================================================= -->

<main id="home">

    <!-- HERO -->

    <div class="container">
        <section class="hero">

            <div class="container">
                <div class="hero-content">

                    <div class="hero-label">
                        <i class="fa-solid fa-sparkles"></i>
                        Fresh picks, friendly prices
                    </div>

                    <h1>
                        Shopping made
                        <span style="color:#ffe0c8;">simple & joyful.</span>
                    </h1>

                    <p>
                        Discover products you'll love, enjoy great deals,
                        and get everything delivered right to your doorstep.
                    </p>

                    <div class="hero-buttons">
                        <a href="#products" class="btn btn-white">
                            Shop now
                            <i class="fa-solid fa-arrow-right"></i>
                        </a>

                        <a href="#deals" class="btn"
                           style="border:2px solid rgba(255,255,255,.4);color:white;">
                            Today's deals
                        </a>
                    </div>

                </div>
            </div>

        </section>
    </div>

    <!-- TRUST -->

    <div class="container">
        <section class="trust">

            <div class="trust-card">
                <div class="trust-icon">
                    <i class="fa-solid fa-truck-fast"></i>
                </div>
                <div>
                    <h4>Fast delivery</h4>
                    <p>Quick doorstep delivery</p>
                </div>
            </div>

            <div class="trust-card">
                <div class="trust-icon">
                    <i class="fa-solid fa-shield-halved"></i>
                </div>
                <div>
                    <h4>Secure payments</h4>
                    <p>100% protected checkout</p>
                </div>
            </div>

            <div class="trust-card">
                <div class="trust-icon">
                    <i class="fa-solid fa-rotate-left"></i>
                </div>
                <div>
                    <h4>Easy returns</h4>
                    <p>Hassle-free returns</p>
                </div>
            </div>

            <div class="trust-card">
                <div class="trust-icon">
                    <i class="fa-solid fa-headset"></i>
                </div>
                <div>
                    <h4>Friendly support</h4>
                    <p>We're here to help</p>
                </div>
            </div>

        </section>
    </div>

    <!-- =====================================================
         CATEGORIES
         ===================================================== -->

    <section class="section" id="categories">

        <div class="container">

            <div class="section-head">
                <div>
                    <h2>Shop by category</h2>
                    <p>Find something perfect for you.</p>
                </div>
            </div>

            <div class="categories">

                <div class="category" data-category="Electronics">
                    <div class="category-icon">
                        <i class="fa-solid fa-mobile-screen-button"></i>
                    </div>
                    <h4>Electronics</h4>
                    <span>24 items</span>
                </div>

                <div class="category" data-category="Fashion">
                    <div class="category-icon">
                        <i class="fa-solid fa-shirt"></i>
                    </div>
                    <h4>Fashion</h4>
                    <span>42 items</span>
                </div>

                <div class="category" data-category="Home">
                    <div class="category-icon">
                        <i class="fa-solid fa-house"></i>
                    </div>
                    <h4>Home</h4>
                    <span>31 items</span>
                </div>

                <div class="category" data-category="Beauty">
                    <div class="category-icon">
                        <i class="fa-solid fa-spa"></i>
                    </div>
                    <h4>Beauty</h4>
                    <span>18 items</span>
                </div>

                <div class="category" data-category="Sports">
                    <div class="category-icon">
                        <i class="fa-solid fa-dumbbell"></i>
                    </div>
                    <h4>Sports</h4>
                    <span>26 items</span>
                </div>

                <div class="category" data-category="Accessories">
                    <div class="category-icon">
                        <i class="fa-solid fa-watch"></i>
                    </div>
                    <h4>Accessories</h4>
                    <span>37 items</span>
                </div>

            </div>
        </div>
    </section>

    <!-- =====================================================
         PRODUCTS
         ===================================================== -->

    <section class="section" id="products" style="padding-top:20px;">

        <div class="container">

            <div class="section-head">
                <div>
                    <h2>Trending right now 🔥</h2>
                    <p>Customer favourites picked for you.</p>
                </div>

                <button class="view-all" onclick="resetProducts()">
                    View all <i class="fa-solid fa-arrow-right"></i>
                </button>
            </div>

            <div class="products" id="productGrid">

                <!-- PRODUCT 1 -->

                <article class="product"
                         data-name="Wireless Headphones"
                         data-category="Electronics"
                         data-price="2499">

                    <div class="product-image">

                        <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80"
                             alt="Wireless headphones">

                        <span class="product-badge">POPULAR</span>

                        <button class="heart"
                                data-product="Wireless Headphones"
                                aria-label="Add to wishlist">
                            <i class="fa-regular fa-heart"></i>
                        </button>

                    </div>

                    <div class="product-body">
                        <div class="product-category">Electronics</div>

                        <h3>Wireless Headphones</h3>

                        <div class="rating">
                            ★★★★★ <span>(128)</span>
                        </div>

                        <div class="price">
                            <strong>₹2,499</strong>
                            <span class="old-price">₹3,999</span>
                        </div>

                        <button class="add-cart"
                                data-name="Wireless Headphones"
                                data-price="2499"
                                data-image="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80">
                            <i class="fa-solid fa-cart-plus"></i>
                            Add to cart
                        </button>
                    </div>
                </article>

                <!-- PRODUCT 2 -->

                <article class="product"
                         data-name="Classic Sneakers"
                         data-category="Fashion"
                         data-price="1899">

                    <div class="product-image">

                        <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
                             alt="Classic sneakers">

                        <span class="product-badge sale">SALE</span>

                        <button class="heart"
                                data-product="Classic Sneakers">
                            <i class="fa-regular fa-heart"></i>
                        </button>

                    </div>

                    <div class="product-body">

                        <div class="product-category">Fashion</div>

                        <h3>Classic Everyday Sneakers</h3>

                        <div class="rating">
                            ★★★★☆ <span>(94)</span>
                        </div>

                        <div class="price">
                            <strong>₹1,899</strong>
                            <span class="old-price">₹2,999</span>
                        </div>

                        <button class="add-cart"
                                data-name="Classic Sneakers"
                                data-price="1899"
                                data-image="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80">
                            <i class="fa-solid fa-cart-plus"></i>
                            Add to cart
                        </button>

                    </div>
                </article>

                <!-- PRODUCT 3 -->

                <article class="product"
                         data-name="Minimal Desk Lamp"
                         data-category="Home"
                         data-price="1299">

                    <div class="product-image">

                        <img src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=700&q=80"
                             alt="Desk lamp">

                        <span class="product-badge">NEW</span>

                        <button class="heart"
                                data-product="Minimal Desk Lamp">
                            <i class="fa-regular fa-heart"></i>
                        </button>

                    </div>

                    <div class="product-body">

                        <div class="product-category">Home</div>

                        <h3>Minimal Desk Lamp</h3>

                        <div class="rating">
                            ★★★★★ <span>(67)</span>
                        </div>

                        <div class="price">
                            <strong>₹1,299</strong>
                            <span class="old-price">₹1,799</span>
                        </div>

                        <button class="add-cart"
                                data-name="Minimal Desk Lamp"
                                data-price="1299"
                                data-image="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=700&q=80">
                            <i class="fa-solid fa-cart-plus"></i>
                            Add to cart
                        </button>

                    </div>
                </article>

                <!-- PRODUCT 4 -->

                <article class="product"
                         data-name="Smart Watch"
                         data-category="Accessories"
                         data-price="3299">

                    <div class="product-image">

                        <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"
                             alt="Smart watch">

                        <span class="product-badge">HOT</span>

                        <button class="heart"
                                data-product="Smart Watch">
                            <i class="fa-regular fa-heart"></i>
                        </button>

                    </div>

                    <div class="product-body">

                        <div class="product-category">Accessories</div>

                        <h3>Everyday Smart Watch</h3>

                        <div class="rating">
                            ★★★★★ <span>(211)</span>
                        </div>

                        <div class="price">
                            <strong>₹3,299</strong>
                            <span class="old-price">₹4,499</span>
                        </div>

                        <button class="add-cart"
                                data-name="Smart Watch"
                                data-price="3299"
                                data-image="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80">
                            <i class="fa-solid fa-cart-plus"></i>
                            Add to cart
                        </button>

                    </div>
                </article>

                <!-- PRODUCT 5 -->

                <article class="product"
                         data-name="Skincare Set"
                         data-category="Beauty"
                         data-price="1599">

                    <div class="product-image">

                        <img src="https://images.unsplash.com/photo-1556228720-195a672e8a03?auto=format&fit=crop&w=700&q=80"
                             alt="Skincare products">

                        <span class="product-badge">NEW</span>

                        <button class="heart"
                                data-product="Skincare Set">
                            <i class="fa-regular fa-heart"></i>
                        </button>

                    </div>

                    <div class="product-body">

                        <div class="product-category">Beauty</div>

                        <h3>Daily Skincare Set</h3>

                        <div class="rating">
                            ★★★★★ <span>(83)</span>
                        </div>

                        <div class="price">
                            <strong>₹1,599</strong>
                            <span class="old-price">₹2,199</span>
                        </div>

                        <button class="add-cart"
                                data-name="Skincare Set"
                                data-price="1599"
                                data-image="https://images.unsplash.com/photo-1556228720-195a672e8a03?auto=format&fit=crop&w=700&q=80">
                            <i class="fa-solid fa-cart-plus"></i>
                            Add to cart
                        </button>

                    </div>
                </article>

                <!-- PRODUCT 6 -->

                <article class="product"
                         data-name="Yoga Mat"
                         data-category="Sports"
                         data-price="999">

                    <div class="product-image">

                        <img src="https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?auto=format&fit=crop&w=700&q=80"
                             alt="Yoga mat">

                        <span class="product-badge sale">SALE</span>

                        <button class="heart"
                                data-product="Yoga Mat">
                            <i class="fa-regular fa-heart"></i>
                        </button>

                    </div>

                    <div class="product-body">

                        <div class="product-category">Sports</div>

                        <h3>Comfort Yoga Mat</h3>

                        <div class="rating">
                            ★★★★☆ <span>(52)</span>
                        </div>

                        <div class="price">
                            <strong>₹999</strong>
                            <span class="old-price">₹1,499</span>
                        </div>

                        <button class="add-cart"
                                data-name="Yoga Mat"
                                data-price="999"
                                data-image="https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?auto=format&fit=crop&w=700&q=80">
                            <i class="fa-solid fa-cart-plus"></i>
                            Add to cart
                        </button>

                    </div>
                </article>

                <!-- PRODUCT 7 -->

                <article class="product"
                         data-name="Travel Backpack"
                         data-category="Accessories"
                         data-price="2199">

                    <div class="product-image">

                        <img src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80"
                             alt="Travel backpack">

                        <span class="product-badge">POPULAR</span>

                        <button class="heart"
                                data-product="Travel Backpack">
                            <i class="fa-regular fa-heart"></i>
                        </button>

                    </div>

                    <div class="product-body">

                        <div class="product-category">Accessories</div>

                        <h3>Smart Travel Backpack</h3>

                        <div class="rating">
                            ★★★★★ <span>(141)</span>
                        </div>

                        <div class="price">
                            <strong>₹2,199</strong>
                            <span class="old-price">₹2,999</span>
                        </div>

                        <button class="add-cart"
                                data-name="Travel Backpack"
                                data-price="2199"
                                data-image="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80">
                            <i class="fa-solid fa-cart-plus"></i>
                            Add to cart
                        </button>

                    </div>
                </article>

                <!-- PRODUCT 8 -->

                <article class="product"
                         data-name="Cotton T Shirt"
                         data-category="Fashion"
                         data-price="799">

                    <div class="product-image">

                        <img src="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=80"
                             alt="Cotton T-shirt">

                        <span class="product-badge sale">30% OFF</span>

                        <button class="heart"
                                data-product="Cotton T Shirt">
                            <i class="fa-regular fa-heart"></i>
                        </button>

                    </div>

                    <div class="product-body">

                        <div class="product-category">Fashion</div>

                        <h3>Premium Cotton T-Shirt</h3>

                        <div class="rating">
                            ★★★★★ <span>(119)</span>
                        </div>

                        <div class="price">
                            <strong>₹799</strong>
                            <span class="old-price">₹1,199</span>
                        </div>

                        <button class="add-cart"
                                data-name="Cotton T Shirt"
                                data-price="799"
                                data-image="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=80">
                            <i class="fa-solid fa-cart-plus"></i>
                            Add to cart
                        </button>

                    </div>
                </article>

            </div>

            <div id="noProducts"
                 style="display:none;text-align:center;padding:50px;color:var(--muted);">
                <i class="fa-solid fa-face-frown"
                   style="font-size:40px;color:var(--orange);"></i>
                <h3 style="margin-top:10px;">No products found</h3>
                <p>Try another search or category.</p>
            </div>

        </div>
    </section>

    <!-- =====================================================
         DEAL
         ===================================================== -->

    <section class="section" id="deals">

        <div class="container">

            <div class="deal">

                <div class="deal-image">
                    <img src="https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1000&q=80"
                         alt="Special shopping deal">
                </div>

                <div class="deal-content">

                    <span class="deal-tag">
                        LIMITED TIME
                    </span>

                    <h2>Weekend Super Deal 🎉</h2>

                    <p>
                        Get amazing savings on selected favourites.
                        Grab yours before the timer reaches zero.
                    </p>

                    <div class="deal-price">
                        ₹1,499
                        <del>₹2,999</del>
                    </div>

                    <div class="timer">

                        <div class="time-box">
                            <strong id="days">00</strong>
                            <span>Days</span>
                        </div>

                        <div class="time-box">
                            <strong id="hours">00</strong>
                            <span>Hours</span>
                        </div>

                        <div class="time-box">
                            <strong id="minutes">00</strong>
                            <span>Minutes</span>
                        </div>

                        <div class="time-box">
                            <strong id="seconds">00</strong>
                            <span>Seconds</span>
                        </div>

                    </div>

                    <button class="btn btn-orange"
                            onclick="addDealToCart()">
                        Grab the deal
                        <i class="fa-solid fa-bolt"></i>
                    </button>

                </div>

            </div>

        </div>

    </section>

    <!-- =====================================================
         REVIEWS
         ===================================================== -->

    <section class="section" id="reviews">

        <div class="container">

            <div class="section-head">
                <div>
                    <h2>Loved by shoppers ❤️</h2>
                    <p>Real experiences from our happy customers.</p>
                </div>
            </div>

            <div class="reviews">

                <div class="review">
                    <div class="review-stars">★★★★★</div>

                    <p>
                        "The website is really easy to use. I found exactly
                        what I wanted and the delivery was surprisingly fast."
                    </p>

                    <div class="review-user">
                        <img class="avatar"
                             src="https://i.pravatar.cc/100?img=32"
                             alt="Customer">

                        <div>
                            <strong>Priya S.</strong>
                            <small>Verified customer</small>
                        </div>
                    </div>
                </div>

                <div class="review">
                    <div class="review-stars">★★★★★</div>

                    <p>
                        "I love the clean design and the deals. The cart
                        experience is much easier than many shopping sites."
                    </p>

                    <div class="review-user">
                        <img class="avatar"
                             src="https://i.pravatar.cc/100?img=12"
                             alt="Customer">

                        <div>
                            <strong>Rahul K.</strong>
                            <small>Verified customer</small>
                        </div>
                    </div>
                </div>

                <div class="review">
                    <div class="review-stars">★★★★★</div>

                    <p>
                        "Great products, simple checkout and friendly
                        customer service. Definitely shopping here again."
                    </p>

                    <div class="review-user">
                        <img class="avatar"
                             src="https://i.pravatar.cc/100?img=47"
                             alt="Customer">

                        <div>
                            <strong>Ananya R.</strong>
                            <small>Verified customer</small>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </section>

    <!-- =====================================================
         NEWSLETTER
         ===================================================== -->

    <section class="section">

        <div class="container">

            <div class="newsletter">

                <div>
                    <h2>Get the good stuff first ✨</h2>
                    <p>New products, special deals and useful updates.</p>
                    <div id="newsletterMsg"></div>
                </div>

                <form class="newsletter-form" id="newsletterForm">

                    <input
                            type="email"
                            id="emailInput"
                            placeholder="Your email address"
                            required>

                    <button type="submit">
                        Subscribe
                    </button>

                </form>

            </div>

        </div>

    </section>

</main>

<!-- =========================================================
     FOOTER
     ========================================================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="brand" style="color:white;">
                    <i class="fa-solid fa-bag-shopping"></i>
                    Nexus<span class="accent">Shop</span>
                </a>

                <p>
                    A friendly shopping experience built around
                    simple discovery, great products and happy customers.
                </p>

                <div class="socials">
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#"><i class="fa-brands fa-youtube"></i></a>
                </div>

            </div>

            <div>
                <h4>Shop</h4>

                <ul>
                    <li><a href="#products">Trending</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#">New arrivals</a></li>
                </ul>
            </div>

            <div>
                <h4>Help</h4>

                <ul>
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">Delivery</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>
            </div>

            <div>
                <h4>Company</h4>

                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                </ul>
            </div>

        </div>

        <div class="copyright">
            © 2026 NexusShop. Made with ❤️ for better shopping.
        </div>

    </div>

</footer>

<!-- =========================================================
     CART
     ========================================================= -->

<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h2>
            Your Cart
            <span id="cartTitleCount"
                  style="color:var(--muted);font-size:13px;">
                (0 items)
            </span>
        </h2>

        <button class="close-cart" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>

    <div class="cart-items" id="cartItems">
    </div>

    <div class="cart-footer">

        <div class="subtotal">
            <span>Subtotal</span>
            <span id="subtotal">₹0</span>
        </div>

        <button class="btn btn-orange"
                style="width:100%;"
                onclick="checkout()">
            Proceed to checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>

<!-- TOAST -->

<div id="toast"></div>

<!-- =========================================================
     JAVASCRIPT
     ========================================================= -->

<script>

    /* =========================================================
       STATE
       ========================================================= */

    let cart = JSON.parse(localStorage.getItem("nexusCart") || "[]");
    let wishlist = JSON.parse(localStorage.getItem("nexusWishlist") || "[]");

    /* =========================================================
       TOAST
       ========================================================= */

    function showToast(message) {

        const toast = document.getElementById("toast");

        toast.textContent = message;
        toast.classList.add("show");

        setTimeout(() => {
            toast.classList.remove("show");
        }, 2200);
    }

    /* =========================================================
       CART
       ========================================================= */

    function saveCart() {
        localStorage.setItem("nexusCart", JSON.stringify(cart));
    }

    function updateCartCount() {

        const total = cart.reduce((sum, item) => sum + item.quantity, 0);

        document.getElementById("cartCount").textContent = total;

        document.getElementById("cartTitleCount").textContent =
            "(" + total + " " + (total === 1 ? "item" : "items") + ")";
    }

    function addToCart(name, price, image) {

        const existing = cart.find(item => item.name === name);

        if (existing) {
            existing.quantity++;
        } else {
            cart.push({
                name: name,
                price: Number(price),
                image: image,
                quantity: 1
            });
        }

        saveCart();
        renderCart();
        updateCartCount();

        showToast("🛒 " + name + " added to cart");
    }

    function changeQuantity(index, change) {

        cart[index].quantity += change;

        if (cart[index].quantity <= 0) {
            cart.splice(index, 1);
        }

        saveCart();
        renderCart();
        updateCartCount();
    }

    function removeItem(index) {

        const name = cart[index].name;

        cart.splice(index, 1);

        saveCart();
        renderCart();
        updateCartCount();

        showToast(name + " removed from cart");
    }

    function renderCart() {

        const container = document.getElementById("cartItems");

        if (cart.length === 0) {

            container.innerHTML = `
                <div class="empty-cart">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <h3>Your cart is empty</h3>
                    <p>Looks like you haven't added anything yet.</p>
                </div>
            `;

            document.getElementById("subtotal").textContent = "₹0";

            return;
        }

        let total = 0;

        container.innerHTML = cart.map((item, index) => {

            total += item.price * item.quantity;

            return `
                <div class="cart-item">

                    <img src="${item.image}" alt="${item.name}">

                    <div>
                        <h4>${item.name}</h4>

                        <small>
                            ₹${item.price.toLocaleString("en-IN")}
                        </small>

                        <div class="qty">

                            <button onclick="changeQuantity(${index}, -1)">
                                −
                            </button>

                            <strong>${item.quantity}</strong>

                            <button onclick="changeQuantity(${index}, 1)">
                                +
                            </button>

                        </div>

                        <button class="remove"
                                onclick="removeItem(${index})">
                            Remove
                        </button>

                    </div>

                    <strong>
                        ₹${(item.price * item.quantity)
                            .toLocaleString("en-IN")}
                    </strong>

                </div>
            `;

        }).join("");

        document.getElementById("subtotal").textContent =
            "₹" + total.toLocaleString("en-IN");
    }

    /* =========================================================
       CART DRAWER
       ========================================================= */

    function openCart() {

        document.getElementById("cartDrawer").classList.add("open");
        document.getElementById("overlay").classList.add("show");

        document.body.style.overflow = "hidden";
    }

    function closeCart() {

        document.getElementById("cartDrawer").classList.remove("open");
        document.getElementById("overlay").classList.remove("show");

        document.body.style.overflow = "";
    }

    document.getElementById("cartBtn").addEventListener("click", openCart);
    document.getElementById("closeCart").addEventListener("click", closeCart);
    document.getElementById("overlay").addEventListener("click", closeCart);

    /* =========================================================
       ADD TO CART BUTTONS
       ========================================================= */

    document.querySelectorAll(".add-cart").forEach(button => {

        button.addEventListener("click", () => {

            addToCart(
                button.dataset.name,
                button.dataset.price,
                button.dataset.image
            );

            const original = button.innerHTML;

            button.innerHTML =
                '<i class="fa-solid fa-check"></i> Added';

            button.style.background = "#24966f";

            setTimeout(() => {

                button.innerHTML = original;
                button.style.background = "";

            }, 1200);

        });

    });

    /* =========================================================
       WISHLIST
       ========================================================= */

    function saveWishlist() {

        localStorage.setItem(
            "nexusWishlist",
            JSON.stringify(wishlist)
        );

        document.getElementById("wishlistCount").textContent =
            wishlist.length;
    }

    document.querySelectorAll(".heart").forEach(button => {

        button.addEventListener("click", () => {

            const product = button.dataset.product;
            const icon = button.querySelector("i");

            if (wishlist.includes(product)) {

                wishlist = wishlist.filter(item => item !== product);

                button.classList.remove("liked");
                icon.className = "fa-regular fa-heart";

                showToast("Removed from wishlist");

            } else {

                wishlist.push(product);

                button.classList.add("liked");
                icon.className = "fa-solid fa-heart";

                showToast("❤️ Added to wishlist");
            }

            saveWishlist();
        });

    });

    function showWishlist() {

        if (wishlist.length === 0) {
            showToast("Your wishlist is empty");
            return;
        }

        showToast(
            "❤️ Wishlist: " +
            wishlist.length +
            " item" +
            (wishlist.length > 1 ? "s" : "")
        );
    }

    /* =========================================================
       SEARCH
       ========================================================= */

    const searchInput = document.getElementById("searchInput");

    searchInput.addEventListener("input", filterProducts);

    function filterProducts() {

        const search = searchInput.value.toLowerCase().trim();

        const products =
            document.querySelectorAll(".product");

        let visible = 0;

        products.forEach(product => {

            const name =
                product.dataset.name.toLowerCase();

            const category =
                product.dataset.category.toLowerCase();

            const matches =
                name.includes(search) ||
                category.includes(search);

            product.style.display =
                matches ? "" : "none";

            if (matches) {
                visible++;
            }
        });

        document.getElementById("noProducts").style.display =
            visible === 0 ? "block" : "none";
    }

    /* =========================================================
       CATEGORY FILTER
       ========================================================= */

    document.querySelectorAll(".category").forEach(category => {

        category.addEventListener("click", () => {

            const selected =
                category.dataset.category;

            document.querySelectorAll(".category")
                .forEach(item =>
                    item.classList.remove("selected")
                );

            category.classList.add("selected");

            const products =
                document.querySelectorAll(".product");

            let visible = 0;

            products.forEach(product => {

                if (product.dataset.category === selected) {

                    product.style.display = "";
                    visible++;

                } else {

                    product.style.display = "none";
                }
            });

            document.getElementById("noProducts").style.display =
                visible === 0 ? "block" : "none";

            document.getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });
        });

    });

    function resetProducts() {

        searchInput.value = "";

        document.querySelectorAll(".category")
            .forEach(item =>
                item.classList.remove("selected")
            );

        document.querySelectorAll(".product")
            .forEach(product =>
                product.style.display = ""
            );

        document.getElementById("noProducts").style.display = "none";
    }

    /* =========================================================
       DARK MODE
       ========================================================= */

    const savedTheme =
        localStorage.getItem("nexusTheme");

    if (savedTheme === "dark") {
        document.body.classList.add("dark");
    }

    document.getElementById("darkModeBtn")
        .addEventListener("click", () => {

            document.body.classList.toggle("dark");

            const dark =
                document.body.classList.contains("dark");

            localStorage.setItem(
                "nexusTheme",
                dark ? "dark" : "light"
            );

            document.querySelector("#darkModeBtn i").className =
                dark
                    ? "fa-solid fa-sun"
                    : "fa-solid fa-moon";

            showToast(
                dark
                    ? "🌙 Dark mode enabled"
                    : "☀️ Light mode enabled"
            );
        });

    /* =========================================================
       DEAL TIMER
       ========================================================= */

    const dealEnd =
        new Date().getTime() +
        (2 * 24 * 60 * 60 * 1000) +
        (8 * 60 * 60 * 1000);

    function updateTimer() {

        const now = new Date().getTime();

        let distance = dealEnd - now;

        if (distance < 0) {
            distance = 0;
        }

        const days =
            Math.floor(distance / (1000 * 60 * 60 * 24));

        const hours =
            Math.floor(
                (distance % (1000 * 60 * 60 * 24))
                / (1000 * 60 * 60)
            );

        const minutes =
            Math.floor(
                (distance % (1000 * 60 * 60))
                / (1000 * 60)
            );

        const seconds =
            Math.floor(
                (distance % (1000 * 60))
                / 1000
            );

        document.getElementById("days").textContent =
            String(days).padStart(2, "0");

        document.getElementById("hours").textContent =
            String(hours).padStart(2, "0");

        document.getElementById("minutes").textContent =
            String(minutes).padStart(2, "0");

        document.getElementById("seconds").textContent =
            String(seconds).padStart(2, "0");
    }

    setInterval(updateTimer, 1000);
    updateTimer();

    /* =========================================================
       DEAL CART
       ========================================================= */

    function addDealToCart() {

        addToCart(
            "Weekend Super Deal",
            1499,
            "https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1000&q=80"
        );

        openCart();
    }

    /* =========================================================
       NEWSLETTER
       ========================================================= */

    document.getElementById("newsletterForm")
        .addEventListener("submit", function(event) {

            event.preventDefault();

            const email =
                document.getElementById("emailInput").value.trim();

            const message =
                document.getElementById("newsletterMsg");

            if (!email || !email.includes("@")) {

                message.textContent =
                    "Please enter a valid email address.";

                return;
            }

            message.textContent =
                "✓ You're subscribed! Welcome to NexusShop.";

            message.style.color = "white";

            this.reset();

            showToast("📧 Subscription successful!");
        });

    /* =========================================================
       CHECKOUT
       ========================================================= */

    function checkout() {

        if (cart.length === 0) {
            showToast("Your cart is empty");
            return;
        }

        showToast(
            "Checkout is ready for integration 🚀"
        );
    }

    /* =========================================================
       MOBILE MENU
       ========================================================= */

    document.getElementById("mobileMenuBtn")
        .addEventListener("click", () => {

            const nav =
                document.getElementById("mainNav");

            if (nav.style.display === "block") {
                nav.style.display = "";
            } else {
                nav.style.display = "block";

                nav.style.position = "absolute";
                nav.style.top = "72px";
                nav.style.left = "0";
                nav.style.right = "0";
                nav.style.background = "var(--white)";
                nav.style.padding = "15px";
                nav.style.boxShadow =
                    "0 10px 30px rgba(0,0,0,.1)";

                nav.querySelector("ul").style.flexDirection =
                    "column";
            }
        });

    /* =========================================================
       INITIALIZE
       ========================================================= */

    updateCartCount();
    renderCart();
    saveWishlist();

</script>

</body>
</html>
