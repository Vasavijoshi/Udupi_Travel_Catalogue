// Main data structure to store all travel information
const travelData = {
  destinations: {},
  food: {},
  accommodation: {},
  localExperience: {},
  transport: {}
};

// Configuration for API endpoints
const API_CONFIG = {
  baseUrl: 'http://localhost:7886/Udupi_Travel_Catalogue/',  // Base URL for API endpoints
  endpoints: {
    destinations: 'api/destinations.php',
    food: 'api/food.php',
    accommodation: 'api/accommodation.php',
    localExperience: 'api/localExperience.php',
    transport: 'api/transport.php'
  }
};

/**
 * Fetches data from the server for a specific category
 * @param {string} category - The category to fetch (destinations, food, etc.)
 * @param {Object} params - Optional parameters for the request
 * @returns {Promise} - Promise containing the fetched data
 */
function fetchData(category, params = {}) {
  if (!API_CONFIG.endpoints[category]) {
    console.error(`Invalid category: ${category}`);
    return Promise.reject(`Invalid category: ${category}`);
  }

  const url = new URL(API_CONFIG.endpoints[category], API_CONFIG.baseUrl);

  // Add query parameters if provided
  Object.keys(params).forEach(key => {
    url.searchParams.append(key, params[key]);
  });

  console.log('Fetching from URL:', url.toString()); // Add this for debugging

  return fetch(url)
    .then(response => {
      if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
      }
      return response.json();
    })
    .then(response => {
      if (!response.success) {
        throw new Error(response.message || `Failed to fetch ${category} data`);
      }
      // Store data in our local cache
      travelData[category] = response.data;
      return response.data;
    })
    .catch(error => {
      console.error(`Error fetching ${category}:`, error);
      // Show user-friendly error
      showErrorMessage(`Failed to load ${category} data. Please try again later.`);
      throw error;
    });
}

/**
 * Fetches destination data and updates the UI
 * @param {string} destinationId - Optional destination ID to filter results
 * @returns {Promise} - Promise for the fetch operation
 */
function fetchDestinations(destinationId = null) {
  const params = destinationId ? { id: destinationId } : {};

  return fetchData('destinations', params)
    .then(destinations => {
      console.log('Destinations loaded:', destinations);
      updateDestinationsUI(destinations);
      return destinations;
    })
    .catch(error => {
      console.error('Failed to load destinations:', error);
      showErrorMessage('Failed to load destinations. Please try again later.');
      throw error;
    });
}

/**
 * Fetches food data for a specific destination
 * @param {string} destinationId - The destination ID to fetch food data for
 * @returns {Promise} - Promise for the fetch operation
 */
function fetchFoodByDestination(destinationId) {
  return fetchData('food', { destination: destinationId })
    .then(foodData => {
      console.log(`Food data for ${destinationId}:`, foodData);
      updateFoodUI(foodData);
      return foodData;
    })
    .catch(error => {
      console.error(`Failed to load food data for ${destinationId}:`, error);
      throw error;
    });
}

/**
 * Fetches accommodation data for a specific destination
 * @param {string} destinationId - The destination ID to fetch accommodation data for
 * @returns {Promise} - Promise for the fetch operation
 */
function fetchAccommodationByDestination(destinationId) {
  return fetchData('accommodation', { destination: destinationId })
    .then(accommodationData => {
      console.log(`Accommodation data for ${destinationId}:`, accommodationData);
      updateAccommodationUI(accommodationData);
      return accommodationData;
    })
    .catch(error => {
      console.error(`Failed to load accommodation data for ${destinationId}:`, error);
      throw error;
    });
}

/**
 * Fetches local experience data for a specific destination
 * @param {string} destinationId - The destination ID to fetch local experience data for
 * @returns {Promise} - Promise for the fetch operation
 */
function fetchLocalExperienceByDestination(destinationId) {
  return fetchData('localExperience', { destination: destinationId })
    .then(experienceData => {
      console.log(`Experience data for ${destinationId}:`, experienceData);
      updateLocalExperienceUI(experienceData);
      return experienceData;
    })
    .catch(error => {
      console.error(`Failed to load experience data for ${destinationId}:`, error);
      throw error;
    });
}

/**
 * Fetches transport data for a specific destination
 * @param {string} destinationId - The destination ID to fetch transport data for
 * @returns {Promise} - Promise for the fetch operation
 */
