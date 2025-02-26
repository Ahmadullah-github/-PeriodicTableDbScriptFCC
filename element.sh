PSQL="psql -X --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
else
  elements=$($PSQL "select atomic_number, symbol, name from elements;")
  found=0
  while IFS="|" read -r ATOMIC_NUMBER SYMBOL NAME; do
    if [[ $1 = $ATOMIC_NUMBER || $1 = $SYMBOL || $1 = $NAME ]]; then
      found=1
      returnedData=$($PSQL "select type, atomic_mass, melting_point_celsius, boiling_point_celsius from properties inner join types using(type_id) where atomic_number = $ATOMIC_NUMBER")
      echo "$returnedData" | while IFS="|" read TYPE ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS; do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
      done
      break
    fi
  done <<< "$elements"
  if [[ $found -eq 0 ]]; then
    echo "I could not find that element in the database."
  fi
fi