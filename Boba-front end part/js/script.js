// Function to check if the current page is index.html
function isIndexPage() {
    return window.location.pathname.endsWith('index.html') || window.location.pathname === '/';
}

// Function to show the alert only once
function showAlertOnce() {
    // Check if we've already shown the alert
    if (!localStorage.getItem('alertShown') && isIndexPage()) {
        alert('Welcome to the Boba Tea Shop!');
        // Set a flag in localStorage
        localStorage.setItem('alertShown', 'true');
    }
}
const teaPricing = {
    'Classic Milk Tea': { small: 5, medium: 6.75, large: 7 },
    'Taro Milk Tea': { small: 5, medium: 6.75, large: 7 },
    'Matcha Milk Tea': { small: 5, medium: 6.75, large: 7 },
    'Thai Milk Tea': { small: 5, medium: 6.75, large: 7 },
    'Brown Sugar Milk Tea': { small: 5, medium: 6.75, large: 7 },
    'Wintermelon Milk Latte': { small: 5, medium: 6.75, large: 7 },
    'Milk Foam Black Coffee': { small: 7.5, medium: 8.5, large: 9.5 },
    'Milk Coffee': { small: 7, medium: 8, large: 9 },
    'Wintermelon': { small: 4.5, medium: 5.75, large: 6 },
    'Black Tea': { small: 4.5, medium: 5.75, large: 6 },
    'Green Tea': { small: 4.5, medium: 5.75, large: 6 },
    'Grapefruit Yogurt Drink': { small: 7.5, medium: 8.75, large: 9 },
    'Caramel Chocolate': { small: 7.5, medium: 8.75, large: 9 }
};

// Function to add an item to the cart
function addToCart(tea, size, toppings) {
    // Get the price for the selected size
    const price = teaPricing[tea][size];

    // Calculate the total price with toppings
    const totalPrice = price + (toppings.length * 0.5);

    // Update the cart (this should be more comprehensive in a real app)
    console.log(`Added ${tea}, Size: ${size}, Total: $${totalPrice.toFixed(2)}`);
    alert(`You added ${tea} to cart! Size: ${size}, Total: $${totalPrice.toFixed(2)}`);
    
    // Add to local storage or session storage as needed
}
// Function to get query parameters from the URL
function getQueryParam(param) {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get(param);
}

// Event listener for when the DOM content is loaded
document.addEventListener('DOMContentLoaded', (event) => {
    // Show the alert only once on the index page
    showAlertOnce();

    // Get the tea name and image from the URL parameters
    const selectedTea = getQueryParam('tea');
    const selectedImage = getQueryParam('image');

    // Update the selected tea text
    if (selectedTea) {
        document.getElementById('selected-tea').innerText = `You are customizing: ${decodeURIComponent(selectedTea)}`;
    }

    // Create and append the image element to the selected tea image container
    if (selectedImage) {
        const imgElement = document.createElement('img');
        imgElement.src = `assets/images/${decodeURIComponent(selectedImage)}`;
        imgElement.alt = `Customizing ${decodeURIComponent(selectedTea)}`;
        imgElement.classList.add('selected-tea-image');
        
        const imageContainer = document.getElementById('selected-tea-image');
        if(imageContainer) {
            imageContainer.appendChild(imgElement);
        }
    }
});
// Assuming you have a global cart variable to store cart items
let cart = JSON.parse(localStorage.getItem('cart')) || [];

function addToCart(item) {
    cart.push(item);
    localStorage.setItem('cart', JSON.stringify(cart));
    updateCartCount();
}

function handleAddToCart() {
    const teaName = getQueryParam('tea'); // Get the tea name from URL parameter
    const size = document.getElementById('size').value;
    const temperature = document.getElementById('ice').value;
    const sugarLevel = document.getElementById('sugar').value;
    
    // Fetch selected toppings
    const toppings = Array.from(document.querySelectorAll('.toppings input:checked')).map(input => input.value);
    
    const item = {
        name: teaName, // Use the tea name from the URL parameter
        size: size,
        sugarLevel: sugarLevel,
        temperature: temperature,
        toppings: toppings.join(', ') // Join toppings as a string
    };

    addToCart(item);
    
    alert(`You added ${item.name} to the cart!`);

}
// Adding an event listener to the 'Submit Order' button

