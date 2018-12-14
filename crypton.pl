#!/usr/bin/env perl

=cut

--- Copyright 2018 - Ms.ambari ---

This tool is a tool created for information gathering, I will develop this
tool to make it more stable to use, thanks for those of you who have used this tool,
I am very happy if you want to use this tool, so the results of my hard work to
build these tools not useless :) - and if you have trouble using this tool,
or find a problem when using it, contact me: https://t.me/Msambari
and support me with subcribe my youtube Channel: Ms.ambari
Thanks !!!

=cut

use WWW::Mechanize;
use LWP::UserAgent;
use Term::ANSIColor;
use JSON qw( decode_json encode_json );

system("resize -s 30 82 && reset");
my $user_agent = "Mozilla/5.0 (Linux; U; Android 2.2; de-de; HTC Desire HD 1.18.161.2 Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1";
my $ru = LWP::UserAgent->new( keep => alive, agent => $UserAgent);
my $mec = WWW::Mechanize->new( agent => $user_agent );

sub banner {
	system("clear");
	print color("reset"),"\n_________                     ___________\n";
	print "\\_   ___ \\_______ ___.__._____\\__    ___/___   ____  \n";
	print "/    \\  \\/\\_  __ <   |  |\\____ \\|    | /  _ \\ /    \\ \n";
	print "\\     \\____|  | \\/\\___  ||  |_> >    |(  <_> )   |  \\\n";
	print " \\______  /|__|   / ____||   __/|____| \\____/|___|  /\n";
	print "        \\/        \\/     |__|                     \\/ \n\n";
}

sub home {
	print color("red"),"+-=",color("reset"),"[",color("reset"),"   Author : Ms.ambari              ",color("reset"),"     ]",color("red"),"=-+\n";
	print color("red"),"+-=",color("reset"),"[",color("reset"),"   Date   : 2018-12-10             ",color("reset"),"     ]",color("red"),"=-+\n";
	print color("red"),"+-=",color("reset"),"[",color("reset"),"   Github : github.com/Ranginang67 ",color("reset"),"     ]",color("red"),"=-+\n";
	print color("red"),"+-=",color("reset"),"[",color("reset"),"   follow me on github and youtube ",color("reset"),"     ]",color("red"),"=-+\n";
	print color("red"),"+-=",color("reset"),"[",color("reset"),"   to support me ^_^               ",color("reset"),"     ]",color("red"),"=-+\n\n";
	print color("red"),"[",color("reset"),"01",color("red"),"]",color("reset")," credit card validator checker\n";
	print color("red"),"[",color("reset"),"02",color("red"),"]",color("reset")," Facebook account information\n";
	print color("red"),"[",color("reset"),"03",color("red"),"]",color("reset")," social media name checker\n";
	print color("red"),"[",color("reset"),"04",color("red"),"]",color("reset")," website backdoor scanner\n";
	print color("red"),"[",color("reset"),"05",color("red"),"]",color("reset")," http header information\n";
	print color("red"),"[",color("reset"),"06",color("red"),"]",color("reset")," website analyze scanner\n";
	print color("red"),"[",color("reset"),"07",color("red"),"]",color("reset")," find admin login page\n";
	print color("red"),"[",color("reset"),"08",color("red"),"]",color("reset")," gmail account checker\n";
	print color("red"),"[",color("reset"),"09",color("red"),"]",color("reset")," find my facebook id\n";
	print color("red"),"[",color("reset"),"10",color("red"),"]",color("reset")," dump all friend id\n";
	print color("red"),"[",color("reset"),"11",color("red"),"]",color("reset")," domain age checker\n";
	print color("red"),"[",color("reset"),"12",color("red"),"]",color("reset")," md5 hash cracker\n";
	print color("red"),"[",color("reset"),"13",color("red"),"]",color("reset")," ip adres checker\n";
	print color("red"),"[",color("reset"),"00",color("red"),"]",color("reset")," Exit this tool\n\n";
	print color("red"),"[",color("reset"),"##",color("red"),"]",color("reset")," Crypton-pentester->>> ";
	my $anu = <STDIN>; chomp($anu);
	if ($anu eq '1' || $anu eq '01') {
		print box("##"),"Credit number: "; my $inc = <STDIN>; chomp($inc);
		banner(); cc_checker($inc); main_menu();
	} elsif ($anu eq '2' || $anu eq '02') {
		print box("##"),"Enter your facebook token: "; my $ia = <STDIN>; chomp($ia);
		banner(); fbi($ia); main_menu();
	} elsif ($anu eq '3' || $anu eq '03') {
		print box("##"),"Enter name: "; my $ina = <STDIN>; chomp($ina);
		banner(); medianame($ina); main_menu();
	} elsif ($anu eq '4' || $anu eq '04') {
		print box("##"),"Enter website: "; my $iw = <STDIN>; chomp($iw);
		banner(); bcs($iw); main_menu();
	} elsif ($anu eq '5' || $anu eq '05') {
		print box("##"),"Enter website: "; my $ih = <STDIN>; chomp($ih);
		banner(); htck($ih); main_menu();
	} elsif ($anu eq '6' || $anu eq '06') {
		print box("##"),"Enter website (ex: http://site.com): "; my $iv = <STDIN>; chomp($iv);
		banner(); webvuln($iv); main_menu();
	} elsif ($anu eq '7' || $anu eq '07') {
		print box("##"),"Enter website: "; my $iad = <STDIN>; chomp($iad);
		banner(); adlog($iad); main_menu();
	} elsif ($anu eq '8' || $anu eq '08') {
		print box("##"),"Enter mail: "; my $ie = <STDIN>; chomp($ie);
		banner(); email($ie); main_menu();
	} elsif ($anu eq '9' || $anu eq '09') {
		print box("##"),"Enter URL: "; my $fid = <STDIN>; chomp($fid);
		banner(); fbid($fid); main_menu();
	} elsif ($anu eq '10') {
		print box("##"),"Enter your facebook token: "; my $itk = <STDIN>; chomp($itk);
		banner(); dumpdid($itk); main_menu();
	} elsif ($anu eq '11') {
		print box("##"),"Enter URL: "; my $idm = <STDIN>; chomp($idm);
		banner(); doma($idm); main_menu();
	} elsif ($anu eq '12') {
		print box("##"),"Hash: "; my $ihs = <STDIN>; chomp($ihs);
		banner(); md5($ihs); main_menu();
	} elsif ($anu eq '13') {
		print box("##"),"Enter ip: "; my $pip = <STDIN>; chomp($pip);
		banner(); ipc($pip); main_menu();
	} elsif ($anu eq '0' || $anu eq '00'){
		exit;
	} else {
		print box("!"),"ERROR: Wrong input broo ...\n";
		main_menu();
	}
}

