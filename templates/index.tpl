<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadanie 01 - Webmaster</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/tiny-slider.css">
    <link rel="stylesheet" href="./css/theme.css">
</head>

<body>
    <div id="app">
        {* {debug} *}
        <div id="header">
            <h1>Best sellers</h1>
            <hr>
        </div>
        <div id="container" class="my-slider">

        {foreach from=$products item=item}
            <div class="product">
                <img src=".{$item.img_url}" alt="{$item.link_rewrite}">
                <p>{$item.name}</p>
                    {if $item.specific_price}
                        <div id="red"class="font-weight-600">
                            <div id="normalPrice">{displayPrice price=$item.price}</div> <span id="priceBeforeDiscount">{displayPrice price=$item.specific_price.priceWithoutReduction}</span>
                        </div>
                    {else}
                        <div  class="font-weight-600">
                            {displayPrice price=$item.price}
                        </div>
                    {/if}
            </div>
        {/foreach}

        </div>
    </div>
    <script src="./js/jquery-3.6.0.slim.min.js"></script>
    <script src="./js/tiny-slider.js"></script>
    <script src="./js/theme.js"></script>
</body>

</html>