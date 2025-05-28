if [[ "$1" == "--date" || "$1" == "-d" ]]; then
    date
fi

if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
    count=${2:-100}
    for i in $(seq 1 "$count"); do
        filename="log${i}.txt"
        echo "Nazwa pliku: $filename" > "$filename"
        echo "Utworzone przez: $0" >> "$filename"
        echo "Data: $(date)" >> "$filename"
    done
fi

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Dostępne opcje:"
    echo "--date, -d       Wyświetla aktualną datę"
    echo "--logs [N], -l   Tworzy N plików log (domyślnie 100)"
    echo "--help, -h       Wyświetla pomoc"
fi