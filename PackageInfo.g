# SPDX-License-Identifier: GPL-2.0-or-later
# CategoriesWithAmbientObjects: Categories with objects having ambient objects
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#

SetPackageInfo( rec(

PackageName := "CategoriesWithAmbientObjects",
Subtitle := "Categories with objects having ambient objects",
Version := Maximum( [
                   "2021.03-05", ## Mohamed's version
                   ## this line prevents merge conflicts
                   "2015.10-06", ## Kamal's version
                   ## this line prevents merge conflicts
                   "2015.11-01", ## Fabian's version
                   ## this line prevents merge conflicts
                   ] ),

# this avoids git-merge conflicts
Date := ~.Version{[ 1 .. 10 ]},
Date := Concatenation( "01/", ~.Version{[ 6, 7 ]}, "/", ~.Version{[ 1 .. 4 ]} ),
License := "GPL-2.0-or-later",


Persons := [
  rec( 
    LastName      := "Barakat",
    FirstNames    := "Mohamed",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "mohamed.barakat@uni-siegen.de",
    WWWHome       := "https://mohamed-barakat.github.io/",
    PostalAddress := Concatenation( [
                       "Walter-Flex-Str. 3\n",
                       "57068 Siegen\n",
                       "Germany" ] ),
    Place         := "Siegen",
    Institution   := "University of Siegen"
  ),
  rec( 
    LastName      := "Saleh",
    FirstNames    := "Kamal",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "kamal.saleh@uni-siegen.de",
    WWWHome       := "https://github.com/kamalsaleh/",
    PostalAddress := Concatenation( [
                       "Walter-Flex-Str. 3\n",
                       "57068 Siegen\n",
                       "Germany" ] ),
    Place         := "Siegen",
    Institution   := "University of Siegen"
  ),
  
],

# BEGIN URLS
SourceRepository := rec(
    Type := "git",
    URL := "https://github.com/homalg-project/CategoriesWithAmbientObjects",
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := "https://homalg-project.github.io/pkg/CategoriesWithAmbientObjects",
PackageInfoURL  := "https://homalg-project.github.io/CategoriesWithAmbientObjects/PackageInfo.g",
README_URL      := "https://homalg-project.github.io/CategoriesWithAmbientObjects/README.md",
ArchiveURL      := Concatenation( "https://github.com/homalg-project/CategoriesWithAmbientObjects/releases/download/v", ~.Version, "/CategoriesWithAmbientObjects-", ~.Version ),
# END URLS

ArchiveFormats := ".tar.gz .zip",

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages
##    "other"         for all other packages
##
Status := "dev",

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "CategoriesWithAmbientObjects",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Categories with objects having ambient objects",
),

Dependencies := rec(
  GAP := ">=4.4",
  NeededOtherPackages := [
                   [ "AutoDoc", ">= 2013.12.04" ],
                   [ "AttributeCategoryForCAP", ">= 2016.09.14" ],
                   [ "GeneralizedMorphismsForCAP", ">= 2017.04.01" ],
                   [ "FreydCategoriesForCAP", ">= 2020.09-21" ],
                   [ "ToolsForHomalg", ">= 2015.09.23" ],
                   [ "GAPDoc", ">= 1.1" ]
                   ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ],
),

AvailabilityTest := function( )
    return true;
end,

TestFile := "tst/testall.g",

Keywords := [ "categories", "ambient objects" ]

));