function fetchTransportByDestination(destinationId) {
  return fetchData('transport', { destination: destinationId })
    .then(transportData => {
      console.log(`Transport data for ${destinationId}:`, transportData);
      updateTransportUI(transportData);
      return transportData;
    })
    .catch(error => {
      console.error(`Failed to load transport data for ${destinationId}:`, error);
      throw error;
    });
}

/**
* Load all data for a specific destination
* @param {string} destinationId - The destination ID to load data for
*/
function loadDestinationDetails(destinationId) {
  if (!destinationId) {
    console.log('No destination ID provided');
    return;
  }

  // Show loading indicators
  ['destinations', 'food-container', 'accommodation-container', 'experience-container', 'transport-container'].forEach(id => {
    const container = document.getElementById(id);
    if (container) {
      // Clear existing content first
      container.innerHTML = '';

      const loadingIndicator = document.createElement('div');
      loadingIndicator.className = 'loading-indicator text-center mb-4';
      loadingIndicator.innerHTML = '<div class="spinner-border text-primary" role="status"></div><div class="mt-2">Loading...</div>';
      container.appendChild(loadingIndicator);
    }
  });

  // Fetch all types of data for this destination
  Promise.all([
    fetchDestinations(destinationId),
    fetchFoodByDestination(destinationId),
    fetchAccommodationByDestination(destinationId),
    fetchLocalExperienceByDestination(destinationId),
    fetchTransportByDestination(destinationId)
  ]).then(() => {
    // Remove all loading indicators
    document.querySelectorAll('.loading-indicator').forEach(el => el.remove());
  }).catch(error => {
    console.error('Error loading destination details:', error);
    showErrorMessage('Error loading some destination details. Please try refreshing the page.');
  });
}

/**
 * Update the UI with destination data
 * @param {Array} destinations - Array of destination objects
 */
function updateDestinationsUI(destinations) {
  const destinationContainer = document.getElementById('destinations');
  if (!destinationContainer) return;

  destinationContainer.innerHTML = '';

  destinations.forEach(destination => {
    const destinationCard = createDestinationCard(destination);
    destinationContainer.appendChild(destinationCard);
  });
}

/**
 * Create a destination card element
 * @param {Object} destination - Destination data object
 * @returns {HTMLElement} - The destination card element
 */
function createDestinationCard(destination) {
  const card = document.createElement('div');
  card.className = 'destination-card';

  // Format time if available
  const formatTime = (time) => {
    if (!time) return '';
    return new Date(`2000-01-01T${time}`).toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
  };

  // Format price if available
  const formatPrice = (price) => {
    if (!price) return 'Free';
    return `₹${parseFloat(price).toFixed(2)}`;
  };

  // Create card content based on destination data
  card.innerHTML = `
    <div class="img" style="background-image: url(${destination.image || ''});">
      <div class="text">
        <h3>${destination.name || 'Unknown Destination'}</h3>
        <p class="location">${destination.location || ''}</p>
        <p class="category">${destination.category || ''}</p>
        <p class="description">${destination.description || ''}</p>
        <div class="details">
          ${destination.entryFee ? `<p class="price">Entry Fee: ${formatPrice(destination.entryFee)}</p>` : ''}
          ${destination.openingTime ? `<p class="timing">Timings: ${formatTime(destination.openingTime)} - ${formatTime(destination.closingTime)}</p>` : ''}
          ${destination.bestSeason ? `<p class="season">Best Season: ${destination.bestSeason}</p>` : ''}
          ${destination.talukName ? `<p class="taluk">Taluk: ${destination.talukName}</p>` : ''}
        </div>
        <button class="btn btn-primary view-details" data-id="${destination.id}">View Details</button>
      </div>
    </div>
  `;

  // Add event listener for the view details button
  const viewDetailsBtn = card.querySelector('.view-details');
  viewDetailsBtn.addEventListener('click', () => {
    if (destination.id) {
      loadDestinationDetails(destination.id);
    } else {
      console.error('No destination ID available');
      showErrorMessage('Cannot load destination details: No ID available');
    }
  });

  return card;
}

/**
 * Update the UI with food data
 * @param {Array} foodData - Array of food objects
 */
