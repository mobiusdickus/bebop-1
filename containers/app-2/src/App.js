import React, { useEffect, useState } from 'react';
import './App.css';

function App() {
  const [data, setData] = useState("");

  useEffect(() => {
    fetch("/api/daisycabin").then(response =>
      response.json().then(data => {
        console.log(data);
        setData(data.data);
      })
    );
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <h1>
          The Daisy Cabin
        </h1>
        <p>
          {data}
        </p>
      </header>
    </div>
  );
}

export default App;
