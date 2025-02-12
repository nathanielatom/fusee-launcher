# Fusée Gelée

This fork adds support for Termux, an app that allows code to execute in userspace on Android.

```
                                      *     .--.
                                           / /  `
                          +               | |
                                 '         \ \__,
                             *          +   '--'  *
                                 +   /\
                    +              .'  '.   *
                           *      /======\      +
                                 ;:.  _   ;
                                 |:. (_)  |
                                 |:.  _   |
                       +         |:. (_)  |          *
                                 ;:.      ;
                               .' \:.    / `.
                              / .-'':._.'`-. \
                              |/    /||\    \|
                            _..--"""````"""--.._
                      _.-'``                    ``'-._
                __             __                   _   __
               / _|           /_/                  | | /_/
              | |_ _   _ ___  ___  ___    __ _  ___| | ___  ___
              |  _| | | / __|/ _ \/ _ \  / _` |/ _ \ |/ _ \/ _ \
              | | | |_| \__ \  __/  __/ | (_| |  __/ |  __/  __/
              |_|  \__,_|___/\___|\___|  \__, |\___|_|\___|\___|
                                          __/ |
                                          |___/
```

## Fusée Launcher

The Fusée Launcher is a proof-of-concept arbitrary code loader for a variety
of Tegra processors, which takes advantage of CVE-2018-6242 ("Fusée Gelée")
to gain arbitrary code execution and load small payloads over USB.

The vulnerability is documented in the 'report' subfolder; more details and
guides are to follow! Stay tuned...

### Use Instructions
The main launcher is "fusee-launcher.py". Windows, Linux, macOS and FreeBSD are all natively supported! Instructions for Windows specifically can be found on the [wiki](https://github.com/reswitched/fusee-launcher/wiki/Instructions-(Windows)).

With a Tegra device in RCM and connected via USB, invoke the launcher with the desired payload as an argument, e.g. `./fusee-launcher.py payload.bin`. Linux systems currently require either that the Tegra device be connected to an XHCI controller (used with blue USB 3 ports) or that the user has patched their EHCI driver. 

### Credits            
Fusée Gelée (CVE-2018-6242) was discovered and implemented by Kate Temkin (@ktemkin);
its launcher is developed and maintained by Mikaela Szekely (@Qyriad) and Kate Temkin (@ktemkin).

Credit goes to:

  * Qyriad -- maintainership and expansion of the code
  * SciresM, motezazer -- guidance and support  
  * hedgeberg, andeor  -- dumping the Jetson bootROM
  * TuxSH -- help with a first pass of bootROM RE
  * the ReSwitched team

Love / greetings to:

  * Levi / lasersquid
  * Aurora Wright
  * f916253
  * MassExplosion213 

CVE-2018-6242 was also independently discovered by fail0verflow member 
shuffle2 as the "shofEL2" vulnerability-- so that's awesome, too.
