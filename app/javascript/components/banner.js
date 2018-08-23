import Typed from 'typed.js';

function loadDynamicBannerText() {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["a Garden!", "a Field!", "a Pool!", "an Outdoor Kitchen!", "a Woodland!"],
      typeSpeed: 50,
      loop: true
    });

  }
}

export { loadDynamicBannerText };
