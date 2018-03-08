import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Design cocktail", "Spice up your life"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
