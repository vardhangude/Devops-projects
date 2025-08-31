import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css'; // You can add a simple index.css for the body if you want, but it's not required for this to work.
import App from './App';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);