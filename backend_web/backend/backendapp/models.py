from django.db import models
from django.core.validators import RegexValidator
# Create your models here.

pays = (
    ("1", "Afghanistan"),
    ("2", "Afrique du sud"),
    ("3", "Åland, îles"),
    ("4", "Albanie"),
    ("5", "Algérie"),
    ("6", "Allemagne"),
    ("7", "Andorre"),
    ("8", "Angola"),
    ("9", "Anguilla"),
    ("10", "Antarctique"),
    ("11", "Antigua et barbuda"),
    ("12", "Arabie saoudite"),
    ("13", "Argentine"),
    ("14", "Arménie"),
    ("15", "Aruba"),
    ("16", "Australie"),
    ("17", "Autriche"),
    ("18", "Azerbaïdjan"),
    ("19", "Bahamas"),
    ("20", "Bahreïn"),
    ("21", "Barbade"),
    ("22", "Bélarus"),
    ("23", "Belgique"),
    ("24", "Bangladesh"),
    ("25", "Belize"),
    ("26", "Bénin"),
    ("27", "Bermudes"),
    ("28", "Bhoutan"),
    ("29", "Bolivie, l'état plurinational de"),
    ("30", "Bonaire, saint eustache et saba"),
    ("31", "Bosnie herzégovine"),
    ("32", "Botswana"),
    ("33", "Bouvet, île"),
    ("34", "Brésil"),
    ("35", "Brunei darussalam"),
    ("36", "Bulgarie"),
    ("37", "Burkina faso"),
    ("38", "Burundi"),
    ("39", "Caïmans, îles"),
    ("40", "Cambodge"),
    ("41", "Cameroun"),
    ("42", "Canada"),
    ("43", "Cap vert"),
    ("44", "Centrafricaine, république"),
    ("45", "Chili"),
    ("46", "Chine"),
    ("47", "Christmas, île"),
    ("48", "Chypre"),
    ("49", "Cocos (keeling), îles"),
    ("50", "Colombie"),
    ("51", "Comores"),
    ("52", "Congo"),
    ("53", "Congo, la république démocratique du"),
    ("54", "Cook, îles"),
    ("55", "Corée, république de"),
    ("56", "Corée, république populaire démocratique de"),
    ("57", "Costa rica"),
    ("58", "Côte d'ivoire"),
    ("59", "Croatie"),
    ("60", "Cuba"),
    ("61", "Curaçao"),
    ("62", "Danemark"),
    ("63", "Djibouti"),
    ("64", "Dominicaine, république"),
    ("65", "Dominique"),
    ("66", "Égypte"),
    ("67", "El salvador"),
    ("68", "Émirats arabes unis"),
    ("69", "Équateur"),
    ("70", "Érythrée"),
    ("71", "Espagne"),
    ("72", "Estonie"),
    ("73", "États unis"),
    ("74", "Éthiopie"),
    ("75", "Falkland, îles (malvinas)"),
    ("76", "Féroé, îles"),
    ("77", "Fidji"),
    ("78", "Finlande"),
    ("79", "France"),
    ("80", "Gabon"),
    ("81", "Gambie"),
    ("82", "Géorgie"),
    ("83", "Géorgie du sud et les îles sandwich du sud"),
    ("84", "Ghana"),
    ("85", "Gibraltar"),
    ("86", "Grèce"),
    ("87", "Grenade"),
    ("88", "Groenland"),
    ("89", "Guadeloupe"),
    ("90", "Guam"),
    ("91", "Guatemala"),
    ("92", "Guernesey"),
    ("93", "Guinée"),
    ("94", "Guinée bissau"),
    ("95", "Guinée équatoriale"),
    ("96", "Guyana"),
    ("97", "Guyane française"),
    ("98", "Haïti"),
    ("99", "Heard et îles macdonald, île"),
    ("100", "Honduras"),
    ("101", "Hong kong"),
    ("102", "Hongrie"),
    ("103", "Île de man"),
    ("104", "Îles mineures éloignées des états unis"),
    ("105", "Îles vierges britanniques"),
    ("106", "Îles vierges des états unis"),
    ("107", "Inde"),
    ("108", "Indonésie"),
    ("109", "Iran, république islamique d'"),
    ("110", "Iraq"),
    ("111", "Irlande"),
    ("112", "Islande"),
    ("113", "Israël"),
    ("114", "Italie"),
    ("115", "Jamaïque"),
    ("116", "Japon"),
    ("117", "Jersey"),
    ("118", "Jordanie"),
    ("119", "Kazakhstan"),
    ("120", "Kenya"),
    ("121", "Kirghizistan"),
    ("122", "Kiribati"),
    ("123", "Koweït"),
    ("124", "Lao, république démocratique populaire"),
    ("125", "Lesotho"),
    ("126", "Lettonie"),
    ("127", "Liban"),
    ("128", "Libéria"),
    ("129", "Libye"),
    ("130", "Liechtenstein"),
    ("131", "Lituanie"),
    ("132", "Luxembourg"),
    ("133", "Macao"),
    ("134", "Macédoine, l'ex république yougoslave de"),
    ("135", "Madagascar"),
    ("136", "Malaisie"),
    ("137", "Malawi"),
    ("138", "Maldives"),
    ("139", "Mali"),
    ("140", "Malte"),
    ("141", "Mariannes du nord, îles"),
    ("142", "Maroc"),
    ("143", "Marshall, îles"),
    ("144", "Martinique"),
    ("145", "Maurice"),
    ("146", "Mauritanie"),
    ("147", "Mayotte"),
    ("148", "Mexique"),
    ("149", "Micronésie, états fédérés de"),
    ("150", "Moldova, république de"),
    ("151", "Monaco"),
    ("152", "Mongolie"),
    ("153", "Monténégro"),
    ("154", "Montserrat"),
    ("155", "Mozambique"),
    ("156", "Myanmar"),
    ("157", "Namibie"),
    ("158", "Nauru"),
    ("159", "Népal"),
    ("160", "Nicaragua"),
    ("161", "Niger"),
    ("162", "Nigéria"),
    ("163", "Niué"),
    ("164", "Norfolk, île"),
    ("165", "Norvège"),
    ("166", "Nouvelle calédonie"),
    ("167", "Nouvelle zélande"),
    ("168", "Océan indien, territoire britannique de l'"),
    ("169", "Oman"),
    ("170", "Ouganda"),
    ("171", "Ouzbékistan"),
    ("172", "Pakistan"),
    ("173", "Palaos"),
    ("174", "Palestinien occupé, territoire"),
    ("175", "Panama"),
    ("176", "Papouasie nouvelle guinée"),
    ("177", "Paraguay"),
    ("178", "Pays bas"),
    ("179", "Pérou"),
    ("180", "Philippines"),
    ("181", "Pitcairn"),
    ("182", "Pologne"),
    ("183", "Polynésie française"),
    ("184", "Porto rico"),
    ("185", "Portugal"),
    ("186", "Qatar"),
    ("187", "Réunion"),
    ("188", "Roumanie"),
    ("189", "Royaume uni"),
    ("190", "Russie, fédération de"),
    ("191", "Rwanda"),
    ("192", "Sahara occidental"),
    ("193", "Saint barthélemy"),
    ("194", "Sainte hélène, ascension et tristan da cunha"),
    ("195", "Sainte lucie"),
    ("196", "Saint kitts et nevis"),
    ("197", "Saint marin"),
    ("198", "Saint martin(partie française)"),
    ("199", "Saint martin (partie néerlandaise)"),
    ("200", "Saint pierre et miquelon"),
    ("201", "Saint siège (état de la cité du vatican)"),
    ("202", "Saint vincent et les grenadines"),
    ("203", "Salomon, îles"),
    ("204", "Samoa"),
    ("205", "Samoa américaines"),
    ("206", "Sao tomé et principe"),
    ("207", "Sénégal"),
    ("208", "Serbie"),
    ("209", "Seychelles"),
    ("210", "Sierra leone"),
    ("211", "Singapour"),
    ("212", "Slovaquie"),
    ("213", "Slovénie"),
    ("214", "Somalie"),
    ("215", "Soudan"),
    ("216", "Soudan du sud"),
    ("217", "Sri lanka"),
    ("218", "Suède"),
    ("219", "Suisse"),
    ("220", "Suriname"),
    ("221", "Svalbard et île jan mayen"),
    ("222", "Swaziland"),
    ("223", "Syrienne, république arabe"),
    ("224", "Tadjikistan"),
    ("225", "Taïwan, province de chine"),
    ("226", "Tanzanie, république unie de"),
    ("227", "Tchad"),
    ("228", "Tchèque, république"),
    ("229", "Terres australes françaises"),
    ("230", "Thaïlande"),
    ("231", "Timor leste"),
    ("232", "Togo"),
    ("233", "Tokelau"),
    ("234", "Tonga"),
    ("235", "Trinité et tobago"),
    ("236", "Tunisia"),
    ("237", "Turkménistan"),
    ("238", "Turks et caïcos, îles"),
    ("239", "Turquie"),
    ("240", "Tuvalu"),
    ("241", "Ukraine"),
    ("242", "Uruguay"),
    ("243", "Vanuatu"),
    ("244", "Venezuela, république bolivarienne du"),
    ("245", "Viet nam"),
    ("246", "Wallis et futuna"),
    ("247", "Yémen"),
    ("248", "Zambie")
)

