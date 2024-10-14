CREATE TABLE IF NOT EXISTS "Users" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "role_id" INTEGER NOT NULL,
    "login" TEXT UNIQUE NOT NULL,
    "password" TEXT NOT NULL,
    "full_name" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "registration_timestamp" VARCHAR(20) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY ("role_id") REFERENCES "roles"("id")
);

CREATE TABLE IF NOT EXISTS "roles" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "registration_timestamp" VARCHAR(20) NOT NULL DEFAULT CURRENT_TIMESTAMP
);

