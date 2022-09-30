<!DOCTYPE html>
<html>
<head>
    <link href="css/formulaire.css" rel="stylesheet" type="text/css">
    <title>FormationPlus</title>
    <link href="image/logo_softia.png"  rel="icon" />
</head>
<body>
    <section class="encadrement">
    {{-- <form action="{{Route('sendform')}}" method="POST"> --}}
        <form>

        <h1 class="title">Attestation :</h1>

        <select name="Etudiants">
            <div>
            @foreach($data as $key => $data)
            <option value="{{$data->id}}">{{$data->prenom}} {{$data->nom}}</option>
            @endforeach
            @foreach($convention as $key => $convention)
            <input type="text" name="convention" value="{{$convention->nom}}" disabled="disabled"/>
            <textarea name="message" >Bonjour {{$data->prenom}} {{$data->nom}},

            Vous avez suivi {{$convention->nbHeur}} heures de formation chez FormationPlus.
            Pouvez-vous nous retourner ce mail avec la pièce jointe signée.

            Cordialement,
            FormationPlus
            </textarea>
            @endforeach
            </div>
        </select>

        <button type="submit" name="submit">Valider le message.</button>


    </form>
    </section>
</body>
</html>