'''Class companies'''

class Companies(models.Model):

    source_id = models.IntegerField(null=True)
    source_name = models.CharField('Source name of the company',max_length=255, null=True)
    name = models.CharField('name of the company',max_length=255, null=True)
    website = models.URLField(max_length = 200)
    email= models.EmailField(max_length=255, null=True)
    phone_regex = RegexValidator(regex=r'^\+?1?\d{9,15}$', message="Phone number must be entered in the format: '+999999999'. Up to 15 digits allowed.")
    phone = models.CharField(validators=[phone_regex], max_length=17, blank=True)
    address = models.CharField(max_length=255, null=True)
    postal_code = models.FloatField(null=True)
    city = models.CharField(max_length=255)
    country = models.CharField(max_length=255, null=True, choices=pays) 
    matches = models.ManyToManyField('self',through='Matches',symmetrical=False)
    def __str__(self):
        return str(self.source_id)
    def add_matches(self, Companies, symm=True):
        matches, created = Matches.objects.get_or_create(
        left_company=self,
        right_company=Companies)
        if symm:
        # avoid recursion by passing `symm=False`
            Companies.add_matches(self, False)
        return str(matches)

    def remove_matches(self, Companies, symm=True):
        Matches.objects.filter(
        left_company=self,
        right_company=Companies).delete()
        if symm:
        # avoid recursion by passing `symm=False`
            Companies.remove_matches(self, False)
        
        return
'''Class matches'''

class Matches(models.Model):
    left_company = models.ForeignKey(Companies,related_name='left_company_id', on_delete=models.CASCADE)
    right_company = models.ForeignKey(Companies,related_name='right_company_id', on_delete=models.CASCADE)
    def get_matches(self):
        return str(self.matches.filter(
            left_company__right_company=self))
    def add_matches(self, symm=True):
        matches, created = Matches.objects.get_or_create(
        left_company__right_company=self)
        if symm:
        # avoid recursion by passing `symm=False`
            Matches.add_matches(self, False)
        return str(matches)

    def remove_matches(self, Companies, symm=True):
        Matches.objects.filter(
        left_company__right_company=self).delete()
        if symm:
        # avoid recursion by passing `symm=False`
            Matches.remove_matches(self, False)
        
        return
