document.addEventListener('DOMContentLoaded', () => {
    const carouselInner = document.getElementById('carouselInner');
    const prevBtn = document.getElementById('prevBtn');
    const nextBtn = document.getElementById('nextBtn');
    const box = document.getElementById('carousel-box');
    const productBox = document.getElementById('product-box');
    const pd = document.getElementById('products');
    const backButton = document.getElementById('backToMain');

    const items = [
        {
            img: 'https://via.placeholder.com/800x400?text=Image+1',
            title: 'Special title treatment',
            text: 'With supporting text below as a natural lead-in to additional content.',
            subcategory: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3', 'Subcategory 4']
        },
        {
            img: 'https://via.placeholder.com/800x400?text=Image+2',
            title: 'Special title treatment',
            text: 'With supporting text below as a natural lead-in to additional content.',
            subcategory: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3', 'Subcategory 4']
        },
        {
            img: 'https://via.placeholder.com/800x400?text=Image+3',
            title: 'Special title treatment',
            text: 'With supporting text below as a natural lead-in to additional content.',
            subcategory: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3', 'Subcategory 4']
        },
        {
            img: 'https://via.placeholder.com/800x400?text=Image+4',
            title: 'Special title treatment',
            text: 'With supporting text below as a natural lead-in to additional content.',
            subcategory: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3', 'Subcategory 4']
        },
        {
            img: 'https://via.placeholder.com/800x400?text=Image+5',
            title: 'Special title treatment',
            text: 'With supporting text below as a natural lead-in to additional content.',
            subcategory: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3', 'Subcategory 4']
        },
        {
            img: 'https://via.placeholder.com/800x400?text=Image+6',
            title: 'Special title treatment',
            text: 'With supporting text below as a natural lead-in to additional content.',
            subcategory: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3', 'Subcategory 4']
        },
        {
            img: 'https://via.placeholder.com/800x400?text=Image+6',
            title: 'Special title treatment',
            text: 'With supporting text below as a natural lead-in to additional content.',
            subcategory: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3', 'Subcategory 4']
        },
        {
            img: 'https://via.placeholder.com/800x400?text=Image+6',
            title: 'Special title treatment',
            text: 'With supporting text below as a natural lead-in to additional content.',
            subcategory: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3', 'Subcategory 4']
        },
        {
            img: 'https://via.placeholder.com/800x400?text=Image+6',
            title: 'Special title treatment',
            text: 'With supporting text below as a natural lead-in to additional content.',
            subcategory: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3', 'Subcategory 4']
        }
    ];

    const product = ["product1", "product2", "product3", "product4"];

    let currentIndex = 0;
    const itemsPerPage = 4;
    const totalItems = items.length;
    const totalPages = Math.ceil(totalItems / itemsPerPage);

    function loadItems() {
        items.forEach(item => {
            const carouselItem = document.createElement('div');
            carouselItem.classList.add('carousel-item');

            const img = document.createElement('img');
            img.src = item.img;
            img.alt = item.title;

            const content = document.createElement('div');
            content.classList.add('carousel-item-content');

            const title = document.createElement('h5');
            title.textContent = item.title;

            const text = document.createElement('p');
            text.textContent = item.text;

            const subCat = document.createElement('ul');
            subCat.classList.add('subCategory');

            item.subcategory.forEach(subItem => {
                const li = document.createElement('li');
                li.textContent = subItem;
                li.addEventListener('click', () => showProduct(subItem));
                subCat.appendChild(li);
            });

            content.appendChild(title);
            content.appendChild(text);
            content.appendChild(subCat);
            carouselItem.appendChild(img);
            carouselItem.appendChild(content);
            carouselInner.appendChild(carouselItem);

            content.addEventListener('mouseover', () => showSubCategories(subCat));
            content.addEventListener('mouseout', () => hideSubCategories(subCat));
        });
    }
    function showProduct(item) {
        box.style.display = 'none';
        productBox.style.display = 'flex';
        fetch(`http://localhost/intern/process.php?subcategory=${item}`)
            .then(response => {
                // Check if response is successful
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                // Parse JSON response
                return response.json();
            })
            .then(data => {
                // Handle the data
                data.forEach(item => {
                    const divProduct = document.createElement('div');
                    divProduct.style.display = 'flex'
                    divProduct.style.margin = '20px';
                    const h3 = document.createElement('h3');
                    h3.textContent = item.title;
                    divProduct.appendChild(h3);
                    pd.appendChild(divProduct);
                }); // Do whatever you want with the data
            })
            .catch(error => {
                // Handle any errors
                console.error('There was a problem with the fetch operation:', error);
            });


        product.forEach(it => {

        });
        backButton.addEventListener('click', function () {
            box.style.display = 'block';
            productBox.style.display = 'none';
            pd.innerHTML = ""
        });


    }

    function showSubCategories(subCat) {
        subCat.style.display = 'block';
    }

    function hideSubCategories(subCat) {
        subCat.style.display = 'none';
    }

    function updateCarousel() {
        const itemWidth = carouselInner.clientWidth / itemsPerPage;
        carouselInner.style.transform = `translateX(-${currentIndex * itemWidth}px)`;
    }

    function nextSlide() {
        currentIndex = (currentIndex + 1) % totalPages;
        updateCarousel();
    }

    function prevSlide() {
        currentIndex = (currentIndex - 1 + totalPages) % totalPages;
        updateCarousel();
    }

    prevBtn.addEventListener('click', prevSlide);
    nextBtn.addEventListener('click', nextSlide);

    window.addEventListener('resize', updateCarousel);

    loadItems();
    updateCarousel();

    // Automatic sliding
    setInterval(nextSlide, 7000); // Change slide every 5 seconds
});
