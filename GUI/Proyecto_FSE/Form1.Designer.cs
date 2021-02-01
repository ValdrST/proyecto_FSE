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
            this.ventilador1RadioBtn = new System.Windows.Forms.RadioButton();
            this.ventilador0RadioBtn = new System.Windows.Forms.RadioButton();
            this.potenciaVentiladorlbl0 = new System.Windows.Forms.Label();
            this.potenciaVentilador0 = new System.Windows.Forms.NumericUpDown();
            this.SecuenciasGroup = new System.Windows.Forms.GroupBox();
            this.secuencia3_Sel = new System.Windows.Forms.RadioButton();
            this.secuencia4_Sel = new System.Windows.Forms.RadioButton();
            this.secuencia2_Sel = new System.Windows.Forms.RadioButton();
            this.secuencia_1Sel = new System.Windows.Forms.RadioButton();
            this.enviar_secuencia_btn = new System.Windows.Forms.Button();
            this.serial_select = new System.Windows.Forms.ComboBox();
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.temperatura_label = new System.Windows.Forms.Label();
            this.temperatura_input = new System.Windows.Forms.NumericUpDown();
            this.temperatura_btn = new System.Windows.Forms.Button();
            this.potenciaVentiladorlbl1 = new System.Windows.Forms.Label();
            this.potenciaVentilador1 = new System.Windows.Forms.NumericUpDown();
            this.enviar_potencia_btn = new System.Windows.Forms.Button();
            this.ventiladores.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.potenciaVentilador0)).BeginInit();
            this.SecuenciasGroup.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.temperatura_input)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.potenciaVentilador1)).BeginInit();
            this.SuspendLayout();
            // 
            // ventiladores
            // 
            this.ventiladores.Controls.Add(this.ventilador1RadioBtn);
            this.ventiladores.Controls.Add(this.ventilador0RadioBtn);
            this.ventiladores.Location = new System.Drawing.Point(30, 84);
            this.ventiladores.Name = "ventiladores";
            this.ventiladores.Size = new System.Drawing.Size(447, 71);
            this.ventiladores.TabIndex = 1;
            this.ventiladores.TabStop = false;
            this.ventiladores.Text = "Ventiladores";
            // 
            // ventilador1RadioBtn
            // 
            this.ventilador1RadioBtn.AutoSize = true;
            this.ventilador1RadioBtn.Location = new System.Drawing.Point(282, 38);
            this.ventilador1RadioBtn.Name = "ventilador1RadioBtn";
            this.ventilador1RadioBtn.Size = new System.Drawing.Size(81, 17);
            this.ventilador1RadioBtn.TabIndex = 2;
            this.ventilador1RadioBtn.TabStop = true;
            this.ventilador1RadioBtn.Text = "Ventilador 1";
            this.ventilador1RadioBtn.UseVisualStyleBackColor = true;
            this.ventilador1RadioBtn.CheckedChanged += new System.EventHandler(this.ventilador1_CheckedChanged);
            // 
            // ventilador0RadioBtn
            // 
            this.ventilador0RadioBtn.AutoSize = true;
            this.ventilador0RadioBtn.Location = new System.Drawing.Point(54, 38);
            this.ventilador0RadioBtn.Name = "ventilador0RadioBtn";
            this.ventilador0RadioBtn.Size = new System.Drawing.Size(81, 17);
            this.ventilador0RadioBtn.TabIndex = 0;
            this.ventilador0RadioBtn.TabStop = true;
            this.ventilador0RadioBtn.Text = "Ventilador 0";
            this.ventilador0RadioBtn.UseVisualStyleBackColor = true;
            this.ventilador0RadioBtn.CheckedChanged += new System.EventHandler(this.ventilador0_CheckedChanged);
            // 
            // potenciaVentiladorlbl0
            // 
            this.potenciaVentiladorlbl0.AutoSize = true;
            this.potenciaVentiladorlbl0.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.potenciaVentiladorlbl0.Location = new System.Drawing.Point(25, 9);
            this.potenciaVentiladorlbl0.Name = "potenciaVentiladorlbl0";
            this.potenciaVentiladorlbl0.Size = new System.Drawing.Size(242, 25);
            this.potenciaVentiladorlbl0.TabIndex = 2;
            this.potenciaVentiladorlbl0.Text = "Potencia Ventilador 0 %";
            this.potenciaVentiladorlbl0.Click += new System.EventHandler(this.label1_Click_1);
            // 
            // potenciaVentilador0
            // 
            this.potenciaVentilador0.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.potenciaVentilador0.Location = new System.Drawing.Point(273, 8);
            this.potenciaVentilador0.Name = "potenciaVentilador0";
            this.potenciaVentilador0.Size = new System.Drawing.Size(120, 26);
            this.potenciaVentilador0.TabIndex = 3;
            this.potenciaVentilador0.ValueChanged += new System.EventHandler(this.potenciaVentilador0_ValueChanged);
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
            // enviar_secuencia_btn
            // 
            this.enviar_secuencia_btn.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.enviar_secuencia_btn.Location = new System.Drawing.Point(232, 295);
            this.enviar_secuencia_btn.Name = "enviar_secuencia_btn";
            this.enviar_secuencia_btn.Size = new System.Drawing.Size(116, 47);
            this.enviar_secuencia_btn.TabIndex = 4;
            this.enviar_secuencia_btn.Text = "Enviar Secuencia";
            this.enviar_secuencia_btn.UseVisualStyleBackColor = true;
            this.enviar_secuencia_btn.Click += new System.EventHandler(this.enviar_btn_Click);
            // 
            // serial_select
            // 
            this.serial_select.FormattingEnabled = true;
            this.serial_select.Location = new System.Drawing.Point(30, 309);
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
            this.temperatura_btn.Click += new System.EventHandler(this.temperatura_btn_Click);
            // 
            // potenciaVentiladorlbl1
            // 
            this.potenciaVentiladorlbl1.AutoSize = true;
            this.potenciaVentiladorlbl1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.potenciaVentiladorlbl1.Location = new System.Drawing.Point(25, 46);
            this.potenciaVentiladorlbl1.Name = "potenciaVentiladorlbl1";
            this.potenciaVentiladorlbl1.Size = new System.Drawing.Size(242, 25);
            this.potenciaVentiladorlbl1.TabIndex = 11;
            this.potenciaVentiladorlbl1.Text = "Potencia Ventilador 1 %";
            // 
            // potenciaVentilador1
            // 
            this.potenciaVentilador1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.potenciaVentilador1.Location = new System.Drawing.Point(273, 48);
            this.potenciaVentilador1.Name = "potenciaVentilador1";
            this.potenciaVentilador1.Size = new System.Drawing.Size(120, 26);
            this.potenciaVentilador1.TabIndex = 12;
            this.potenciaVentilador1.ValueChanged += new System.EventHandler(this.potenciaVentilador1_ValueChanged);
            // 
            // enviar_potencia_btn
            // 
            this.enviar_potencia_btn.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.enviar_potencia_btn.Location = new System.Drawing.Point(361, 295);
            this.enviar_potencia_btn.Name = "enviar_potencia_btn";
            this.enviar_potencia_btn.Size = new System.Drawing.Size(116, 47);
            this.enviar_potencia_btn.TabIndex = 13;
            this.enviar_potencia_btn.Text = "Enviar Potencia";
            this.enviar_potencia_btn.UseVisualStyleBackColor = true;
            this.enviar_potencia_btn.Click += new System.EventHandler(this.enviar_potencia_btn_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlDark;
            this.ClientSize = new System.Drawing.Size(510, 373);
            this.Controls.Add(this.enviar_potencia_btn);
            this.Controls.Add(this.potenciaVentilador1);
            this.Controls.Add(this.potenciaVentiladorlbl1);
            this.Controls.Add(this.temperatura_btn);
            this.Controls.Add(this.temperatura_input);
            this.Controls.Add(this.temperatura_label);
            this.Controls.Add(this.serial_select);
            this.Controls.Add(this.enviar_secuencia_btn);
            this.Controls.Add(this.SecuenciasGroup);
            this.Controls.Add(this.potenciaVentilador0);
            this.Controls.Add(this.potenciaVentiladorlbl0);
            this.Controls.Add(this.ventiladores);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Proyecto FSE";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ventiladores.ResumeLayout(false);
            this.ventiladores.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.potenciaVentilador0)).EndInit();
            this.SecuenciasGroup.ResumeLayout(false);
            this.SecuenciasGroup.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.temperatura_input)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.potenciaVentilador1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.GroupBox ventiladores;
        private System.Windows.Forms.RadioButton ventilador1RadioBtn;
        private System.Windows.Forms.RadioButton ventilador0RadioBtn;
        private System.Windows.Forms.Label potenciaVentiladorlbl0;
        private System.Windows.Forms.NumericUpDown potenciaVentilador0;
        private System.Windows.Forms.GroupBox SecuenciasGroup;
        private System.Windows.Forms.RadioButton secuencia4_Sel;
        private System.Windows.Forms.RadioButton secuencia2_Sel;
        private System.Windows.Forms.RadioButton secuencia_1Sel;
        private System.Windows.Forms.RadioButton secuencia3_Sel;
        private System.Windows.Forms.Button enviar_secuencia_btn;
        private System.Windows.Forms.ComboBox serial_select;
        private System.IO.Ports.SerialPort serialPort1;
        private System.Windows.Forms.Label temperatura_label;
        private System.Windows.Forms.NumericUpDown temperatura_input;
        private System.Windows.Forms.Button temperatura_btn;
        private System.Windows.Forms.Label potenciaVentiladorlbl1;
        private System.Windows.Forms.NumericUpDown potenciaVentilador1;
        private System.Windows.Forms.Button enviar_potencia_btn;
    }
}

