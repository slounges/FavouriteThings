import { fetchData } from "./modules/DataMiner.js";

(() => {
    // this receives the data payload from our AJAX request, parses it (turns the returned JSON object back into a plain JavaScript object) and renders the data to our view (the markup in index.html)
    function handleDataSet(data) {
        let userSection = document.querySelector('.user-section'),
            userTemplate = document.querySelector('#user-template').content;

        // loop through the JavaScript object and for each user, make a copy of the user template we find at the bottom of index.html, populate it with the user's data, and put that fresh copy in the users section in index.html

        for (let user in data) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.user').children;

            currentUserText[1].src = `images/${data[user].image}`;
            currentUserText[2].textContent = data[user].title;
            currentUserText[3].textContent = data[user].description;

            // add this new user to the view
            userSection.appendChild(currentUser);
        }

        console.log(data);
    }

    fetchData("./includes/index.php").then(data => handleDataSet(data)).catch(err => { console.log(err); });

})();