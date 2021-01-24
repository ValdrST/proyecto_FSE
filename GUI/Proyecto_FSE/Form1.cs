using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;
using System.Threading;
using System.Management;

namespace Proyecto_FSE
{
    public partial class Form1 : Form
    {
        static bool _continue;
        static int secuencia=0;
        static int ventilador=0;
        static int potencia=100;
        static int temperatura = 23;

        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (ventilador != 0)
            {
                ventilador = 0;
            }
        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
            potencia=(int)potenciaVentilador.Value;
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {
        }


        private void serial_select_SelectedIndexChanged(object sender, EventArgs e){
            if (serialPort1.IsOpen)
                serialPort1.Close();
            try
            {
                serialPort1.PortName = serial_select.Text;
                serialPort1.Open();
                serialPort1.WriteLine("FF");
                string readed = serialPort1.ReadChar().ToString();
                Console.WriteLine(readed);
                if (readed == "FSE")
                {
                    serialPort1.WriteLine("0E");
                }
                else
                {
                    serialPort1.Close();
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            
        }


        private void serial_select_Click(object sender, EventArgs e)
        {
            serial_select.Items.Clear();
            foreach (string s in SerialPort.GetPortNames())
            {
                serial_select.Items.Add(s);
            }
        }

        private bool serial_autoselect()
        {
            if (serialPort1.IsOpen)
            {
                return true;
            }
            foreach (string s in SerialPort.GetPortNames())
            {
                try
                {
                    serialPort1.PortName = s;
                    if (!serialPort1.IsOpen)
                    {
                        serialPort1.Open();
                        serialPort1.WriteLine("FF");
                        if (serialPort1.ReadLine() != "")
                        {
                            Console.WriteLine("ok");
                            serial_select.Text = s;
                            return true;
                        }
                        else
                        {
                            Console.WriteLine("|no ok|");
                        }
                    }
                    else
                    {
                        serialPort1.WriteLine("FF");
                        if (serialPort1.ReadLine() != "")
                        {
                            Console.WriteLine("ok");
                            serial_select.Text = s;
                            return true;
                        }
                        else
                        {
                            Console.WriteLine("|no ok|");
                        }
                            
                    }
                        
                }catch(Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    continue;
                }
            }
            Console.WriteLine("|no ok ok|");
            return false;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            potenciaVentilador.Value = 100;
            secuencia_1Sel.Select();
            ventilador1.Select();
            try
            {
                serialPort1.ReadTimeout = 1000;
                if (this.serial_autoselect())
                {
                    Console.WriteLine("GOOD");
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            
        }

        private void enviar_btn_Click(object sender, EventArgs e)
        {
            try
            {
                if (serial_autoselect())
                {
                    string comando = "2" + ventilador + potencia + "\r";
                    serialPort1.Write(comando);
                    Console.WriteLine(comando);
                    comando = "B" + ventilador + secuencia + "\r";
                    serialPort1.WriteLine(comando);
                    Console.WriteLine(comando);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private void secuencia_1Sel_CheckedChanged(object sender, EventArgs e)
        {
            if(secuencia != 0)
            {
                secuencia = 0;
            }
        }

        private void radioButton1_CheckedChanged_1(object sender, EventArgs e)
        {
            if (secuencia != 3)
            {
                secuencia = 3;
            }
        }

        private void SecuenciasGroup_Validated(object sender, EventArgs e)
        {
            GroupBox g = sender as GroupBox;
            var a = from RadioButton r in g.Controls where r.Checked == true select r.Name;
            object strChecked = a.First();
        }

        private void secuencia2_Sel_CheckedChanged(object sender, EventArgs e)
        {
            if(secuencia != 1)
            {
                secuencia = 1;
            }
        }

        private void secuencia3_Sel_CheckedChanged(object sender, EventArgs e)
        {
            if (secuencia != 2)
            {
                secuencia = 2;
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (ventilador != 2)
            {
                ventilador = 2;
            }
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (ventilador != 1)
            {
                ventilador = 1;
            }
        }

        private void temperatura_input_ValueChanged(object sender, EventArgs e)
        {
            temperatura = (int)temperatura_input.Value;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (temperatura > 50)
            {
                potenciaVentilador.Value = 100;
            }else if(temperatura > 40 && temperatura <= 50)
            {
                potenciaVentilador.Value = 75;
            }else if (temperatura > 30 && temperatura <= 40)
            {
                potenciaVentilador.Value = 50;
            }
            else if (temperatura > 20 && temperatura <= 30)
            {
                potenciaVentilador.Value = 25;
            }
            else
            {
                potenciaVentilador.Value = 10;
            }
            string comando = "22" + potencia + "\r";
            serialPort1.Write(comando);
            Console.WriteLine(comando);
        }
    }
}
