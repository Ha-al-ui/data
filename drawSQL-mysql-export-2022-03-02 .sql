CREATE TABLE `Produit`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Titre` VARCHAR(255) NOT NULL,
    `prix` INT NOT NULL,
    `stack` INT NOT NULL,
    `description` TEXT NOT NULL
);
ALTER TABLE
    `Produit` ADD PRIMARY KEY `produit_id_primary`(`id`);
CREATE TABLE `num-produit`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `produit-id` INT NOT NULL,
    `produit_num` INT NOT NULL
);
ALTER TABLE
    `num-produit` ADD PRIMARY KEY `num_produit_id_primary`(`id`);
CREATE TABLE `Ordre`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `produit_num_id` INT NOT NULL,
    `date` DATE NOT NULL,
    `adress_ordre` TEXT NOT NULL,
    `ordre_id_num` INT NOT NULL
);
ALTER TABLE
    `Ordre` ADD PRIMARY KEY `ordre_id_primary`(`id`);
CREATE TABLE `Ordre_num`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `num_client` INT NOT NULL,
    `num_ordre` INT NOT NULL
);
ALTER TABLE
    `Ordre_num` ADD PRIMARY KEY `ordre_num_id_primary`(`id`);
CREATE TABLE `Client`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Nom` VARCHAR(255) NOT NULL,
    `Prénom` VARCHAR(255) NOT NULL,
    `Tel` INT NOT NULL,
    `Adress_client` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `Password` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Client` ADD PRIMARY KEY `client_id_primary`(`id`);
ALTER TABLE
    `Produit` ADD CONSTRAINT `produit_titre_foreign` FOREIGN KEY(`Titre`) REFERENCES `num-produit`(`id`);
ALTER TABLE
    `num-produit` ADD CONSTRAINT `num_produit_produit_id_foreign` FOREIGN KEY(`produit-id`) REFERENCES `Ordre`(`id`);
ALTER TABLE
    `Ordre` ADD CONSTRAINT `ordre_produit_num_id_foreign` FOREIGN KEY(`produit_num_id`) REFERENCES `Ordre_num`(`id`);
ALTER TABLE
    `Client` ADD CONSTRAINT `client_prénom_foreign` FOREIGN KEY(`Prénom`) REFERENCES `Ordre_num`(`id`);