## gmail account checker
sub email {
	my @em = @_;
	eval 
	{
		$mec->get("https://www.infobyip.com/verifyemailaccount.php");
		$mec->submit_form( fields => {"email" => @em}, );
		$resp = $mec->content;
		if ($resp =~ /<img src=\'[\D]*\'> E(.*?)<p><b>/) {
			print box("+"),"E$1\n";
		}
	}

	|| do 
	{
		print box("!"),"ERROR: check your connection OR invalid your gmail name ...\n";
	}
}

## md5 cracker
sub md5 {
	my @hash = @_;
	eval
	{

		$mec->get("http://md5.my-addr.com/md5_decrypt-md5_cracker_online/md5_decoder_tool.php");
		$mec->submit_form( fields => {"md5" => @hash}, );
		$response = $mec->content;
		if ($response =~ /<span class=\'middle_title\'>Hashed string<\/span>: (.*?)<\/div>/)
		{
			print box("+"),"Success: $1\n";
		}
		else
		{
			print box("!"),"not found in database.\n";
		}
	}

	|| do
	{
		print box("!"),"ERROR: check your connection.\n";
	}
}

## my facebook id
sub fbid {
	my @urlusr = @_;
	eval
	{
		$mec->get("https://findmyfbid.com/");
		$mec->submit_form( fields => {"url" => @urlusr}, );
		$tojson = decode_json($mec->content);
		if (exists $tojson->{"id"})
		{
			print box("+"),"Success, ID: ";
			print $tojson->{"id"},"\n";
		} else
		{
			print box("!"),"Check your url valid\n";
		}
	}

	|| do {
		print box("!"),"ERROR: check your connection OR check your url.\n";
	}
}

## domain age checker
sub doma {
	my @dom = @_;
	eval {
		$mec->get("https://www.iplocation.net/domain-age");
		$mec->submit_form( fields => {"domain" => @dom}, );
		$resp = $mec->content;
		if ($resp =~ /td.width=\"50%\">(.*?)<\/td>/)
		{
			print box("+"),"Domain     : $1 \n"; 
		}
		if ($resp =~ /<tr><th>Date[\D]*<\/th><td><strong>(.*?)<\/strong>/)
		{
			print box("+"),"Registered : $1 \n"; 
		}
		if ($resp =~ /<tr><th>Domain A[\D]*<\/th><td><strong>(.*?)<\/strong>/)
		{
			print box("+"),"Domain age : $1 \n"; 
		}
		else {
			print box("!"),"ERROR: invalid domain name\n";
		}
	}

	|| do {
		print box("!"),"ERROR: check your connection.\n";
	}
}

## credit card checker
sub cc_checker {
	my @cc = @_;
	eval
	{
		$mec->get("https://www.tools4noobs.com/online_tools/credit_card_validate/");
		$mec->submit_form(
			fields => {
				"text" => @cc,
			},
		);
		if ($mec->content =~ /<div class=\"alert alert-[^a-b]*\">(.*?)<[^D]/) {
			print box("+"),$1,"\n";
		}
	}
	|| do {
		print box("!"),"Check your connection.\n";
	}
}

## media social name checker
sub medianame {
	my @usmn = @_;
	eval {
		@social = ("https://www.facebook.com",
				   "https://www.twitter.com",
				   "https://www.github.com",
				   "https://www.snapchat.com",
				   "https://plus.google.com",
				   "https://www.pinterest.com",
				   "https://www.youtube.com",
				   "https://www.instagram.com",
				   "https://www.linkedin.com/in");

		for (my $i = 0; $i < @social.length; $i++) {
			$url = @social[$i];
			$target = $url."/".@usmn[0];
			if ($url eq 'https://plus.google.com') {
				$target = $url."/+".@usmn[0];
			}

			$req = $ru->get($target);
			$resp = $req->message;
			if ($resp eq 'OK')
			{
				print box("+"),"FOUND",color("red"),": ",color("reset"),$target,"\n";
			}
			else
			{
				print box("x"),"NOOTT",color("red"),": ",color("reset"),$target,"\n";
			}
		}
	}
}

## backdoor scaner
sub bcs {
	my @st = @_;
	open(my $file, '<', '/usr/bin/crypton-module/backdoor_wordlist.txt') || die "$!\n";
	eval {
		while (my $wordlist = <$file>) {
			my $target = @st[0]."/".$wordlist;
			$req = $ru->get($target);
			if ($req->message eq 'OK')
			{
				print box("+"),"FOUND",color('red'),": ",color('reset'),$target;
			}
		}
	}
	|| do {
		print box("!"),"ERROR: Check your connection or invalid domain\n";
	}
}

## admin finder
sub adlog {
	my @site = @_;
	open(my $fl, '<', '/usr/bin/crypton-module/admin_wordlist.txt') || die "$!\n";
	eval {
		while (my $word = <$fl>) {
			my $tj = @site[0]."/".$word;
			$req = $ru->get($tj);
			if ($req->message eq "OK")
			{
				print box("+"),"FOUND",color('red'),": ",color('reset'),$tj;
			}
		}
	}
	|| do {
		print box("!"),"ERROR: Check your connection OR invalid domain name.\n";
	}
}

## http header checker
sub htck {
	my @dm = @_;
	eval {
		$req = $ru->get(@dm);
		if ($req->header('Date'))
		{
			print box("+"),"Date               : ",$req->header('Date'),"\n";
		}
		if ($req->header('Server'))
		{
			print box("+"),"Server             : ",$req->header('Server'),"\n";
		}
		if ($req->header('Content-Length'))
		{
			print box("+"),"Content Length     : ",$req->header('Content-Length'),"\n";
		}
		if ($req->header('Content-Type'))
		{
			print box("+"),"Content Type       : ",$req->header('Content-Type'),"\n";
		}
		if ($req->header('Last-Modified'))
		{
			print box("+"),"Last Modified      : ",$req->header('Last-Modified'),"\n";
		}
		if ($req->header('Client-Date'))
		{
			print box("+"),"Client Date        : ",$req->header('Client-Date'),"\n";
		}
		if ($req->header('Client-Peer'))
		{
			print box("+"),"Client Peer        : ",$req->header('Client-Peer'),"\n";
		}
		if ($req->header('Client-Response-Num'))
		{
			print box("+"),"Client Response Num: ",$req->header('Client-Response-Num'),"\n";
		}
		if ($req->header('X-Cnection'))
		{
			print box("+"),"X-Cnection         : ",$req->header('X-Cnection'),"\n";
		}

	}

}

## ip adreas checker
sub ipc {
	my @ip = @_;
	eval {
		$req = $ru->get("https://ipapi.co/@ip[0]/json/");
		$response = $req->content;
		my $tojs = decode_json($response);
		if (exists $tojs->{"ip"})
		{
			print box("+"),"ip            : ",$tojs->{"ip"},"\n";
		}
		if (exists $tojs->{"city"}) {
			print box("+"),"city          : ",$tojs->{"city"},"\n";
		}
		if (exists $tojs->{"region"}) {
			print box("+"),"region        : ",$tojs->{"region"},"\n";
		}
		if (exists $tojs->{"region_code"}) {
			print box("+"),"region code   : ",$tojs->{"region_code"},"\n";
		}
		if (exists $tojs->{"country"}) {
			print box("+"),"country       : ",$tojs->{"country"},"\n";
		}
		if (exists $tojs->{"country_name"}) {
			print box("+"),"country name  : ",$tojs->{"country_name"},"\n";
		}
		if (exists $tojs->{"continent_code"}) {
			print box("+"),"continent code: ",$tojs->{"continent_code"},"\n";
		}
		if (exists $tojs->{"in_eu"}) {
			print box("+"),"in eu         : ",$tojs->{"in_eu"},"\n";
		}
		if (exists $tojs->{"postal"}) {
			print box("+"),"postal        : ",$tojs->{"postal"},"\n";
		}
		if (exists $tojs->{"longitude"}) {
			print box("+"),"longitude     : ",$tojs->{"longitude"},"\n";
		}
		if (exists $tojs->{"timezone"}) {
			print box("+"),"timezone      : ",$tojs->{"timezone"},"\n";
		}
		if (exists $tojs->{"country_calling_code"}) {
			print box("+"),"calling code  : ",$tojs->{"country_calling_code"},"\n";
		}
		if (exists $tojs->{"currency"}) {
			print box("+"),"currency      : ",$tojs->{"currency"},"\n";
		}
		if (exists $tojs->{"languages"}) {
			print box("+"),"language      : ",$tojs->{"languages"},"\n";
		}
		if (exists $tojs->{"asn"}) {
			print box("+"),"asn           : ",$tojs->{"asn"},"\n";
		}
		if (exists $tojs->{"org"}) {
			print box("+"),"org           : ",$tojs->{"org"},"\n";
		}
		else {
			box("!"),"Invalid IP Address\n";
		}
	}

	|| do {
		print box("!"),"Check your connection and try again.\n";
	}

}

## dump all friend ID
sub dumpdid {
	my @tk = @_;
	my $filename = "/usr/bin/crypton-module/Crypton_result_dump_id.txt";
	open(my $file, '>>', $filename) || do "$!\n";
	eval
	{
		$requ = $ru->get("https://graph.facebook.com/me/friends?access_token=@tk");
		$respons = $requ->content;
		if ($respons =~ /\"id\":\"(.*?)\"/) {
			while ($respons =~m/\"id\":\"(.*?)\"/g) {
				say $file $1;
			}

			print box("+"),"Dump id Success, saved to: $filename\n";
			close $file;
		}
		else{
			print box("!"),"ERROR: invalid token\n";
		}
	}

	|| do
	{

		print box("!"),"ERROR: check your connection.\n";
	}
}

## website analyze scanner
sub webvuln {
	my @url = @_;
	eval
	{
		$req = $ru->get("https://www.ssllabs.com/ssltest/analyze.html?d=@url");
		$resp = $req->content;
		if ($resp =~ /Number<\/td>[\D]*<td>(.*?)<\/td>/) 
		{ 
			print box("+"),"Serial Number        : $1\n"; }
		if ($resp =~ /from<\/td>[\D]*<td class=\"tableCell\">(.*?)<\/td>/) 
		{ 
			print box("+"),"Valid from           : $1\n"; }
		if ($resp =~ /until<\/td>[\D]*<td class=\"tableCell\">(.*?)<\/td>/) 
		{
			print box("+"),"Valid until          : $1\n"; }
		if ($resp =~ /\(Debian\) <\/td>[\D]*<td class=\"tableCell\"> (.*?)<\/td>/) 
		{
			print box("+"),"Weak Key (Debian)    : $1\n"; }
		if ($resp =~ /algorithm<\/td>[\D]*<td class=\"tableCell\">(.*?)<\/td>/) 
		{
			print box("+"),"Signature algorithm  : $1\n"; }
		if ($resp =~ /Validation<\/td>[\D]*<td class=\"tableCell\">(.*?)<\/td>/) 
		{
			print box("+"),"Extended Validation  : $1\n"; }
		if ($resp =~ /status<\/td>[\D]*<td class=\"tableCell\">(.*?)<font/) 
		{
			print box("+"),"Revocation status    : $1\n"; }
		else {
			print box("!"),"ERROR: Unable to resolve domain name\n";
		}
	}

	|| do
	{

		print box("!"),"ERROR: check your connection.\n";
	}
}


## Facebook account information
sub fbi {
	my @token = @_;
	eval
	{
		$req = $ru->get("https://graph.facebook.com/me?access_token=@token");
		$respon = $req->content;
		my $parjson = decode_json($respon);
		if (exists $parjson->{"id"}) 
		{
			print box("+"),"id           : ";
			print $parjson->{"id"},"\n";
		}
		if (exists $parjson->{"birthday"}) 
		{
			print box("+"),"birthday     : ";
			print $parjson->{"birthday"},"\n";
		}
		if (exists $parjson->{"email"}) 
		{
			print box("+"),"email        : ";
			print $parjson->{"email"},"\n";
		}
		if (exists $parjson->{"first_name"}) 
		{
			print box("+"),"first name   : ";
			print $parjson->{"first_name"},"\n";
		}
		if (exists $parjson->{"last_name"}) 
		{
			print box("+"),"last name    : ";
			print $parjson->{"last_name"},"\n";
		}
		if (exists $respon->{"gender"}) 
		{
			print box("+"),"gender       : ";
			print $parjson->{"gender"},"\n";
		}
		if (exists $parjson->{"locale"}) 
		{
			print box("+"),"locale       : ";
			print $parjson->{"locale"},"\n";
		}
		if (exists $parjson->{"name"}) 
		{
			print box("+"),"name         : ";
			print $parjson->{"name"},"\n";
		}
		if (exists $parjson->{"timezone"}) 
		{
			print box("+"),"timezone     : ";
			print $parjson->{"timezone"},"\n";
		}
		if (exists $parjson->{"updated_time"}) 
		{
			print box("+"),"updated time : ";
			print $parjson->{"updated_time"},"\n";
		}
		if (exists $parjson->{"username"}) 
		{
			print box("+"),"username     : ";
			print $parjson->{"username"},"\n";
		}
		if (exists $parjson->{"verified"}) 
		{
			print box("+"),"verified     : ";
			if ($parjson->{"verified"} eq 1) {
				print "True\n";
			}
			else {
				print "False\n";
			}
		}

		else {

			print box("!"),"ERROR: invalid token\n";
		}
	}

	|| do {

		print box("!"),"ERROR: Check your conenction.\n";
	}

}

sub main_menu {
	print "\n",box("+"),color("reset"),"Press ",
		  color("red"),"ENTER ",
		  color("reset"),"to return ";
	my $x = <STDIN>; banner(); home();
}

sub box {
	my @et = @_;
	return color('red'),"[",
	       color("reset"),"@et",
	       color("red"),"] ",
	       color("reset");
}

banner(); home();
