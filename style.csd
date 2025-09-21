* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    line-height: 1.6;
    color: #333;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

/* Header */
.header {
    background: rgba(0, 0, 0, 0.9);
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1000;
    backdrop-filter: blur(10px);
}

.navbar {
    padding: 1rem 0;
}

.nav-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo {
    display: flex;
    align-items: center;
    gap: 10px;
    color: #FFD700;
    text-decoration: none;
    font-weight: 700;
    font-size: 1.5rem;
}

.logo-circle {
    width: 40px;
    height: 40px;
    background: #FFD700;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #000;
    font-size: 1.2rem;
}

.nav-menu {
    display: flex;
    list-style: none;
    gap: 2rem;
    align-items: center;
}

.nav-link {
    color: #fff;
    text-decoration: none;
    font-weight: 400;
    transition: color 0.3s ease;
}

.nav-link:hover {
    color: #FFD700;
}

.nav-icons {
    display: flex;
    gap: 1rem;
    color: #fff;
    font-size: 1.2rem;
}

.search-icon, .cart-icon {
    cursor: pointer;
    transition: color 0.3s ease;
}

.search-icon:hover, .cart-icon:hover {
    color: #FFD700;
}

.hamburger {
    display: none;
    flex-direction: column;
    cursor: pointer;
}

.hamburger span {
    width: 25px;
    height: 3px;
    background: #FFD700;
    margin: 3px 0;
    transition: 0.3s;
}

/* Hero Section */
.hero {
    background: linear-gradient(135deg, #000 0%, #333 100%);
    min-height: 100vh;
    display: flex;
    align-items: center;
    padding-top: 80px;
    position: relative;
    overflow: hidden;
}

.hero::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><radialGradient id="a" cx="50%" cy="50%" r="50%"><stop offset="0%" stop-color="%23FFD700" stop-opacity="0.1"/><stop offset="100%" stop-color="%23FFD700" stop-opacity="0"/></radialGradient></defs><circle cx="20" cy="20" r="2" fill="url(%23a)"/><circle cx="80" cy="30" r="1.5" fill="url(%23a)"/><circle cx="40" cy="80" r="2.5" fill="url(%23a)"/><circle cx="90" cy="60" r="1" fill="url(%23a)"/></svg>');
    pointer-events: none;
}

.hero-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 4rem;
    align-items: center;
    position: relative;
    z-index: 2;
}

.hero-content {
    color: #fff;
}

.hero-title {
    font-size: clamp(2.5rem, 5vw, 4rem);
    font-weight: 700;
    margin-bottom: 1rem;
    line-height: 1.2;
}

.highlight {
    background: linear-gradient(45deg, #FFD700, #FFA500);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.hero-subtitle {
    font-size: 1.5rem;
    color: #FFD700;
    margin-bottom: 2rem;
    font-weight: 300;
}

.cta-button {
    background: linear-gradient(45deg, #FFD700, #FFA500);
    color: #000;
    border: none;
    padding: 1rem 2rem;
    font-size: 1.1rem;
    font-weight: 600;
    border-radius: 50px;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(255, 215, 0, 0.3);
}

.cta-button:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(255, 215, 0, 0.4);
}

.hero-image {
    display: flex;
    justify-content: center;
    align-items: center;
}

.food-bowl {
    position: relative;
    max-width: 400px;
    width: 100%;
}

.food-bowl img {
    width: 100%;
    height: auto;
    border-radius: 20px;
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
    transform: perspective(1000px) rotateX(5deg);
}

.steam-effect {
    position: absolute;
    top: -20px;
    left: 50%;
    transform: translateX(-50%);
    width: 60px;
    height: 60px;
    background: linear-gradient(transparent, rgba(255, 255, 255, 0.8));
    border-radius: 50% 50% 50% 0;
    animation: steam 2s ease-in-out infinite;
}

@keyframes steam {
    0%, 100% { transform: translateX(-50%) translateY(0) scale(1); opacity: 0.8; }
    50% { transform: translateX(-50%) translateY(-10px) scale(1.2); opacity: 1; }
}

/* Specials Section */
.specials {
    padding: 5rem 0;
    background: #fff;
}

.section-title {
    text-align: center;
    font-size: 2.5rem;
    color: #333;
    margin-bottom: 3rem;
    font-weight: 600;
}

.specials-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 2rem;
    max-width: 1000px;
    margin: 0 auto;
}

.special-card {
    background: #fff;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
    position: relative;
}

.special-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
}

.special-card img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    transition: transform 0.3s ease;
}

.special-card:hover img {
    transform: scale(1.05);
}

.card-content {
    padding: 1.5rem;
    text-align: center;
}

.card-content h3 {
    font-size: 1.3rem;
    margin-bottom: 0.5rem;
    color: #333;
}

.price {
    font-size: 1.2rem;
    font-weight: 700;
    color: #FFD700;
    margin-bottom: 1rem;
}

.add-to-cart {
    background: linear-gradient(45deg, #FFD700, #FFA500);
    color: #000;
    border: none;
    padding: 0.8rem 1.5rem;
    border-radius: 25px;
    cursor: pointer;
    font-weight: 600;
    transition: all 0.3s ease;
    width: 100%;
}

.add-to-cart:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 15px rgba(255, 215, 0, 0.3);
}

/* Footer */
.footer {
    background: #000;
    color: #fff;
    padding: 3rem 0 1rem;
}

.footer-content {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
    margin-bottom: 2rem;
}

.footer-section h3 {
    margin-bottom: 1rem;
    color: #FFD700;
}

.footer-section ul {
    list-style: none;
}

.footer-section ul li {
    margin-bottom: 0.5rem;
}

.footer-section ul li a {
    color: #ccc;
    text-decoration: none;
    transition: color 0.3s ease;
}

.footer-section ul li a:hover {
    color: #FFD700;
}

.footer-section p {
    color: #ccc;
    margin-bottom: 0.5rem;
}

.footer-bottom {
    text-align: center;
    padding-top: 2rem;
    border-top: 1px solid #333;
    color: #ccc;
}

/* Mobile Responsive */
@media (max-width: 768px) {
    .hamburger {
        display: flex;
    }
    
    .nav-menu {
        display: none;
    }
    
    .hero-container {
        grid-template-columns: 1fr;
        text-align: center;
        gap: 2rem;
    }
    
    .hero-title {
        font-size: 2.5rem;
    }
    
    .specials-grid {
        grid-template-columns: 1fr;
        gap: 1.5rem;
    }
    
    .section-title {
        font-size: 2rem;
    }
    
    .footer-content {
        grid-template-columns: 1fr;
        text-align: center;
    }
}

@media (max-width: 480px) {
    .hero-title {
        font-size: 2rem;
    }
    
    .hero-subtitle {
        font-size: 1.2rem;
    }
    
    .cta-button {
        padding: 0.8rem 1.5rem;
        font-size: 1rem;
    }
}
