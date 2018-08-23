import Typed from 'typed.js';

function loadDynamicBannerText() {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Garden!", "Field!", "Pool!", "Outdoor Kitchen!", "Woodland!"],
      typeSpeed: 50,
      loop: true
    });

  }
}

export { loadDynamicBannerText };
