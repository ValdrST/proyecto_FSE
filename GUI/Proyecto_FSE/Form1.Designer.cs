namespace Proyecto_FSE
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.ventiladores = new System.Windows.Forms.GroupBox();
            this.radioButton3 = new System.Windows.Forms.RadioButton();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.ventilador1 = new System.Windows.Forms.RadioButton();
            this.label1 = new System.Windows.Forms.Label();
            this.potenciaVentilador = new System.Windows.Forms.NumericUpDown();
            this.SecuenciasGroup = new System.Windows.Forms.GroupBox();
            this.secuencia3_Sel = new System.Windows.Forms.RadioButton();
            this.secuencia4_Sel = new System.Windows.Forms.RadioButton();
            this.secuencia2_Sel = new System.Windows.Forms.RadioButton();
            this.secuencia_1Sel = new System.Windows.Forms.RadioButton();
            this.enviar_btn = new System.Windows.Forms.Button();
            this.serial_select = new System.Windows.Forms.ComboBox();
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.temperatura_label = new System.Windows.Forms.Label();
            this.temperatura_input = new System.Windows.Forms.NumericUpDown();
            this.temperatura_btn = new System.Windows.Forms.Button();
            this.ventiladores.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.potenciaVentilador)).BeginInit();
            this.SecuenciasGroup.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.temperatura_input)).BeginInit();
            this.SuspendLayout();
            // 
            // ventiladores
            // 
            this.ventiladores.Controls.Add(this.radioButton3);
            this.ventiladores.Controls.Add(this.radioButton2);
            this.ventiladores.Controls.Add(this.ventilador1);
            this.ventiladores.Location = new System.Drawing.Point(30, 84);
            this.ventiladores.Name = "ventiladores";
            this.ventiladores.Size = new System.Drawing.Size(447, 71);
            this.ventiladores.TabIndex = 1;
            this.ventiladores.TabStop = false;
            this.ventiladores.Text = "Ventiladores";
            // 
            // radioButton3
            // 
            this.radioButton3.AutoSize = true;
            this.radioButton3.Location = new System.Drawing.Point(344, 38);
            this.radioButton3.Name = "radioButton3";
            this.radioButton3.Size = new System.Drawing.Size(81, 17);
            this.radioButton3.TabIndex = 2;
            this.radioButton3.TabStop = true;
            this.radioButton3.Text = "Ventilador 1";
            this.radioButton3.UseVisualStyleBackColor = true;
            this.radioButton3.CheckedChanged += new System.EventHandler(this.radioButton3_CheckedChanged);
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Location = new System.Drawing.Point(167, 38);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(98, 17);
            this.radioButton2.TabIndex = 1;
            this.radioButton2.TabStop = true;
            this.radioButton2.Text = "Ventilador 0 y 1";
            this.radioButton2.UseVisualStyleBackColor = true;
            this.radioButton2.CheckedChanged += new System.EventHandler(this.radioButton2_CheckedChanged);
            // 
            // ventilador1
            // 
            this.ventilador1.AutoSize = true;
            this.ventilador1.Location = new System.Drawing.Point(17, 38);
            this.ventilador1.Name = "ventilador1";
            this.ventilador1.Size = new System.Drawing.Size(81, 17);
            this.ventilador1.TabIndex = 0;
            this.ventilador1.TabStop = true;
            this.ventilador1.Text = "Ventilador 0";
            this.ventilador1.UseVisualStyleBackColor = true;
            this.ventilador1.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(53, 39);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(224, 25);
            this.label1.TabIndex = 2;
            this.label1.Text = "Potencia Ventilador %";
            this.label1.Click += new System.EventHandler(this.label1_Click_1);
            // 
            // potenciaVentilador
            // 
            this.potenciaVentilador.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.potenciaVentilador.Location = new System.Drawing.Point(283, 41);
            this.potenciaVentilador.Name = "potenciaVentilador";
            this.potenciaVentilador.Size = new System.Drawing.Size(120, 26);
            this.potenciaVentilador.TabIndex = 3;
            this.potenciaVentilador.ValueChanged += new System.EventHandler(this.numericUpDown1_ValueChanged);
            // 
            // SecuenciasGroup
            // 
            this.SecuenciasGroup.Controls.Add(this.secuencia3_Sel);
            this.SecuenciasGroup.Controls.Add(this.secuencia4_Sel);
            this.SecuenciasGroup.Controls.Add(this.secuencia2_Sel);
            this.SecuenciasGroup.Controls.Add(this.secuencia_1Sel);
            this.SecuenciasGroup.Location = new System.Drawing.Point(30, 209);
            this.SecuenciasGroup.Name = "SecuenciasGroup";
            this.SecuenciasGroup.Size = new System.Drawing.Size(447, 71);
            this.SecuenciasGroup.TabIndex = 3;
            this.SecuenciasGroup.TabStop = false;
            this.SecuenciasGroup.Text = "Secuencias LED";
            this.SecuenciasGroup.Enter += new System.EventHandler(this.groupBox1_Enter);
            this.SecuenciasGroup.Validated += new System.EventHandler(this.SecuenciasGroup_Validated);
            // 
            // secuencia3_Sel
            // 
            this.secuencia3_Sel.AutoSize = true;
            this.secuencia3_Sel.Location = new System.Drawing.Point(243, 38);
            this.secuencia3_Sel.Name = "secuencia3_Sel";
            this.secuencia3_Sel.Size = new System.Drawing.Size(85, 17);
            this.secuencia3_Sel.TabIndex = 3;
            this.secuencia3_Sel.TabStop = true;
            this.secuencia3_Sel.Text = "Secuencia 3";
            this.secuencia3_Sel.UseVisualStyleBackColor = true;
            this.secuencia3_Sel.CheckedChanged += new System.EventHandler(this.secuencia3_Sel_CheckedChanged);
            // 
            // secuencia4_Sel
            // 
            this.secuencia4_Sel.AutoSize = true;
            this.secuencia4_Sel.Location = new System.Drawing.Point(344, 38);
            this.secuencia4_Sel.Name = "secuencia4_Sel";
            this.secuencia4_Sel.Size = new System.Drawing.Size(85, 17);
            this.secuencia4_Sel.TabIndex = 2;
            this.secuencia4_Sel.TabStop = true;
            this.secuencia4_Sel.Text = "Secuencia 4";
            this.secuencia4_Sel.UseVisualStyleBackColor = true;
            this.secuencia4_Sel.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged_1);
            // 
            // secuencia2_Sel
            // 
            this.secuencia2_Sel.AutoSize = true;
            this.secuencia2_Sel.Location = new System.Drawing.Point(130, 38);
            this.secuencia2_Sel.Name = "secuencia2_Sel";
            this.secuencia2_Sel.Size = new System.Drawing.Size(85, 17);
            this.secuencia2_Sel.TabIndex = 1;
            this.secuencia2_Sel.TabStop = true;
            this.secuencia2_Sel.Text = "Secuencia 2";
            this.secuencia2_Sel.UseVisualStyleBackColor = true;
            this.secuencia2_Sel.CheckedChanged += new System.EventHandler(this.secuencia2_Sel_CheckedChanged);
            // 
            // secuencia_1Sel
            // 
            this.secuencia_1Sel.AutoSize = true;
            this.secuencia_1Sel.Location = new System.Drawing.Point(28, 38);
            this.secuencia_1Sel.Name = "secuencia_1Sel";
            this.secuencia_1Sel.Size = new System.Drawing.Size(85, 17);
            this.secuencia_1Sel.TabIndex = 0;
            this.secuencia_1Sel.TabStop = true;
            this.secuencia_1Sel.Text = "Secuencia 1";
            this.secuencia_1Sel.UseVisualStyleBackColor = true;
            this.secuencia_1Sel.CheckedChanged += new System.EventHandler(this.secuencia_1Sel_CheckedChanged);
            // 
            // enviar_btn
            // 
            this.enviar_btn.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.enviar_btn.Location = new System.Drawing.Point(343, 295);
            this.enviar_btn.Name = "enviar_btn";
            this.enviar_btn.Size = new System.Drawing.Size(116, 47);
            this.enviar_btn.TabIndex = 4;
            this.enviar_btn.Text = "Enviar";
            this.enviar_btn.UseVisualStyleBackColor = true;
            this.enviar_btn.Click += new System.EventHandler(this.enviar_btn_Click);
            // 
            // serial_select
            // 
            this.serial_select.FormattingEnabled = true;
            this.serial_select.Location = new System.Drawing.Point(47, 309);
            this.serial_select.Name = "serial_select";
            this.serial_select.Size = new System.Drawing.Size(187, 21);
            this.serial_select.TabIndex = 5;
            this.serial_select.SelectedIndexChanged += new System.EventHandler(this.serial_select_SelectedIndexChanged);
            this.serial_select.Click += new System.EventHandler(this.serial_select_Click);
            // 
            // temperatura_label
            // 
            this.temperatura_label.AutoSize = true;
            this.temperatura_label.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.temperatura_label.Location = new System.Drawing.Point(103, 173);
            this.temperatura_label.Name = "temperatura_label";
            this.temperatura_label.Size = new System.Drawing.Size(142, 24);
            this.temperatura_label.TabIndex = 7;
            this.temperatura_label.Text = "Temperatura °C";
            // 
            // temperatura_input
            // 
            this.temperatura_input.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.temperatura_input.Location = new System.Drawing.Point(251, 173);
            this.temperatura_input.Name = "temperatura_input";
            this.temperatura_input.Size = new System.Drawing.Size(55, 26);
            this.temperatura_input.TabIndex = 9;
            this.temperatura_input.ValueChanged += new System.EventHandler(this.temperatura_input_ValueChanged);
            // 
            // temperatura_btn
            // 
            this.temperatura_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.temperatura_btn.Location = new System.Drawing.Point(334, 166);
            this.temperatura_btn.Name = "temperatura_btn";
            this.temperatura_btn.Size = new System.Drawing.Size(143, 41);
            this.temperatura_btn.TabIndex = 10;
            this.temperatura_btn.Text = "Asignar Temperatura";
            this.temperatura_btn.UseVisualStyleBackColor = true;
            this.temperatura_btn.Click += new System.EventHandler(this.button1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlDark;
            this.ClientSize = new System.Drawing.Size(510, 373);
            this.Controls.Add(this.temperatura_btn);
            this.Controls.Add(this.temperatura_input);
            this.Controls.Add(this.temperatura_label);
            this.Controls.Add(this.serial_select);
            this.Controls.Add(this.enviar_btn);
            this.Controls.Add(this.SecuenciasGroup);
            this.Controls.Add(this.potenciaVentilador);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.ventiladores);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Proyecto FSE";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ventiladores.ResumeLayout(false);
            this.ventiladores.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.potenciaVentilador)).EndInit();
            this.SecuenciasGroup.ResumeLayout(false);
            this.SecuenciasGroup.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.temperatura_input)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.GroupBox ventiladores;
        private System.Windows.Forms.RadioButton radioButton3;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton ventilador1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.NumericUpDown potenciaVentilador;
        private System.Windows.Forms.GroupBox SecuenciasGroup;
        private System.Windows.Forms.RadioButton secuencia4_Sel;
        private System.Windows.Forms.RadioButton secuencia2_Sel;
        private System.Windows.Forms.RadioButton secuencia_1Sel;
        private System.Windows.Forms.RadioButton secuencia3_Sel;
        private System.Windows.Forms.Button enviar_btn;
        private System.Windows.Forms.ComboBox serial_select;
        private System.IO.Ports.SerialPort serialPort1;
        private System.Windows.Forms.Label temperatura_label;
        private System.Windows.Forms.NumericUpDown temperatura_input;
        private System.Windows.Forms.Button temperatura_btn;
    }
}

