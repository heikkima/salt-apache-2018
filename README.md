# H5 kotitehtävä raportti
Kotitehtävät olivat seuraavanlaiset:

Poikkeuksellisesti pidempi palautusaika w18 perjantaina 2018-05-04 12:00 asti. Vappupäivänä ei ole opetusta. Hauskaa Wappua!

a) Valitse aihe omaksi kurssityöksi ja varaa se kommenttina aikataulusivun perään.

b) Julkaise raportti MarkDownilla. Jos käytät GitHub:ia, se tekee muotoilun automaattisesti “.md”-päätteisiin dokumentteihin.

c) Aja oma Salt-tila suoraa git-varastosta. Voit joko tehdä tilan alusta lähtien itse tai forkata sirottimen.


=======================================================

a) Varatun aiheen voi lukaista wordpress kotisivultani: https://heikkima.wordpress.com/2018/05/07/palvelinten-hallinta-2018-h5/

c) 

## Salt tila suoraan git-varastosta

Forkkasin Tero Karvisen repositoryn (https://github.com/terokarvinen/sirotin). Jouduin muokkaamaan Teron työstä paria kohtaa: Tero oli luonut saltstack asennukset xubuntu käyttäjälle.
SaltStack etsi xubuntu nimistä käyttäjää jonka kotikansioon lisätään configuraatiota. 
Muutin siis xubuntu käyttäjät ubuntu käyttäjiksi (AWS virtuaalikoneita ei valitettavasti saa xubuntu käyttöjärjestelmällä, mutta ubunut löytyy)

Oppitunnilla loin myös Teron repositoryyn uuden featuren, jossa asennetaan myös ssh muiden ohjelmien ohella. Loin muutoksesta Pull Requestin Teron repositoryyn ja Tero tämän myös hyväksyi.

Kaikki muutokset on nähtävillä commits ikkunasta (https://github.com/heikkima/sirotin/commits/master)

Ajoin Repositoryn (https://github.com/heikkima/sirotin) README:ssa näkyvillä olevat komennot. Ja salt-stack hoiti loput. Koneelle asentu kaikki ohjelmat jotka oli määritelty desk tilassa (https://github.com/heikkima/sirotin/blob/master/srv/salt/desk/init.sls)

