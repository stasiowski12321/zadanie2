document.addEventListener('DOMContentLoaded', function() {
    var slider = tns({
        container: '.my-slider',
        items: 4,
        slideBy: 1,
        autoplayButton: true,
        nav: true,
        onInit: function() {
            updateControlButtons();
        },
    });

    function updateControlButtons() {
        var prevButton = document.querySelector('.tns-controls button[data-controls="prev"]');
        var nextButton = document.querySelector('.tns-controls button[data-controls="next"]');

        fetch('./images/prev.svg')
        .then(response => response.text())
        .then(data => {
            prevButton.innerHTML = data;
        })
        .catch(error => console.error('Error loading SVG:', error));

        fetch('./images/next.svg')
        .then(response => response.text())
        .then(data => {
            nextButton.innerHTML = data;
        })
        .catch(error => console.error('Error loading SVG:', error));
    }
});