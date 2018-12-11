//
//  Tweak.xm
//  CustomAlertView
//
//  Created by @Y_Dagriri on 12/11/18.
//  Copyright © 2018 @Y_Dagriri. All rights reserved.
//


/************** This code will unlcok all featres in Path app *****************/
%hook PTPost
-(bool) isPremiumStory {
return true;
}
%end
%hook PTPerson
-(bool) isPremium {
return true;
}
%end

%hook PTOMPerson
-(bool) isPremium {
return true;
}
-(void) setIsPremium:(bool)arg {
arg = true;
}
%end


%hook PTPurchase
-(bool) isPremiumPurchase {
return true;
}
%end

%hook PTShopHangingItem
-(void) setPremiumPurchased:(bool)arg {
arg = true;
}
%end


/********************** Alert **********************/

%hook FBSDKApplicationDelegate

- (BOOL)application:(id)fp8 didFinishLaunchingWithOptions:(id)fp12 { 
UIAlertView *igcredits = [[UIAlertView alloc] initWithTitle:@"💧Successful💧" 
						  message:@"️All features are unlocked now. Hacked by【қłΔѕн۩қѕΔ】add me on Twitter @Y_Dagriri For more hacks"
						 delegate:self 
										cancelButtonTitle:@"🎀" 
										otherButtonTitles:@"【қłΔѕн۩қѕΔ】", nil]; 
[igcredits show];
[igcredits release]; 
return %orig();
}
 
%new
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
 
NSString *button = [alertView buttonTitleAtIndex:buttonIndex];
 
	if([button isEqualToString:@"【қłΔѕн۩қѕΔ】"])
	{
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://mobile.twitter.com/Y_Dagriri"]];										    
	}
}
%end


