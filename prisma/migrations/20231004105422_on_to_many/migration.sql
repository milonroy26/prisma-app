/*
  Warnings:

  - You are about to drop the `binarylob` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `booleanchar` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `product` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `timedate` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `typenumber` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `typestring` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `binarylob`;

-- DropTable
DROP TABLE `booleanchar`;

-- DropTable
DROP TABLE `product`;

-- DropTable
DROP TABLE `timedate`;

-- DropTable
DROP TABLE `typenumber`;

-- DropTable
DROP TABLE `typestring`;

-- CreateTable
CREATE TABLE `Post` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `description` LONGTEXT NOT NULL,
    `userId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Post` ADD CONSTRAINT `Post_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
