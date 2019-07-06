/* [Global] */
// Text
text = "LGHS";
// Font

/* [Dimensions] */
// Length (X)
lg = 100;
// Width (Y)
wd = 30;
// Height (Z)
ht = 20;


/* [Reinforcement] */
// Present

// Percentage



diag = sqrt(lg*lg+ht*ht);

resize([diag,wd,0])
linear_extrude(height=ht, convexity = 10)
text("54DERIVATION", 50, font="impact", spacing=0.8);