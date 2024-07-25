/*
  Warnings:

  - You are about to drop the column `createAt` on the `Issue` table. All the data in the column will be lost.
  - You are about to drop the column `updateAt` on the `Issue` table. All the data in the column will be lost.
  - The values [INPROGRESS,CLOSE] on the enum `Issue_status` will be removed. If these variants are still used in the database, this will fail.
  - Added the required column `updatedAt` to the `Issue` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Issue` DROP COLUMN `createAt`,
    DROP COLUMN `updateAt`,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `updatedAt` DATETIME(3) NOT NULL,
    MODIFY `description` TEXT NOT NULL,
    MODIFY `status` ENUM('OPEN', 'IN_PROGRESS', 'CLOSED') NOT NULL DEFAULT 'OPEN';
