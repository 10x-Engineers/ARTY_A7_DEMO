# ARTY_A7_DEMO

Demo of burning a simple adder code on ARTY_A7 (FPGA) using Vivado.

## Prerequisite

- Vivado should be installed on the local machine.
- ARTY A7 FPGA board.
- Adder.v file available in the sources folder of this repo.
- Data cable (to connect the board with machine).

## Procedure

Open the Vivado GUI and click on the `Create Project`.

![start](pictures/start.png )

A new window will appear just click on the `next` tab.

![create](pictures/1.png )

A new window will pop up here give the name and the path where the project will be stored.

![project name](pictures/2.png )

`RTL Project` is ticked by default just click on the `next` tab.

![project type](pictures/3.png )

Click on the `ADD FILES` tab.

![add sources](pictures/4.png )

Here select the folder from the `Look in:` where `adder.v` has been downloaded. Then click on the file and press `OK`.

![open the file](pictures/9.png )

On `Add Constraints` window just press `Next` tab.

![add constraints](pictures/5.png )
When `Default Part` window will appear then write `xc7a100tcsg` in the search bar and select the highlighted board and press `Next` tab.

![select the board](pictures/7.png )

Press `Finish`.

![finish](pictures/8.png )

Select the `adder` from the `Design Sources` in the `Sources` small window .

![adder.v select](pictures/15.png )

In the `Flow Navigator` select `Open Elaborated Design` under the `RTL ANALYSIS`.

![rtl analysis](pictures/11.png )

Click `OK` on this window.

![ok_for rtl](pictures/13.png )

The `Elaborated Design` window will be opened and `I/O Ports` tab can be seen at the bottom. Click on this tab and unconnected ports will be shown under this tab.

![I/O](pictures/14.png )

Write the pin names as shown  in the `Package Pin` column and `LVCMOS33*` in the `I/O Std` column.Press `ctrl+s` to save the pins.

![I/O select](pictures/16.png )

Click `Ok` after writing the `myxdcfile` in the `File name` bar.

![xdc file](pictures/17.png )

Click on the `Run Synthesize` in the `Flow Navigator`

![run synthesize](pictures/18.png )

Click `OK`.

![launch runs](pictures/19.png )

This will appear on the top right of the window.

![synthesize running](pictures/20.png )

After seeing this message press `OK` for running the implementation.

![run for implementation](pictures/21.png )

Click `OK`.

![ok for implementation](pictures/22.png )

Select the `Generate Bitstream` and press `OK`. Implemented design can also been seen by selecting `Open Implemented Design` and pressing `OK`. Now connect the FPGA board with the machine.

![bit stream ](pictures/23.png )

When this window will appear then select `Open Hardware Manager` and press `OK`.

![open hardware](pictures/24.png )

When the `adder.v` file will appear then click on the `Open target`.

![open target](pictures/25.png )

If the `localhost(0)` appears then this mean the drivers are not installed.No need to worry, just follow these simple steps to install the drivers.

![local zero](pictures/26.png )

Open the terminal from the place where the Vivado directory is present and cd to the following directory.

> Vivado/2018.2/data/xicom/cable_drivers/lin64/install_script/install_drivers

where `2018.2` is the version of Vivado installed on the machine.  
Now run the following two scripts.

> sudo ./install_digilent.sh  
> sudo ./install_drivers

The result of the above commands will look like the following.

![terminal](pictures/27.png )

TADA, now the `Hardware` window will show the connected board like this.Right click on the board name and click on the program device.

![connected board](pictures/ok.png )

Click the `prog...`  and the program will be loaded to the board.

![program the board](pictures/28.png )

The names of the LEDs and switches on the board and their corresponding port connections are shown in the following table.

| Names       | Ports  |
| ----------- | ------ |
| SW0         | a[0]   |
| SW1         | a[1]   |
| SW2         | b[0]   |
| SW3         | b[1]   |
| LD4         | s[0]   |
| LD5         | s[1]   |
| LD6         | c      |

By changing the positions of the switches on the board, their `adder` response can be visualized with the LEDs.
