import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('booking_place');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
