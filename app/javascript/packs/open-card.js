const openCards = () => {
  const activeCards = document.querySelectorAll(".open-card");
  console.log(activeCards);
  activeCards.forEach((card) => {
    const num = card.dataset.id;
    let modal = document.getElementById(`modal-card-${num}`);
    card.addEventListener("click", (event) => {
      modal.classList.add("modal-active");
      document.querySelector(".land").style.overflow = "hidden";
    })
    let button = document.getElementById(`modal-close-${num}`);
    button.addEventListener("click", (event) => {
      modal.classList.remove("modal-active");
      document.querySelector(".land").style.overflow = "auto";
    })
  });
}

export { openCards };