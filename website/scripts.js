let total = 0

function addToCart(name_cost) {
    key = localStorage.length
    window.localStorage.setItem(key, name_cost)
}

function displayCart() {
    Object.keys(localStorage).forEach((key) => {
        var item = window.localStorage.getItem(key)
        itemList = item.split('_')
        const checkout_list = document.getElementById('summary-list')
        let newElem = document.createElement('li');
        newElem.innerHTML= itemList[0]
        total = total + parseInt(itemList[1])
        checkout_list.appendChild(newElem)})
        const checkout_total = document.getElementById('checkout-total')
        let newElem = document.createElement('li')
        newElem.innerHTML = 'Your cart total is: $'+total
        checkout_total.appendChild(newElem)
        window.localStorage.clear()
    }