/*
  Warnings:

  - You are about to drop the `type` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `type`;

-- CreateTable
CREATE TABLE `TypeNumber` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `col1` INTEGER UNSIGNED NOT NULL,
    `col2` BIGINT NOT NULL,
    `col3` BIGINT UNSIGNED NOT NULL,
    `col4` SMALLINT NOT NULL,
    `col5` SMALLINT UNSIGNED NOT NULL,
    `col6` MEDIUMINT NOT NULL,
    `col7` MEDIUMINT UNSIGNED NOT NULL,
    `col8` TINYINT NOT NULL,
    `col9` TINYINT UNSIGNED NOT NULL,
    `col10` DECIMAL(65, 30) NOT NULL,
    `col11` DOUBLE NOT NULL,
    `col12` FLOAT NOT NULL,
    `col13` BIGINT NOT NULL DEFAULT 10,
    `col14` BIGINT NOT NULL,

    UNIQUE INDEX `TypeNumber_col14_key`(`col14`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TypeString` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `col1` VARCHAR(191) NOT NULL,
    `col2` VARCHAR(191) NULL,
    `col3` VARCHAR(191) NOT NULL DEFAULT 'Bangladesh',
    `col4` VARCHAR(1000) NOT NULL,
    `col6` TINYTEXT NOT NULL,
    `col7` TEXT NOT NULL,
    `col8` LONGTEXT NOT NULL,
    `col9` MEDIUMTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `role` ENUM('Apple', 'Banana', 'Oranges', 'Ramphal') NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
