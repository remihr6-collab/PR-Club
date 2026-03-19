// Shared navigation
function renderNav(activePage) {
  const pages = [
    { href: 'mission.html', label: 'Notre mission' },
    { href: 'partenaires.html', label: 'Partenaires' },
    { href: 'rejoindre.html', label: 'Rejoindre' },
  ];
  const links = pages.map(p =>
    `<li><a href="${p.href}" class="${activePage === p.href ? 'active' : ''}">${p.label}</a></li>`
  ).join('');

  document.getElementById('nav-placeholder').innerHTML = `
    <nav>
      <a href="index.html" class="nav-logo">
        <div class="nav-logo-main">THE PR</div>
        <div class="nav-logo-sub">Club</div>
      </a>
      <ul class="nav-links">${links}</ul>
      <div class="nav-right">
        <a href="membre.html" class="btn-nav-outline">Espace membre</a>
        <a href="rejoindre.html" class="btn-nav-gold">Rejoindre le Club</a>
      </div>
      <button class="hamburger" onclick="document.getElementById('mobileNav').classList.toggle('open')">
        <span></span><span></span><span></span>
      </button>
    </nav>
    <div class="mobile-nav" id="mobileNav">
      ${pages.map(p => `<a href="${p.href}">${p.label}</a>`).join('')}
      <a href="membre.html">Espace membre</a>
      <a href="rejoindre.html">Rejoindre le Club →</a>
    </div>
  `;
}

function renderFooter() {
  document.getElementById('footer-placeholder').innerHTML = `
    <footer>
      <div class="footer-inner">
        <div>
          <div class="footer-logo-main">THE PR</div>
          <div class="footer-logo-sub">Club</div>
          <p class="footer-tagline">Collectif de femmes engagées<br>autour des marques et des<br>relations de presse en Suisse.</p>
        </div>
        <div>
          <p class="footer-col-title">Navigation</p>
          <div class="footer-nav">
            <a href="mission.html">Notre mission</a>
            <a href="partenaires.html">Partenaires</a>
            <a href="rejoindre.html">Rejoindre</a>
            <a href="membre.html">Espace membre</a>
          </div>
        </div>
        <div>
          <p class="footer-col-title">Contact</p>
          <div class="footer-nav">
            <a href="mailto:contact@theprclub.ch">contact@theprclub.ch</a>
            <a href="rejoindre.html">Candidater</a>
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        <p class="footer-copy">© 2026 The PR Club — Tous droits réservés</p>
        <p class="footer-copy">Conçu par <a href="https://mirroragency.ch" style="color:var(--gold);text-decoration:none;">Mirror Agency</a></p>
      </div>
    </footer>
  `;
}

// Scroll reveal
document.addEventListener('DOMContentLoaded', () => {
  const obs = new IntersectionObserver(entries => {
    entries.forEach(e => { if (e.isIntersecting) e.target.classList.add('vis'); });
  }, { threshold: 0.08 });
  document.querySelectorAll('.rv').forEach(el => obs.observe(el));
});
