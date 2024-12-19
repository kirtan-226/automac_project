// App.js
import React from 'react';
import Navbar from './components/Navbar';
import CertiTable from './components/CertiTable';
import CompanyTable from './components/CompanyTable';
import './App.css';

const App = () => {
    return (
        <div className="App">
            <Navbar />
            <div className="App-content">
                <div className="row">
                <div className="col-md-4">
                    <h2>Certificate List</h2>
                </div>
                <div className="col-md-4">
                    <button type="button" className="btn btn-primary">Click Me!</button>
                </div>
                </div>
                <CertiTable />
                <h2>Company List</h2>
                <CompanyTable />
            </div>
        </div>
    );
};

export default App;
