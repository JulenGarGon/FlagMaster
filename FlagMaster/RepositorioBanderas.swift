//
//  RepositorioBanderas.swift
//  FlagMaster
//
//  Created by Julen García Gonzalo on 15/5/24.
//

import Foundation

class RepositorioBanderas{
    
    
    var banderas = [Int : Bandera]()
    
    //banderas += [Bandera(idBandera: "AfganistanFlag", nombreBandera: "Afganistan", puntosBandera: 5)]
    init(){
        crearBanderas()
    }
    
     func crearBanderas() {
        let misBanderas : [Bandera] = [
            Bandera(id: 0,  bandera: "Afganistan",          nBandera: "Afganistan",             puntosBandera: 2),
            Bandera(id: 1,  bandera: "Albania",             nBandera: "Albania",                puntosBandera: 3),
            Bandera(id: 2,  bandera: "Alemania",            nBandera: "Alemania",               puntosBandera: 1),
            Bandera(id: 3,  bandera: "Andorra",             nBandera: "Andorra",                puntosBandera: 1),
            Bandera(id: 4,  bandera: "Angola",              nBandera: "Angola",                 puntosBandera: 3),
            Bandera(id: 5,  bandera: "AntiguaYBarbuda",     nBandera: "Antigua y barbuda",      puntosBandera: 4),
            Bandera(id: 6,  bandera: "ArabiaSaudita",       nBandera: "Arabia Saudita",         puntosBandera: 2),
            Bandera(id: 7,  bandera: "Argelia",             nBandera: "Argelia",                puntosBandera: 3),
            Bandera(id: 8,  bandera: "Argentina",           nBandera: "Argentina",              puntosBandera: 1),
            Bandera(id: 9,  bandera: "Armenia",             nBandera: "Armenia",                puntosBandera: 4),
            Bandera(id: 10, bandera: "Australia",           nBandera: "Australia",              puntosBandera: 4),
            Bandera(id: 11, bandera: "Austria",             nBandera: "Austria",                puntosBandera: 2),
            Bandera(id: 12, bandera: "Azerbaiyan",          nBandera: "Azerbaiyán",             puntosBandera: 3),
            Bandera(id: 13, bandera: "Bahamas",             nBandera: "Bahamas",                puntosBandera: 5),
            Bandera(id: 14, bandera: "Banglades",           nBandera: "Banglades",              puntosBandera: 3),
            Bandera(id: 15, bandera: "Barbados",            nBandera: "Barbados",               puntosBandera: 4),
            Bandera(id: 16, bandera: "Barein",              nBandera: "Barein",                 puntosBandera: 3),
            Bandera(id: 17, bandera: "Belgica",             nBandera: "Belgica",                puntosBandera: 1),
            Bandera(id: 18, bandera: "Belice",              nBandera: "Belice",                 puntosBandera: 3),
            Bandera(id: 19, bandera: "Benin",               nBandera: "Benin",                  puntosBandera: 4),
            Bandera(id: 20, bandera: "Bielorrusia",         nBandera: "Bielorrusia",            puntosBandera: 2),
            Bandera(id: 21, bandera: "Birmania",            nBandera: "Birmania",               puntosBandera: 4),
            Bandera(id: 22, bandera: "Bolivia",             nBandera: "Bolivia",                puntosBandera: 2),
            Bandera(id: 23, bandera: "BosniaYHerzegovina",  nBandera: "Bosnia y Herzegovina",   puntosBandera: 4),
            Bandera(id: 24, bandera: "Botsuana",            nBandera: "Botsuana",               puntosBandera: 5),
            Bandera(id: 25, bandera: "Brasil",              nBandera: "Brasil",                 puntosBandera: 1),
            Bandera(id: 26, bandera: "Brunei",              nBandera: "Brunei",                 puntosBandera: 3),
            Bandera(id: 27, bandera: "Bulgaria",            nBandera: "Bulgaria",               puntosBandera: 2),
            Bandera(id: 28, bandera: "BurkinaFaso",         nBandera: "Burkina Faso",           puntosBandera: 3),
            Bandera(id: 29, bandera: "Burundi",             nBandera: "Burundi",                puntosBandera: 4),
            Bandera(id: 30, bandera: "Butan",               nBandera: "Butan",                  puntosBandera: 2),
            Bandera(id: 31, bandera: "CaboVerde",           nBandera: "Cabo Verde",             puntosBandera: 3),
            Bandera(id: 32, bandera: "Camboya",             nBandera: "Camboya",                puntosBandera: 4),
            Bandera(id: 33, bandera: "Camerun",             nBandera: "Camerún",                puntosBandera: 2),
            Bandera(id: 34, bandera: "Canada",              nBandera: "Canada",                 puntosBandera: 1),
            Bandera(id: 35, bandera: "Catar",               nBandera: "Catar",                  puntosBandera: 2),
            Bandera(id: 36, bandera: "Chad",                nBandera: "Chad",                   puntosBandera: 2),
            Bandera(id: 37, bandera: "Chile",               nBandera: "Chile",                  puntosBandera: 1),
            Bandera(id: 38, bandera: "China",               nBandera: "China",                  puntosBandera: 1),
            Bandera(id: 39, bandera: "Chipre",              nBandera: "Chipre",                 puntosBandera: 1),
            Bandera(id: 40, bandera: "Colombia",            nBandera: "Colombia",               puntosBandera: 2),
            Bandera(id: 41, bandera: "Comoras",             nBandera: "Comoras",                puntosBandera: 5),
            Bandera(id: 42, bandera: "CoreaDelNorte",       nBandera: "Corea del Norte",        puntosBandera: 2),
            Bandera(id: 43, bandera: "CoreaDelSur",         nBandera: "Corea del Sur",          puntosBandera: 2),
            Bandera(id: 44, bandera: "CostaDeMarfil",       nBandera: "Costa de Marfil",        puntosBandera: 3),
            Bandera(id: 45, bandera: "CostaRica",           nBandera: "Costa Rica",             puntosBandera: 2),
            Bandera(id: 46, bandera: "Croacia",             nBandera: "Croacia",                puntosBandera: 2),
            Bandera(id: 47, bandera: "Cuba",                nBandera: "Cuba",                   puntosBandera: 2),
            Bandera(id: 48, bandera: "Dinamarca",           nBandera: "Dinamarca",              puntosBandera: 3),
            Bandera(id: 49, bandera: "Dominica",            nBandera: "Dominica",               puntosBandera: 4),
            Bandera(id: 50, bandera: "Ecuador",             nBandera: "Ecuador",                puntosBandera: 2),
            Bandera(id: 51, bandera: "Egipto",              nBandera: "Egipto",                 puntosBandera: 1),
            Bandera(id: 52, bandera: "ElSalvador",          nBandera: "El Salvador",            puntosBandera: 2),
            Bandera(id: 53, bandera: "EmiratosArabes",      nBandera: "Emiratos Árabes",        puntosBandera: 3),
            Bandera(id: 54, bandera: "Eritrea",             nBandera: "Eritrea",                puntosBandera: 5),
            Bandera(id: 55, bandera: "Eslovaquia",          nBandera: "Eslovaquia",             puntosBandera: 2),
            Bandera(id: 56, bandera: "Eslovenia",           nBandera: "Eslovenia",              puntosBandera: 2),
            Bandera(id: 57, bandera: "España",              nBandera: "España",                 puntosBandera: 1),
            Bandera(id: 58, bandera: "EFMicronesia",        nBandera: "Estados Federados de Micronesia",                 puntosBandera: 5),
            Bandera(id: 59, bandera: "EstadosUnidos",       nBandera: "Estados Unidos",         puntosBandera: 1),
            Bandera(id: 60, bandera: "Estonia",             nBandera: "Estonia",                puntosBandera: 3),
            Bandera(id: 61, bandera: "Etiopia",             nBandera: "Etiopía",                puntosBandera: 3),
            Bandera(id: 62, bandera: "Filipinas",           nBandera: "Filipinas",              puntosBandera: 2),
            Bandera(id: 63, bandera: "Finlandia",           nBandera: "Finlandia",              puntosBandera: 2),
            Bandera(id: 64, bandera: "Fiyi",                nBandera: "Fiyi",                   puntosBandera: 4),
            Bandera(id: 65, bandera: "Francia",             nBandera: "Francia",                puntosBandera: 1),
            Bandera(id: 66, bandera: "Gabon",               nBandera: "Gabón",                  puntosBandera: 3),
            Bandera(id: 67, bandera: "Gambia",              nBandera: "Gambia",                 puntosBandera: 3),
            Bandera(id: 68, bandera: "Georgia",             nBandera: "Georgia",                puntosBandera: 2),
            Bandera(id: 69, bandera: "Ghana",               nBandera: "Ghana",                  puntosBandera: 2),
            Bandera(id: 70, bandera: "Granada",             nBandera: "Granada",                puntosBandera: 5),
            Bandera(id: 71, bandera: "Grecia",              nBandera: "Grecia",                 puntosBandera: 1),
            Bandera(id: 72, bandera: "Guatemala",           nBandera: "Guatemala",              puntosBandera: 2),
            Bandera(id: 73, bandera: "Guinea",              nBandera: "Guinea",                 puntosBandera: 2),
            Bandera(id: 74, bandera: "GuineaBisau",         nBandera: "Guinea Bisau",           puntosBandera: 3),
            Bandera(id: 75, bandera: "GuineaEcuatorial",    nBandera: "Guinea Ecuatorial",      puntosBandera: 2),
            Bandera(id: 76, bandera: "Guyana",              nBandera: "Guyana",                 puntosBandera: 4),
            Bandera(id: 77, bandera: "Haiti",               nBandera: "Haití",                  puntosBandera: 3),
            Bandera(id: 78, bandera: "Honduras",            nBandera: "Honduras",               puntosBandera: 2),
            Bandera(id: 79, bandera: "Hungria",             nBandera: "Hungría",                puntosBandera: 3),
            Bandera(id: 80, bandera: "India",               nBandera: "India",                  puntosBandera: 1),
            Bandera(id: 81, bandera: "Indonesia",           nBandera: "Indonesia",              puntosBandera: 3),
            Bandera(id: 82, bandera: "Irak",                nBandera: "Irak",                   puntosBandera: 2),
            Bandera(id: 83, bandera: "Iran",                nBandera: "Irán",                   puntosBandera: 2),
            Bandera(id: 84, bandera: "Irlanda",             nBandera: "Irlanda",                puntosBandera: 2),
            Bandera(id: 85, bandera: "Islandia",            nBandera: "Islandia",               puntosBandera: 2),
            Bandera(id: 86, bandera: "IslasMarshall",       nBandera: "Islas Marshall",         puntosBandera: 4),
            Bandera(id: 87, bandera: "IslasSalomon",        nBandera: "Islas Salomón",          puntosBandera: 4),
            Bandera(id: 88, bandera: "Israel",              nBandera: "Israel",                 puntosBandera: 1),
            Bandera(id: 89, bandera: "Italia",              nBandera: "Italia",                 puntosBandera: 1),
            Bandera(id: 90, bandera: "Jamaica",             nBandera: "Jamaica",                puntosBandera: 2),
            Bandera(id: 91, bandera: "Japon",               nBandera: "Japón",                  puntosBandera: 1),
            Bandera(id: 92, bandera: "Jordania",            nBandera: "Jordania",               puntosBandera: 2),
            Bandera(id: 93, bandera: "Kazajistan",          nBandera: "Kazajistán",             puntosBandera: 3),
            Bandera(id: 94, bandera: "Kenia",               nBandera: "Kenia",                  puntosBandera: 3),
            Bandera(id: 95, bandera: "Kirguistan",          nBandera: "Kirguistán",             puntosBandera: 5),
            Bandera(id: 96, bandera: "Kiribati",            nBandera: "Kiribati",               puntosBandera: 5),
            Bandera(id: 97, bandera: "Kuwait",              nBandera: "Kuwait",                 puntosBandera: 4),
            Bandera(id: 98, bandera: "Laos",                nBandera: "Laos",                   puntosBandera: 3),
            Bandera(id: 99, bandera: "Lesoto",              nBandera: "Lesoto",                 puntosBandera: 3),
            Bandera(id: 100,bandera: "Letonia",             nBandera: "Letonia",                puntosBandera: 3),
            Bandera(id: 101,bandera: "Libano",              nBandera: "Líbano",                 puntosBandera: 3),
            Bandera(id: 102,bandera: "Liberia",             nBandera: "Liberia",                puntosBandera: 3),
            Bandera(id: 103,bandera: "Libia",               nBandera: "Libia",                  puntosBandera: 3),
            Bandera(id: 104,bandera: "Liechtenstein",       nBandera: "Liechtenstein",          puntosBandera: 4),
            Bandera(id: 105,bandera: "Lituania",            nBandera: "Lituania",               puntosBandera: 3),
            Bandera(id: 106,bandera: "Luxemburgo",          nBandera: "Luxemburgo",             puntosBandera: 2),
            Bandera(id: 107,bandera: "MacedoniaDelNorte",   nBandera: "Macedonia Del Norte",    puntosBandera: 2),
            Bandera(id: 108,bandera: "Madagascar",          nBandera: "Madagascar",             puntosBandera: 5),
            Bandera(id: 109,bandera: "Malasia",             nBandera: "Malasia",                puntosBandera: 3),
            Bandera(id: 110,bandera: "Malaui",              nBandera: "Malaui",                 puntosBandera: 5),
            Bandera(id: 111,bandera: "Maldivas",            nBandera: "Maldivas",               puntosBandera: 5),
            Bandera(id: 112,bandera: "Mali",                nBandera: "Mali",                   puntosBandera: 3),
            Bandera(id: 113,bandera: "Malta",               nBandera: "Malta",                  puntosBandera: 3),
            Bandera(id: 114,bandera: "Marruecos",           nBandera: "Marruecos",              puntosBandera: 1),
            Bandera(id: 115,bandera: "Mauricio",            nBandera: "Mauricio",               puntosBandera: 5),
            Bandera(id: 116,bandera: "Mauritania",          nBandera: "Mauritania",             puntosBandera: 4),
            Bandera(id: 117,bandera: "Mexico",              nBandera: "Mexico",                 puntosBandera: 1),
            Bandera(id: 118,bandera: "Moldavia",            nBandera: "Moldavia",               puntosBandera: 3),
            Bandera(id: 119,bandera: "Monaco",              nBandera: "Mónaco",                 puntosBandera: 4),
            Bandera(id: 120,bandera: "Mongolia",            nBandera: "Mongolia",               puntosBandera: 4),
            Bandera(id: 121,bandera: "Montenegro",          nBandera: "Montenegro",             puntosBandera: 3),
            Bandera(id: 122,bandera: "Mozambique",          nBandera: "Mozambique",             puntosBandera: 3),
            Bandera(id: 123,bandera: "Namibia",             nBandera: "Namibia",                puntosBandera: 4),
            Bandera(id: 124,bandera: "Nauru",               nBandera: "Nauru",                  puntosBandera: 5),
            Bandera(id: 125,bandera: "Nepal",               nBandera: "Nepal",                  puntosBandera: 1),
            Bandera(id: 126,bandera: "Nicaragua",           nBandera: "Nicaragua",              puntosBandera: 3),
            Bandera(id: 127,bandera: "Niger",               nBandera: "Níger",                  puntosBandera: 3),
            Bandera(id: 128,bandera: "Nigeria",             nBandera: "Nigeria",                puntosBandera: 2),
            Bandera(id: 129,bandera: "Noruega",             nBandera: "Noruega",                puntosBandera: 1),
            Bandera(id: 130,bandera: "NuevaZelanda",        nBandera: "Nueva Zelanda",          puntosBandera: 2),
            Bandera(id: 131,bandera: "Oman",                nBandera: "Omán",                   puntosBandera: 3),
            Bandera(id: 132,bandera: "PaisesBajos",         nBandera: "Paises Bajos",           puntosBandera: 1),
            Bandera(id: 133,bandera: "Pakistan",            nBandera: "Pakistán",               puntosBandera: 2),
            Bandera(id: 134,bandera: "Palaos",              nBandera: "Palaos",                 puntosBandera: 4),
            Bandera(id: 135,bandera: "Panama",              nBandera: "Panamá",                 puntosBandera: 2),
            Bandera(id: 136,bandera: "PapuaNuevaGuinea",    nBandera: "Papua Nueva Guinea",     puntosBandera: 2),
            Bandera(id: 137,bandera: "Paraguay",            nBandera: "Paraguay",               puntosBandera: 2),
            Bandera(id: 138,bandera: "Peru",                nBandera: "Perú",                   puntosBandera: 1),
            Bandera(id: 139,bandera: "Polonia",             nBandera: "Polonia",                puntosBandera: 2),
            Bandera(id: 140,bandera: "Portugal",            nBandera: "Portugal",               puntosBandera: 1),
            Bandera(id: 141,bandera: "ReinoUnido",          nBandera: "Reino Unido",            puntosBandera: 1),
            Bandera(id: 142,bandera: "RepCentroafricana",   nBandera: "República Centroafricana", puntosBandera: 4),
            Bandera(id: 143,bandera: "RepCheca",            nBandera: "República Checa",        puntosBandera: 2),
            Bandera(id: 144,bandera: "RepDelCongo",         nBandera: "República del Congo",    puntosBandera: 3),
            Bandera(id: 145,bandera: "RepDemDelCongo",      nBandera: "República Democrática del Congo",puntosBandera: 3),
            Bandera(id: 146,bandera: "RepDominicana",       nBandera: "República Dominicana",    puntosBandera: 2),
            Bandera(id: 147,bandera: "Ruanda",              nBandera: "Ruanda",                 puntosBandera: 4),
            Bandera(id: 148,bandera: "Rumania",             nBandera: "Rumanía",                puntosBandera: 2),
            Bandera(id: 149,bandera: "Rusia",               nBandera: "Rusia",                  puntosBandera: 1),
            Bandera(id: 150,bandera: "Samoa",               nBandera: "Samoa",                  puntosBandera: 5),
            Bandera(id: 151,bandera: "SanCristobalYNieves", nBandera: "SanCristobal y Nieves",  puntosBandera: 3),
            Bandera(id: 152,bandera: "SanMarino",           nBandera: "San Marino",             puntosBandera: 5),
            Bandera(id: 153,bandera: "SantaLucia",          nBandera: "Santa Lucía",            puntosBandera: 5),
            Bandera(id: 154,bandera: "SantoTomeYPrincipe",  nBandera: "Santo Tomé y Principe",  puntosBandera: 5),
            Bandera(id: 155,bandera: "SanVicenteYLasGranadinas",  nBandera: "San Vicente y las Granadinas",  puntosBandera: 5),
            Bandera(id: 156,bandera: "Senegal",             nBandera: "Senegal",                puntosBandera: 3),
            Bandera(id: 157,bandera: "Serbia",              nBandera: "Serbia",                 puntosBandera: 2),
            Bandera(id: 158,bandera: "Seychelles",          nBandera: "Seychelles",             puntosBandera: 3),
            Bandera(id: 159,bandera: "SierraLeona",         nBandera: "Sierra Leona",           puntosBandera: 3),
            Bandera(id: 160,bandera: "Singapur",            nBandera: "Singapur",               puntosBandera: 2),
            Bandera(id: 161,bandera: "Siria",               nBandera: "Siria",                  puntosBandera: 2),
            Bandera(id: 162,bandera: "Somalia",             nBandera: "Somalia",                puntosBandera: 3),
            Bandera(id: 163,bandera: "SriLanka",            nBandera: "Sri Lanka",              puntosBandera: 2),
            Bandera(id: 164,bandera: "Suazilandia",         nBandera: "Suazilandia",            puntosBandera: 4),
            Bandera(id: 165,bandera: "Sudafrica",           nBandera: "Sudáfrica",              puntosBandera: 2),
            Bandera(id: 166,bandera: "Sudan",               nBandera: "Sudán",                  puntosBandera: 3),
            Bandera(id: 167,bandera: "SudanDelSur",         nBandera: "Sudán del Sur",          puntosBandera: 4),
            Bandera(id: 168,bandera: "Suecia",              nBandera: "Suecia",                 puntosBandera: 2),
            Bandera(id: 169,bandera: "Suiza",               nBandera: "Suiza",                  puntosBandera: 1),
            Bandera(id: 170,bandera: "Surinam",             nBandera: "Surinam",                puntosBandera: 4),
            Bandera(id: 171,bandera: "Tailandia",           nBandera: "Tailandia",              puntosBandera: 2),
            Bandera(id: 172,bandera: "Tanzania",            nBandera: "Tanzania",               puntosBandera: 3),
            Bandera(id: 173,bandera: "Tayikistan",          nBandera: "Tayikistán",             puntosBandera: 3),
            Bandera(id: 174,bandera: "TimorOriental",       nBandera: "Timor Oriental",         puntosBandera: 4),
            Bandera(id: 175,bandera: "Togo",                nBandera: "Togo",                   puntosBandera: 5),
            Bandera(id: 176,bandera: "Tonga",               nBandera: "Tonga",                  puntosBandera: 3),
            Bandera(id: 177,bandera: "TrinidadYTobago",     nBandera: "Trinidad y Tobago",      puntosBandera: 3),
            Bandera(id: 178,bandera: "Tunez",               nBandera: "Túnez",                  puntosBandera: 1),
            Bandera(id: 179,bandera: "Turkmenistan",        nBandera: "Turkmenistán",           puntosBandera: 3),
            Bandera(id: 180,bandera: "Turquia",             nBandera: "Turquía",                puntosBandera: 1),
            Bandera(id: 181,bandera: "Tuvalu",              nBandera: "Tuvalu",                 puntosBandera: 3),
            Bandera(id: 182,bandera: "Ucrania",             nBandera: "Ucrania",                puntosBandera: 1),
            Bandera(id: 183,bandera: "Uganda",              nBandera: "Uganda",                 puntosBandera: 2),
            Bandera(id: 184,bandera: "Uruguay",             nBandera: "Uruguay",                puntosBandera: 1),
            Bandera(id: 185,bandera: "Uzbekistan",          nBandera: "Uzbekistán",             puntosBandera: 4),
            Bandera(id: 186,bandera: "Vanuatu",             nBandera: "Vanuatu",                puntosBandera: 3),
            Bandera(id: 187,bandera: "Vaticano",            nBandera: "Vaticano",               puntosBandera: 1),
            Bandera(id: 188,bandera: "Venezuela",           nBandera: "Venezuela",              puntosBandera: 2),
            Bandera(id: 189,bandera: "Vietnam",             nBandera: "Vietnam",                puntosBandera: 2),
            Bandera(id: 190,bandera: "Yemen",               nBandera: "Yemen",                  puntosBandera: 2),
            Bandera(id: 191,bandera: "Yibuti",              nBandera: "Yibuti",                 puntosBandera: 4),
            Bandera(id: 192,bandera: "Zambia",              nBandera: "Zambia",                 puntosBandera: 4),
            Bandera(id: 193,bandera: "Zimbabue",            nBandera: "Zimbabue",               puntosBandera: 5)
        ]
        
        for(i, bandera) in misBanderas.enumerated(){
            self.banderas[i] = bandera
        }
    }
    
    func eliminarBandera(_ idBandera : Int){
        banderas.removeValue(forKey: idBandera)
    }
}
