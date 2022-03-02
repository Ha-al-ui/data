CREATE TABLE "Produit"(
    "Produit id" INT NOT NULL,
    "titre" NVARCHAR(255) NOT NULL,
    "prix" INT NOT NULL,
    "stack" INT NOT NULL
);

ALTER TABLE
    "Produit" ADD CONSTRAINT "produit_produit id_primary" PRIMARY KEY("Produit id");
CREATE TABLE "Ordre"(
    "Reference" INT NOT NULL,
    "date" DATE NOT NULL,
    "adress-order" INT NOT NULL
);

ALTER TABLE
    "Ordre" ADD CONSTRAINT "ordre_reference_primary" PRIMARY KEY("Reference");
CREATE TABLE "Client"(
    "Client Id" INT NOT NULL,
    "Nom" INT NOT NULL,
    "Prénom" INT NOT NULL,
    "Tel" INT NOT NULL,
    "Adress-client" INT NOT NULL,
    "email" INT NOT NULL,
    "password" INT NOT NULL
);

ALTER TABLE
    "Client" ADD CONSTRAINT "client_client id_primary" PRIMARY KEY("Client Id");
CREATE TABLE "Quantité details"("Ordre Quantitée" INT NOT NULL);
ALTER TABLE
    "Client" ADD CONSTRAINT "client_nom_foreign" FOREIGN KEY("Nom") REFERENCES "Ordre"("Reference");
