<?php
require_once("DBConnect.php");
$query="Drop Customer Table";
$ret=mysql_query($query);
$query="CREATE TABLE Customer (customerID varchar (15), customerName varchar (50), customerPassword varchar (30), customerPhone varchar (15), customerAddress varchar (120), customerEmail varchar (30), customerage varchar (10), prepaidAmount int (30),  Primary Key(customerID))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "Customer table is created</br>";
}
else
{
	echo mysql_error();
}

$query="Drop Staff Table";
$ret=mysql_query($query);
$query="CREATE TABLE Staff (staffID varchar (15), staffName varchar (50), staffPassword varchar (30), staffPhone varchar (15), staffAddress varchar (120), staffEmail varchar (30), staffAge varchar (10), Primary Key(staffID))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "Staff table is created</br>";
}
else
{
	echo mysql_error();
}

$query="Drop MovieType Table";
$ret=mysql_query($query);
$query="CREATE TABLE MovieType (movietypeID varchar (15), movietypeName varchar (50), Primary Key(movietypeID))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "MovieType table is created</br>";
}
else
{
	echo mysql_error();
}

$query="Drop Movie Table";
$ret=mysql_query($query);
$query="CREATE TABLE Movie (movieID varchar (15), movieName varchar (50), movieInfo varchar (120), moviePrice int (20), movietypeID varchar (15), moviePoster varchar (500), movieFile varchar (100000), Primary Key(movieID), Foreign Key(movietypeID) references MovieType(movietypeID))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "Movie table is created</br>";
}
else
{
	echo mysql_error();
}
$query="Drop ProfileMovie Table";
$ret=mysql_query($query);
$query="CREATE TABLE ProfileMovie (movieID varchar (15), customerID varchar (15))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "ProfileMovie table is created</br>";
}
else
{
	echo mysql_error();
}
$query="Drop MoviePurchaseInfo Table";
$ret=mysql_query($query);
$query="CREATE TABLE MoviePurchaseInfo (mpurchaseID varchar (15), customerID varchar (15), movieID varchar(15), prepaidAmount int(30), purchaseDate varchar(30), Primary Key (mpurchaseID))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo " MoviePurchaseInfo is created</br>";
}
else
{
	echo mysql_error();
}

$query="Drop SongType Table";
$ret=mysql_query($query);
$query="CREATE TABLE SongType (songtypeID varchar (15), songtypeName varchar (50), Primary Key(songtypeID))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "SongType table is created</br>";
}
else
{
	echo mysql_error();
}

$query="Drop Song Table";
$ret=mysql_query($query);
$query="CREATE TABLE Song (songID varchar (15), songName varchar (50), songInfo varchar (120), songPrice int (20), songtypeID varchar (15), songArtwork varchar (500), songFile varchar (500), Primary Key(songID), Foreign Key(songtypeID) references SongType(songtypeID))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "Song table is created</br>";
}
else
{
	echo mysql_error();
}
$query="Drop ProfileSong Table";
$ret=mysql_query($query);
$query="CREATE TABLE ProfileSong (songID varchar (15), customerID varchar (15))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "ProfileSong table is created</br>";
}
else
{
	echo mysql_error();
}
$query="Drop SongPurchaseinfo Table";
$ret=mysql_query($query);
$query="CREATE TABLE SongPurchaseInfo (spurchaseID varchar (15), customerID varchar (15), songID varchar(15), prepaidAmount int(30), purchaseDate varchar(30), Primary Key (spurchaseID))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "SongPurchaseInfo table is created</br>";
}
else
{
	echo mysql_error();
}

$query="Drop Album Table";
$ret=mysql_query($query);
$query="CREATE TABLE Album (albumID varchar (15), albumName varchar (50), albumInfo varchar (120), albumPrice int (20), albumArtwork varchar (500), albumFile varchar (10000), Primary Key(albumID))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "Album table is created</br>";
}
else
{
	echo mysql_error();
}
$query="Drop ProfileAlbum Table";
$ret=mysql_query($query);
$query="CREATE TABLE ProfileAlbum (albumID varchar (15), customerID varchar (15))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "ProfileAlbum table is created</br>";
}
else
{
	echo mysql_error();
}
$query="Drop AlbumPurchaseinfo Table";
$ret=mysql_query($query);
$query="CREATE TABLE AlbumPurchaseinfo (apurchaseID varchar (15), customerID varchar (15), albumID varchar(15), prepaidAmount int(30), purchaseDate varchar(30), Primary Key (apurchaseID))";
$ret=mysql_query($query);

if ($ret>0)
{
	echo "AlbumPurchaseinfo table is created</br>";
}
else
{
	echo mysql_error();
}

$query = "INSERT INTO Staff(staffID,staffName,staffPassword,staffPhone,staffAddress,staffEmail,staffAge) values

(\"S-0001\",\"Htet Shine\",\"123456\",\"092345678\",\"Yangon\",\"htetshine@gmail.com\",\"20\")";

$ret=mysql_query($query);

if($ret)
{
	echo "<p>Staff Information are sucessfully inserted</p>";
}
else
{
	echo "<p>Error inserting staff information!".mysql_error()."</p>";
}
?>