import React from 'react';
import "../components/navbar.css";

const Navbar = () => {
    return (
        <nav className="navbar">
            <div className="logo">Automac</div>
            <ul className="nav-links">
                <li><a href="http://localhost:3001/">Home</a></li>
                <li><a href="http://localhost:3001/api/certificates">Certifcates</a></li>
                <li><a href="http://localhost:3001/api/company">List of Company</a></li>
                <li><a href="http://localhost:3001/api/products">List of Products</a></li>
            </ul>
        </nav>
    );
};

export default Navbar;