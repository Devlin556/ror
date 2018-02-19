class ThreeController < ApplicationController
  def index
    require 'digest/md5';

    @password = 'pas';

    @path = 'D:\Webservers\home\test\www\myfiles.txt';

    @stringWithWhitespace = '   string with    whitespace   ';

    @smiles = 'sdsad:(sdfsd;((';

    @five = 'C Днем Рождения';

    @six = 'html, <b>php</b>, js';

    len = Random.new.rand(25);

    alphabet = ('a'..'z').to_a;
    @password = '';

    (1 .. Random.new.rand(25) ).map {
      @password += alphabet[Random.new.rand(26)];
    } 
    
    @md5Pass = Digest::MD5.hexdigest(@password);

  end
end
