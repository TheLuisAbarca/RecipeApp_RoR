import { Application } from '@hotwired/stimulus';

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

document.querySelectorAll('.recipe-links').forEach(element => {
  element.addEventListener('click', (e) => {
    await new Promise((r) => setTimeout(r, 2000));
    if (e.target.type === 'submit') {
      e.preventDefault();
    }
  });
})

export { application };