function updateFoodUI(foodData) {
  const foodContainer = document.getElementById('food-container');
  if (!foodContainer) return;

  foodContainer.innerHTML = '';

  foodData.forEach(food => {
    const foodCard = document.createElement('div');
    foodCard.className = 'food-card';

    foodCard.innerHTML = `
      <div class="img" style="background-image: url(${food.image || ''});">
        <div class="text">
          <h3>${food.name || 'Unknown Food'}</h3>
          <p>${food.description || 'No description available'}</p>
          <p>Price range: ${food.priceRange || 'Not specified'}</p>
        </div>
      </div>
    `;

    foodContainer.appendChild(foodCard);
  });
}

/**
 * Update the UI with accommodation data
 * @param {Array} accommodationData - Array of accommodation objects
 */
function updateAccommodationUI(accommodationData) {
  const accommodationContainer = document.getElementById('accommodation-container');
  if (!accommodationContainer) return;

  accommodationContainer.innerHTML = '';

  accommodationData.forEach(accommodation => {
    const accommodationCard = document.createElement('div');
    accommodationCard.className = 'accommodation-card';

    accommodationCard.innerHTML = `
      <div class="img" style="background-image: url(${accommodation.image || ''});">
        <div class="text">
          <h3>${accommodation.name || 'Unknown Accommodation'}</h3>
          <p>${accommodation.description || 'No description available'}</p>
          <p>Price range: ${accommodation.priceRange || 'Not specified'}</p>
          <p>Rating: ${accommodation.rating || 'N/A'}</p>
        </div>
      </div>
    `;

    accommodationContainer.appendChild(accommodationCard);
  });
}

/**
 * Update the UI with local experience data
 * @param {Array} experienceData - Array of experience objects
 */
function updateLocalExperienceUI(experienceData) {
  const experienceContainer = document.getElementById('experience-container');
  if (!experienceContainer) return;

  experienceContainer.innerHTML = '';

  experienceData.forEach(experience => {
    const experienceCard = document.createElement('div');
    experienceCard.className = 'experience-card';

    experienceCard.innerHTML = `
      <div class="img" style="background-image: url(${experience.image});">
        <div class="text">
          <h3>${experience.name}</h3>
          <p>${experience.description}</p>
          <p>Duration: ${experience.duration}</p>
          <p>Price: ${experience.price}</p>
        </div>
      </div>
    `;

    experienceContainer.appendChild(experienceCard);
  });
}

/**
 * Update the UI with transport data
 * @param {Array} transportData - Array of transport objects
 */
function updateTransportUI(transportData) {
  const transportContainer = document.getElementById('transport-container');
  if (!transportContainer) return;

  transportContainer.innerHTML = '';

  transportData.forEach(transport => {
    const transportCard = document.createElement('div');
    transportCard.className = 'transport-card';

    transportCard.innerHTML = `
      <div class="transport-item">
        <h3>${transport.type}</h3>
        <p>${transport.description}</p>
        <p>Cost: ${transport.cost}</p>
        <p>Schedule: ${transport.schedule || 'Available on demand'}</p>
      </div>
    `;

    transportContainer.appendChild(transportCard);
  });
}

/**
 * Show error message to the user
 * @param {string} message - The error message to display
 */
function showErrorMessage(message) {
  const errorContainer = document.getElementById('error-container') || createErrorContainer();

  errorContainer.textContent = message;
  errorContainer.classList.add('show');

  // Hide error after 5 seconds
  setTimeout(() => {
    errorContainer.classList.remove('show');
  }, 5000);
}

/**
 * Create error container if it doesn't exist
 * @returns {HTMLElement} - The error container element
 */
function createErrorContainer() {
  const container = document.createElement('div');
  container.id = 'error-container';
  container.className = 'error-message';
  document.body.appendChild(container);
  return container;
}

// Export functions to make them available globally
window.fetchDestinations = fetchDestinations;
window.fetchFoodByDestination = fetchFoodByDestination;
window.fetchAccommodationByDestination = fetchAccommodationByDestination;
window.fetchLocalExperienceByDestination = fetchLocalExperienceByDestination;
window.fetchTransportByDestination = fetchTransportByDestination;
window.loadDestinationDetails = loadDestinationDetails;

// Initialize on page load
document.addEventListener('DOMContentLoaded', function() {
  // Load all destinations initially
  fetchDestinations().then(destinations => {
    // If there are destinations, load details for the first one
    if (destinations && destinations.length > 0) {
      loadDestinationDetails(destinations[0].id);
    }
  });
});