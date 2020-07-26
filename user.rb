require_relative './cuenta_bancaria.rb'

class Usuario

attr_accessor :nombre, 
              :cuentas

  def initialize(nombre,cuentas=[])

    @nombre=nombre
    @cuentas = cuentas

  end

  def saldo_total
    puts @cuentas.map { |cuenta| cuenta.saldo }.sum
  end
end

cuentas_bco = [CuentaBancaria.new("Falaferia",123456789,100),CuentaBancaria.new("Shantander",123547899,600),
CuentaBancaria.new("BancoChantilli",5555555,150),CuentaBancaria.new("Itaonda",6666666,50),
CuentaBancaria.new("Arrayan",99999990,100)]

user1 = Usuario.new("Catalina",cuentas_bco)

user1.saldo_total
