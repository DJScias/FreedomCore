<?php

Class String
{
	public static function GetTextBetween($String, $First, $Last)
	{
		$FirstFound = strpos($String, $First)+1;
		$LastFound = strrpos($String, $Last);
		$TextLength = $LastFound-$FirstFound;
		$Text = substr($String, $FirstFound, $TextLength);
		return $Text;
	}

	public static function GetTextBefore($String, $First)
	{
		$FirstFound = strpos($String, $First)-1;
		$Text = substr($String, 0, $FirstFound);
		return $Text;
	}

	public static function MASearch($array, $field, $value)
	{
	   foreach($array as $key => $item)
	   {
	      if ( $item[$field] === $value )
	         return $key;
	   }
	   return false;
	}

	public static function IsNull($String)
	{
		if(is_null($String))
			return true;
		elseif($String == "")
			return true;
		elseif($String == " ")
			return true;
		else
			return false;
	}

    public static function MoneyToCoins($money)
    {
        $coins = array();
        if($money >= 10000)
        {
            $coins['gold'] = floor($money / 10000);
            $money = $money - $coins['gold']*10000;
        }
        if($money >= 100)
        {
            $coins['silver'] = floor($money / 100);
            $money = $money - $coins['silver']*100;
        }
        if($money > 0)
            $coins['copper'] = $money;
        return $coins;
    }

    public static function FindClosestKey($Array, $Key)
    {
        foreach($Array as $AKey=>$AValue)
        {
            if($Key >= $AValue['lowest'] && $Key <= $AValue['highest'])
                return $AKey;
        }
    }

	public static function Declension($string, $ch1, $ch2, $ch3)
	{
		$ff=Array('0','1','2','3','4','5','6','7','8','9');
		if(substr($string,-2, 1)==1 AND strlen($string)>1) 
			$ry=array("0 $ch3","1 $ch3","2 $ch3","3 $ch3" ,"4 $ch3","5 $ch3","6 $ch3","7 $ch3","8 $ch3","9 $ch3");
		else 
			$ry=array("0 $ch3","1 $ch1","2 $ch2","3 $ch2","4 $ch2","5 $ch3"," 6 $ch3","7 $ch3","8 $ch3"," 9 $ch3");
		$string1=substr($string,0,-1).str_replace($ff, $ry, substr($string,-1,1));
		return $string1;
	}

	public static function ProtectionCode($MainString)
	{
		return sha1($MainString.mt_rand(10000,99999));
	}

    public static function UnsetAllBut($Save, $Array, $Dimensions = 1)
    {
        $FinalArray = array();
        $ArrayItems = count($Array);
        $StartingIndex = 0;
        if($Dimensions == 1)
        {
            foreach($Array as $Key=>$Value)
            {
                if($Key != $Save)
                    unset($Array[$Key]);
                $FinalArray[] = $Array[$Save];
            }
        }
        elseif($Dimensions == 2)
        {
            foreach($Array as $Item)
            {
                foreach($Item as $Key=>$Value)
                {
                    if($Key != $Save)
                        unset($Array[$Key]);
                    if(!in_array($Item[$Save], $FinalArray))
                        $FinalArray[] = $Item[$Save];
                }
            }
        }
        return $FinalArray;
    }

	public static function GenerateCaptcha()
	{
		$InitialString = str_shuffle("abcdefghijklmnopqrstuvwxyz1234567890");
		$RandomString = substr($InitialString,0,9);
		$CreateBlankImage = @ImageCreate (200, 70) or die ("Cannot Initialize new GD image stream");
		$BackgroundColor = ImageColorAllocate ($CreateBlankImage, 204, 204, 204);
		$TextColor = ImageColorAllocate ($CreateBlankImage, 51, 51, 255); 
		ImageString($CreateBlankImage,5,50,25,$RandomString,$TextColor);
		ImagePng($CreateBlankImage);
		imagedestroy($CreateBlankImage);
	}
}

?>