function motd() {
    #6 - matrix; 25 - zelt; 32 - Johanna
    mensen=(32)
    for mensa in "${mensen[@]}"; do
        curl -s https://api.studentenwerk-dresden.de/openmensa/v2/canteens/$mensa | jq -r .name
        while read meal; do
            echo "$(echo "$meal" | awk -F '$' '{print $2}') € $(echo "$meal" | awk -F '$' '{print $1}')"
        done < <(curl -s https://api.studentenwerk-dresden.de/openmensa/v2/canteens/$mensa/days/$(date "+%Y-%m-%d")/meals | jq -r '.[] | "\(.name)$\(.prices.Studierende)$\(.notes)"' | grep -E "vegan|vegetarisch" | grep -v suppe)
    done
}
motd
