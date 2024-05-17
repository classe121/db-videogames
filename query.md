# Creazione database gestione videogiochi
- Software house
- Videogiochi
- Recensioni

## Tables

### sofware_house
- name
- country [varchar(2)]

### videogames
- name
- release_date
- genre
- compatibility
- software_version
- price [decimal(8,2)]
- pegi
- copies_sold
- multiplayer
- software_house_id
- engine
- digital_only [boolean]
- language
- subtitles

### reviews
- description
- vote
- beginner_friendly
- videogame_id

### 1) Lista videogiochi
```sql
SELECT * FROM `videogames`
```

### 2) Quanti videogiochi ci sono nel DB
```sql
SELECT COUNT(*) AS total_games FROM `videogames`;
```

### 3) Quanti videogiochi iniziano con una data stringa nel titolo "the"
```sql
SELECT * FROM `videogames` WHERE `title` LIKE "the%";
```

### 3a) Quanti videogiochi contengono una data stringa nel titolo "the"
```sql
SELECT * FROM `videogames` WHERE `title` LIKE "%THE%";
```

### 4) Quanti videogiochi per Software house ID
```sql
SELECT
    COUNT(`videogames`.`id`) AS videogame_number,
    `software_houses`.`id`,
    `software_houses`.`name`
FROM
    `videogames`
RIGHT JOIN `software_houses` ON `videogames`.`software_house_id` = `software_houses`.`id`
GROUP BY
	`software_houses`.`id`,
    `software_houses`.`name`
```

### extra - Videogiochi con genre
```sql
SELECT
	`videogames`.`id`,
    `videogames`.`title`,
    `genres`.`name` AS genre
FROM
	`videogames`
LEFT JOIN `genres_videogames` ON `videogames`.`id` = `genres_videogames`.`videogame_ID`
LEFT JOIN `genres` ON `genres_videogames`.`genres_ID` = `genres`.`ID`
ORDER BY `videogames`.`id`
```

### 6) Quanti videogiochi per Software house per anno, con nome Software house
```sql
SELECT
    COUNT(`videogames`.`id`) AS videogame_number,
    YEAR(`videogames`.`release_date`) as release_year,
    `software_houses`.`id`,
    `software_houses`.`name`
FROM
    `videogames`
RIGHT JOIN `software_houses` ON `videogames`.`software_house_id` = `software_houses`.`id`
GROUP BY
	`software_houses`.`id`,
    `software_houses`.`name`,
    release_year
```