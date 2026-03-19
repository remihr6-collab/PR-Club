# Generate partner pages
generate_partner() {
  local id=$1 letter=$2 name=$3 cat=$4 desc1=$5 desc2=$6 avantage=$7 code=$8 info1=$9 info2=${10} info3=${11} web=${12}
  cat > "/home/claude/prclub/partner-${id}.html" << HTML
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${name} — The PR Club</title>
<link rel="stylesheet" href="style.css">
<style>
.page-hero{padding:140px 48px 80px;background:var(--white);}
.page-hero-inner{max-width:1200px;margin:0 auto;}
@media(max-width:960px){.page-hero{padding:100px 24px 60px;}.partner-detail-grid{grid-template-columns:1fr;}}
</style>
</head>
<body>
<div id="nav-placeholder"></div>
<div class="page-hero">
  <div class="page-hero-inner">
    <a href="partenaires.html" class="back-link rv">← Retour aux partenaires</a>
    <div class="partner-detail-grid rv">
      <div>
        <div class="partner-avatar-big">${letter}</div>
        <p class="section-label">Partenaire ${cat}</p>
        <h1 class="section-title">${name}</h1>
        <div class="divider-gold"></div>
        <p style="font-size:14px;color:var(--grey);line-height:1.9;margin-bottom:20px;">${desc1}</p>
        <p style="font-size:14px;color:var(--grey);line-height:1.9;margin-bottom:32px;">${desc2}</p>
        <div class="partner-avantage-box">
          <div class="partner-avantage-label">Votre avantage membre</div>
          <div class="partner-avantage-val">${avantage}</div>
          <div class="partner-avantage-code">${code}</div>
        </div>
        <a href="membre.html" class="btn btn-gold">Accéder à mon espace membre</a>
      </div>
      <div class="partner-info-grid">
        <div class="partner-info-item"><div class="partner-info-label">Secteur</div><div class="partner-info-val">${cat}</div></div>
        <div class="partner-info-item"><div class="partner-info-label">Présence</div><div class="partner-info-val">${info1}</div></div>
        <div class="partner-info-item"><div class="partner-info-label">Avantage PR Club</div><div class="partner-info-val">${info2}</div></div>
        <div class="partner-info-item"><div class="partner-info-label">Site web</div><div class="partner-info-val">${web}</div></div>
      </div>
    </div>
  </div>
</div>
<div id="footer-placeholder"></div>
<script src="shared.js"></script>
<script>renderNav('partenaires.html');renderFooter();</script>
</body>
</html>
HTML
}

generate_partner "luxe" "L" "Luxe Beauté" "Cosmétiques Premium" \
  "Luxe Beauté est la référence suisse en cosmétiques haut de gamme pour les professionnelles exigeantes. Leurs soins sont formulés avec des ingrédients d'exception, sourcés en Suisse et en Europe." \
  "En tant que membre du PR Club, vous bénéficiez d'une remise exclusive de 20% sur l'ensemble de leur gamme, valable en boutique et en ligne." \
  "−20% sur toute la gamme" "Code : PRCLUB20 — valable en boutique et en ligne" \
  "Genève, Lausanne, Zurich + en ligne" "−20% sur toute la gamme" "Sur présentation ou code en ligne" "luxebeaute.ch"

generate_partner "atelier" "A" "Atelier Press" "Formation PR" \
  "Atelier Press propose des formations certifiantes en relations presse et communication digitale, conçues par et pour des professionnelles du secteur. Formats flexibles : en ligne, présentiel, ou hybride." \
  "Les membres du PR Club bénéficient de 30% de réduction sur toutes les formations — la meilleure façon d'investir dans votre expertise." \
  "−30% sur toutes les formations" "Mentionnez votre adhésion au PR Club lors de l'inscription" \
  "En ligne & présentiel" "−30% sur toutes les formations" "Sur inscription" "atelierpress.ch"

generate_partner "studio" "S" "Studio Genève" "Photo & Branding" \
  "Studio Genève est un studio photo et branding spécialisé dans le personal brand des professionnelles. Shootings portraits, contenus réseaux sociaux, identité visuelle — tout pour une image qui vous ressemble." \
  "Les membres du PR Club bénéficient de 15% sur tous les shootings et prestations branding, sur réservation." \
  "−15% sur tous les shootings" "Sur réservation — mentionnez le PR Club" \
  "Genève — sur réservation" "−15% sur tous les shootings" "Sur présentation" "studiogeneve.ch"

generate_partner "papier" "M" "Maison Papier" "Impression Premium" \
  "Maison Papier est la référence suisse en impression premium. Cartes de visite, dossiers de presse, invitations, supports événementiels — tout est conçu pour laisser une première impression mémorable." \
  "Les membres du PR Club bénéficient de 25% sur toutes les commandes en ligne supérieures à 100 CHF." \
  "−25% sur toutes les commandes" "Code : PRCLUB25 — commandes dès 100 CHF" \
  "Suisse entière — en ligne" "−25% dès 100 CHF" "Code à la commande" "maisonpapier.ch"

generate_partner "cowork" "E" "Espace Cowork" "Coworking Luxe" \
  "Espace Cowork propose des espaces de travail premium à Genève et Lausanne. Salles de réunion, bureaux privés, espaces communs — tout est pensé pour les professionnelles qui veulent travailler dans un cadre inspirant." \
  "Les membres du PR Club bénéficient de 40% sur toutes les réservations demi-journée et journée complète." \
  "−40% sur toutes les réservations" "Code : PRCLUB — demi-journées et journées" \
  "Genève & Lausanne" "−40% sur toutes les réservations" "Code à la réservation" "espacecowork.ch"

generate_partner "legal" "V" "Vesta Legal" "Conseil Juridique" \
  "Vesta Legal est un cabinet spécialisé en droit des médias, contrats d'influence et protection de la propriété intellectuelle. Leurs avocates comprennent les enjeux spécifiques des professionnelles de la communication." \
  "Les membres du PR Club bénéficient d'une consultation de 30 minutes offerte pour toute première prise de contact." \
  "Consultation offerte 30 min" "Via contact@theprclub.ch — mise en relation directe" \
  "Genève" "Consultation 30 min offerte" "Via contact@theprclub.ch" "vestalegal.ch"

echo "All partner pages generated"
