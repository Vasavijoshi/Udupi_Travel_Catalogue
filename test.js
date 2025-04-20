document.addEventListener('DOMContentLoaded', function() {
    console.log('Test script loaded successfully');
    
    // Try a simple fetch to destinations.php
    fetch('destinations.php')
      .then(response => {
        console.log('Response status:', response.status);
        return response.json();
      })
      .then(data => {
        console.log('Data loaded:', data);
      })
      .catch(error => {
        console.error('Error:', error);
      });
  });