function updateCartDisplay() {
    const cartItems = JSON.parse(localStorage.getItem('cart')) || [];
    const cartItemsContainer = document.getElementById('cart-items');
    let totalPrice = 0;

    cartItemsContainer.innerHTML = ''; // Clear existing items

    cartItems.forEach((item, index) => {
        const itemElement = document.createElement('div');
        itemElement.classList.add('cart-item');
        
        const itemDetails = document.createElement('span');
        itemDetails.textContent = `${item.name}, Size: ${item.size}, Ice: ${item.temperature}, Sugar: ${item.sugarLevel}, Toppings: ${item.toppings} - $${calculateItemPrice(item).toFixed(2)}`;
        
        const deleteButton = document.createElement('button');
        deleteButton.innerHTML = '&times;'; // '×' symbol, or you could use an icon
        deleteButton.classList.add('delete-button');
        deleteButton.onclick = function() { removeItemFromCart(index); };

        itemElement.appendChild(itemDetails);
        itemElement.appendChild(deleteButton);
        cartItemsContainer.appendChild(itemElement);
        totalPrice += calculateItemPrice(item);
    });

    document.getElementById('total-amount').textContent = totalPrice.toFixed(2);
}

function removeItemFromCart(index) {
    cart.splice(index, 1); // Remove the item from the cart
    localStorage.setItem('cart', JSON.stringify(cart)); // Update local storage
    updateCartCount();
    updateCartDisplay(); // Refresh the cart display
}


function calculateItemPrice(item) {
    // Assuming teaPricing is defined globally as shown earlier
    let price = teaPricing[item.name][item.size];
    price += (item.toppings.split(', ').length * 0.5);
    return price;
}
if (window.location.pathname.endsWith('cart.html')) {
    document.addEventListener('DOMContentLoaded', updateCartDisplay);
}


function handlePaymentSubmit(event) {
    event.preventDefault();

    // Clear the cart
    localStorage.removeItem('cart');
    cart = [];
}

// Add event listener to the payment form
const paymentForm = document.querySelector('.payment-form');
if (paymentForm) {
    paymentForm.addEventListener('submit', handlePaymentSubmit);
}
document.addEventListener('DOMContentLoaded', function() {
    updateCartCount();
});

function updateCartCount() {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    const itemCount = cart.length; // Assuming cart is an array of items
    const itemCountElement = document.getElementById('cart-item-count');
    if (itemCountElement && itemCount > 0) {
        itemCountElement.textContent = itemCount;
    }
}
function validateCardNumber(input) {
    // Allow only digits, and limit length to 16
    input.value = input.value.replace(/\D/g, '').slice(0, 16);
}

function formatExpiryDate(input) {
    // Remove non-digits and limit length
    input.value = input.value.replace(/\D/g, '').slice(0, 4);
    
    // Insert '/' after the month (first 2 digits)
    if (input.value.length > 2) {
        input.value = input.value.slice(0, 2) + '/' + input.value.slice(2);
    }
}

document.addEventListener('DOMContentLoaded', () => {
    // Retrieve the user email from localStorage
    const userEmail = localStorage.getItem('userEmail');

    // Select the login link element
    const loginLink = document.querySelector('nav .left-nav a[href="login.html"]');

    if (userEmail && loginLink) {
        // Update the login link text to show the user's email
        loginLink.textContent = userEmail;

        // Create a logout button
        const logoutButton = document.createElement('button');
        logoutButton.textContent = 'Log Out';

        // Styling the logout button for a better appearance
        logoutButton.style.backgroundColor = '#f44336'; // Red background color for the button
        logoutButton.style.color = 'white'; // White text color
        logoutButton.style.border = 'none'; // No border for a cleaner look
        logoutButton.style.padding = '10px 20px'; // Padding for size and comfort
        logoutButton.style.marginLeft = '10px'; // Margin on the left for spacing
        logoutButton.style.borderRadius = '5px'; // Rounded corners for a smoother look
        logoutButton.style.cursor = 'pointer'; // Cursor changes to a hand when hovering
        logoutButton.style.fontSize = '1em'; // Font size for readability

        // Setting the action for the logout button
        logoutButton.onclick = function() {
            // Clear the user email from localStorage
            localStorage.removeItem('userEmail');

            // Reload the page to reflect the logout status
            window.location.reload();
        };

        // Insert the logout button next to the login link
        loginLink.parentNode.insertBefore(logoutButton, loginLink.nextSibling);
    }
});


