document.addEventListener("DOMContentLoaded", () => {
    const carouselInner = document.getElementById("carouselInner");
    const prevBtn = document.getElementById("prevBtn");
    const nextBtn = document.getElementById("nextBtn");
    const productBox = document.getElementById("product-box");
    const pd = document.getElementById("products");
    const backButton = document.getElementById("backToMain");
  
    let items = [];
    let currentIndex = 0;
    const itemsPerPage = 4;
    const totalPages = () => Math.ceil(items.length / itemsPerPage);
  
    function fetchCategories() {
      fetch("http://localhost/intern/etechpr.php?category")
        .then((response) => response.json())
        .then((data) => {
          items = data;
          loadItems();
          updateCarousel();
        })
        .catch((error) => console.error("Error fetching categories:", error));
    }
  
    function loadItems() {
      carouselInner.innerHTML = "";
      items.forEach((item) => {
        const carouselItem = document.createElement("div");
        carouselItem.classList.add("carousel-item");
  
        const content = document.createElement("div");
        content.classList.add("carousel-item-content");
  
        const title = document.createElement("h5");
        title.textContent = item.title;
        const img = document.createElement("img");
        img.src = item.img;
        // content.style.width = "150px"
        // content.style.height = "200px"
        const subCat = document.createElement("ul");
        subCat.classList.add("subCategory");
        subCat.style.display = "none";
  
        fetch(`http://localhost/intern/etechpr.php?subcategory&catId=${item.id}`)
          .then((response) => response.json())
          .then((subcategories) => {
            subcategories.forEach((subItem) => {
              const li = document.createElement("li");
              li.textContent = subItem.title;
              li.addEventListener("click", () => {
                window.location.href = `http://localhost/intern/etechpr.php?product&subId=${subItem.id}`;
              });
              subCat.appendChild(li);
            });
          })
          .catch((error) =>
            console.error("Error fetching subcategories:", error)
          );
  
        content.appendChild(img);
        content.appendChild(title);
        
        content.appendChild(subCat);
        carouselItem.appendChild(content);
        carouselInner.appendChild(carouselItem);
  
        content.addEventListener("mouseover", () => showSubCategories(subCat));
        content.addEventListener("mouseout", () => hideSubCategories(subCat));
      });
    }
  
    function showProduct(subId) {
      productBox.style.display = "flex";
      fetch(`http://localhost/intern/etechpr.php?product&subId=${subId}`)
        .then((response) => {
          if (!response.ok) {
            throw new Error("Network response was not ok");
          }
          return response.json();
        })
        .then((data) => {
          pd.innerHTML = "";
          data.forEach((item) => {
            const divProduct = document.createElement("div");
            divProduct.style.display = "flex";
            divProduct.style.margin = "20px";
            const h3 = document.createElement("h3");
            h3.textContent = item.name;
            divProduct.appendChild(h3);
            pd.appendChild(divProduct);
          });
        })
        .catch((error) => console.error("Error fetching products:", error));
  
      backButton.addEventListener("click", () => {
        productBox.style.display = "none";
        pd.innerHTML = "";
      });
    }
  
    function showSubCategories(subCat) {
      subCat.style.display = "block";
    }
  
    function hideSubCategories(subCat) {
      subCat.style.display = "none";
    }
  
    function updateCarousel() {
      const itemWidth = carouselInner.clientWidth / itemsPerPage;
      carouselInner.style.transform = `translateX(-${
        currentIndex * itemWidth
      }px)`;
    }
  
    function nextSlide() {
      currentIndex = (currentIndex + 1) % totalPages();
      updateCarousel();
    }
  
    function prevSlide() {
      currentIndex = (currentIndex - 1 + totalPages()) % totalPages();
      updateCarousel();
    }
  
    prevBtn.addEventListener("click", prevSlide);
    nextBtn.addEventListener("click", nextSlide);
  
    window.addEventListener("resize", updateCarousel);
  
    fetchCategories();
  
    setInterval(nextSlide, 7000); // Change slide every 7 seconds
  });
  