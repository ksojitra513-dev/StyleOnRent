<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="StyleOnRent.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>
        /* General Styling */
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', Arial, sans-serif;
            background-color: #fffaf8;
            color: #333;
        }

        a {
            text-decoration: none;
        }

        /* Hero Section */
        .hero-section {
            width: 100%;
            min-height: 520px;
            background: linear-gradient(
                90deg,
                rgba(60, 10, 25, 0.75),
                rgba(60, 10, 25, 0.15)
            ), url('Images/hero-banner.jpg');

            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            padding: 60px 8%;
        }

        .hero-content {
            max-width: 550px;
            color: white;
        }

        .hero-content h1 {
            font-size: 52px;
            font-weight: 700;
            line-height: 1.2;
            margin-bottom: 20px;
        }

        .hero-content p {
            font-size: 18px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        .hero-btn {
            display: inline-block;
            background-color: #8b1e3f;
            color: white;
            padding: 14px 32px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            transition: 0.3s;
        }

        .hero-btn:hover {
            background-color: #65152e;
            color: white;
        }

        /* Common Section */
        .home-section {
            padding: 70px 8%;
        }

        .section-title {
            text-align: center;
            font-size: 34px;
            font-weight: 700;
            color: #64172f;
            margin-bottom: 12px;
        }

        .section-subtitle {
            text-align: center;
            color: #777;
            font-size: 16px;
            margin-bottom: 40px;
        }

        /* Best Collections */
        .collection-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .collection-card {
            position: relative;
            height: 350px;
            border-radius: 12px;
            overflow: hidden;
            background-color: #f4e8e9;
            box-shadow: 0 5px 18px rgba(0, 0, 0, 0.08);
        }

        .collection-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s;
        }

        .collection-card:hover img {
            transform: scale(1.06);
        }

        .collection-info {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            padding: 25px;
            color: white;
            background: linear-gradient(
                transparent,
                rgba(0, 0, 0, 0.75)
            );
        }

        .collection-info h3 {
            font-size: 24px;
            margin-bottom: 8px;
        }

        .collection-info p {
            font-size: 14px;
            margin: 0;
        }

        /* Trending Cholis */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 25px;
        }

        .product-card {
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.07);
            transition: transform 0.3s;
        }

        .product-card:hover {
            transform: translateY(-7px);
        }

        .product-card img {
            width: 100%;
            height: 280px;
            object-fit: cover;
        }

        .product-details {
            padding: 18px;
            text-align: center;
        }

        .product-details h3 {
            font-size: 17px;
            color: #333;
            margin-bottom: 10px;
        }

        .product-price {
            color: #8b1e3f;
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .rent-btn {
            display: inline-block;
            background-color: #8b1e3f;
            color: white;
            padding: 10px 24px;
            border-radius: 5px;
            font-size: 14px;
            transition: 0.3s;
        }

        .rent-btn:hover {
            background-color: #65152e;
            color: white;
        }

        /* Curated Collections */
        .curated-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .curated-card {
            position: relative;
            height: 300px;
            border-radius: 12px;
            overflow: hidden;
        }

        .curated-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s;
        }

        .curated-card:hover img {
            transform: scale(1.05);
        }

        .curated-card h3 {
            position: absolute;
            bottom: 20px;
            left: 20px;
            color: white;
            font-size: 22px;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.8);
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .collection-grid,
            .curated-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .product-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .hero-content h1 {
                font-size: 42px;
            }
        }

        @media (max-width: 600px) {
            .hero-section {
                min-height: 400px;
                padding: 40px 6%;
            }

            .hero-content h1 {
                font-size: 32px;
            }

            .hero-content p {
                font-size: 15px;
            }

            .home-section {
                padding: 45px 6%;
            }

            .section-title {
                font-size: 26px;
            }

            .collection-grid,
            .product-grid,
            .curated-grid {
                grid-template-columns: 1fr;
            }

            .collection-card {
                height: 300px;
            }

            .product-card img {
                height: 320px;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-content">
            <h1>Rent Your Dream Choli</h1>
            <p>
                Make every celebration special with our beautiful
                collection of traditional and designer cholis.
                Rent your favourite outfit at affordable prices.
            </p>
            <a href="Login.aspx" class="hero-btn">Explore Collection</a>
        </div>
    </section>

    <!-- Best Collections -->
    <section class="home-section">
        <h2 class="section-title">Our Best Collections</h2>
        <p class="section-subtitle">
            Discover beautiful outfits for every special occasion.
        </p>

        <div class="collection-grid">

            <div class="collection-card">
                <img src="Images/wedding-collection.jpg" alt="Wedding Collection" />
                <div class="collection-info">
                    <h3>Wedding Collection</h3>
                    <p>Elegant outfits for your special day.</p>
                </div>
            </div>

            <div class="collection-card">
                <img src="Images/blue-collection.jpg" alt="Party Wear Collection" />
                <div class="collection-info">
                    <h3>Party Wear</h3>
                    <p>Look stunning at every celebration.</p>
                </div>
            </div>

            <div class="collection-card">
                <img src="Images/hero-banner.jpg" alt="Traditional Collection" />
                <div class="collection-info">
                    <h3>Traditional Collection</h3>
                    <p>Celebrate your culture with style.</p>
                </div>
            </div>

        </div>
    </section>

    <!-- Trending Cholis -->
    <section class="home-section" style="background-color:#fff1f2;">

        <h2 class="section-title">Trending Cholis</h2>
        <p class="section-subtitle">
            Explore our most loved designer cholis.
        </p>

        <div class="product-grid">

            <div class="product-card">
                <img src="Images/product1.jpg" alt="Red Bridal Choli" />
                <div class="product-details">
                    <h3>Red Bridal Choli</h3>
                    <p class="product-price">₹1,499 / Day</p>
                    <a href="Login.aspx" class="rent-btn">Rent Now</a>
                </div>
            </div>

            <div class="product-card">
                <img src="Images/product2.jpg" alt="Blue Designer Choli" />
                <div class="product-details">
                    <h3>Blue Designer Choli</h3>
                    <p class="product-price">₹999 / Day</p>
                    <a href="Login.aspx" class="rent-btn">Rent Now</a>
                </div>
            </div>

            <div class="product-card">
                <img src="Images/product3.jpg" alt="Pink Party Wear Choli" />
                <div class="product-details">
                    <h3>Pink Party Wear Choli</h3>
                    <p class="product-price">₹1,199 / Day</p>
                    <a href="Login.aspx" class="rent-btn">Rent Now</a>
                </div>
            </div>

            <div class="product-card">
                <img src="Images/product4.jpg" alt="Golden Traditional Choli" />
                <div class="product-details">
                    <h3>Golden Traditional Choli</h3>
                    <p class="product-price">₹1,299 / Day</p>
                    <a href="Login.aspx" class="rent-btn">Rent Now</a>
                </div>
            </div>

        </div>
    </section>

    <!-- Curated Collections -->
    <section class="home-section">

        <h2 class="section-title">Curated For You</h2>
        <p class="section-subtitle">
            Find the perfect outfit for every occasion.
        </p>

        <div class="curated-grid">

            <div class="curated-card">
                <img src="Images/curated1.jpg" alt="Wedding Wear" />
                <h3>Wedding Wear</h3>
            </div>

            <div class="curated-card">
                <img src="Images/curated2.jpg" alt="Festive Wear" />
                <h3>Festive Wear</h3>
            </div>

            <div class="curated-card">
                <img src="Images/curated3.jpg" alt="Engagement Wear" />
                <h3>Engagement Wear</h3>
            </div>

            <div class="curated-card">
                <img src="Images/curated4.jpg" alt="Garba Special" />
                <h3>Garba Special</h3>
            </div>

            <div class="curated-card">
                <img src="Images/curated5.jpg" alt="Reception Wear" />
                <h3>Reception Wear</h3>
            </div>

            <div class="curated-card">
                <img src="Images/curated6.jpg" alt="Designer Collection" />
                <h3>Designer Collection</h3>
            </div>

        </div>
    </section>

    <!-- Why Choose Us -->
    <section class="home-section" style="background-color:#fff1f2;">

        <h2 class="section-title">Why Choose Style On Rent?</h2>
        <p class="section-subtitle">
            Making your special moments more beautiful and affordable.
        </p>

        <div class="collection-grid">

            <div style="text-align:center; padding:25px;">
                <h3 style="color:#8b1e3f;">Affordable Rentals</h3>
                <p>Wear designer outfits without spending a fortune.</p>
            </div>

            <div style="text-align:center; padding:25px;">
                <h3 style="color:#8b1e3f;">Premium Quality</h3>
                <p>Enjoy beautiful outfits with quality you can trust.</p>
            </div>

            <div style="text-align:center; padding:25px;">
                <h3 style="color:#8b1e3f;">Easy Booking</h3>
                <p>Choose your favourite outfit and book it with ease.</p>
            </div>

        </div>
    </section>

    <!-- Final Call to Action -->
    <section style="background-color:#64172f; color:white; text-align:center; padding:60px 20px;">

        <h2 style="font-size:32px; margin-bottom:15px;">
            Your Dream Outfit Awaits!
        </h2>

        <p style="font-size:17px; margin-bottom:25px;">
            Explore our collection and make every occasion memorable.
        </p>

        <a href="Registration.aspx"
           class="hero-btn"
           style="background-color:white; color:#64172f;">
            Join Style On Rent
        </a>

    </section>

</asp:Content>


</asp:Content>

