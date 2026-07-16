#!/bin/bash
SRC="$HOME/Documents/Claude/Projects/Työnhaku/Portfolio uusi"
DST="$HOME/GitHub/portfoliojohanna"

if [ ! -d "$DST" ]; then
  echo "❌ Kansiota ei löydy: $DST"
  echo "Tarkista polku GitHub Desktopista: Repository → Show in Finder"
  read -p "Paina Enter sulkeaksesi..."
  exit 1
fi

echo "✅ Kopioidaan tiedostot..."
cp "$SRC"/*.html "$DST/"
cp "$SRC"/sitemap.xml "$DST/"
cp "$SRC"/robots.txt "$DST/"

echo ""
echo "✅ Valmis! Tiedostot kopioitu portfoliojohanna-kansioon."
echo "Voit nyt avata GitHub Desktopin ja tehdä commitin."
read -p "Paina Enter sulkeaksesi..."
