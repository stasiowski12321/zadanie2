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
});

    function updateControlButtons() {
        getSvgBySelector('.tns-controls button[data-controls="prev"]','./images/prev.svg');
        getSvgBySelector('.tns-controls button[data-controls="next"]','./images/next.svg');
    }

    function getSvgBySelector(selector, path){
        var Button = document.querySelector(selector);

        if(Button){
            fetch(path)
            .then(response => response.text())
            .then(data => {
                Button.innerHTML = data;
            })
        }
    } 