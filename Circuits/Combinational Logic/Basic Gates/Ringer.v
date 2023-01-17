module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    //  ring | vibrate_mode | ringer | Motor
    //   0   |       0      |   0    |   0 
    //   1   |       0      |   1    |   0    
    //   0   |       1      |   0    |   0
    //   1   |       1      |   0    |   1
    
    assign ringer = (ring & ~vibrate_mode);
    
    assign motor = ring & vibrate_mode ;

endmodule
