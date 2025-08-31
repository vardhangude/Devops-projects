import React from 'react';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Hello from a Dockerized React App!</h1>
        <p>This is a stylish and simple landing page.</p>
        <div className="button-container">
          <a
            className="App-link"
            href="https://github.com/vardhangude/Devops-projects"
            target="_blank"
            rel="noopener noreferrer"
          >
            Check out the Code
          </a>
        </div>
      </header>
    </div>
  );
}

export default App;