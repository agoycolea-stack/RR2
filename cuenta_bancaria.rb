class CuentaBancaria
  attr_accessor :banco, :numero_de_cuenta,:saldo

  def initialize(banco, numero_de_cuenta, saldo=0)
    @banco = banco
    @numero_de_cuenta = numero_de_cuenta
    @saldo = saldo
  end

  def transferir(monto, cuenta_banco)

    self.saldo -= monto
    cuenta_banco.saldo = cuenta_banco.saldo + monto
    puts "#{cuenta_banco.saldo}"
  end


end

cuenta1 = CuentaBancaria.new("Falaferia",123456789,10000000)
cuenta2 = CuentaBancaria.new("TioPiñiRoban3",123456789,0)

cuenta1.transferir(5000,cuenta2)