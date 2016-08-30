class Pictify
	def self.true_pixels
    PICTURE.split(//).select { |pixel| NON_PIXELS.include? pixel }.uniq
  end

  # Call me maybe??
  def self.do_magic! text
    msg = text.gsub(/\s/, '_')
    msg << msg while PICTURE.length > msg.length
    
    PICTURE.each_char.map do |pixel| 
      NON_PIXELS.include?(pixel) ? pixel : msg.slice!(0)
    end.join
  end

  NON_PIXELS = [" ", "\n", "\t", "\T"]
  PICTURE = 
<<-PIC
                                       _o=<&&&&>=vo__
                                     ?/$="'"  """^=<&&R$~
                                   .&?/'              `""$$,
                                 ,/?/'       /-"^\.   .-=~\#,
                               ,/?/'        /\|6?`|  |<<q- ,??
                             ./?/'          `\??dp'  `$??,/|,i\.
                            ,*??              `"       ""' `b'\\$$&&\.
                           ,Td'                             `&:`#' "&7, .__
               ._.         H||            .                  `*\#,  `&$$S:7|
              |????        M|,         ,--&|\                  `&?b   ""://'
     .,o--vo\,PJ'H|,       H|L         ``'"H?b                 ,-`?\   ,&&'
    ,P?-""^==:=' ||b       `L9,            `H`&,               |?:!|| ,P&
    `b?\          9/?       ??H,            |L *b.,'"\          :$:&  H]'
     `b$\o.        */\.      ??*b.           9.  `\\:(|     .,/$6d'  |\#
       ``\Z\\       `\7b.    ,To?&b.          \(\:-.-S:-~=-"'',P     MJ'
          `\?*b       ?&&\.  d\|<_ `\o_       `&&M\:?-+#:>\.|,&'    |LT
            `\?\\      ``\?\#|/`4RM|:~:$=v\.    `$k<MR&MF$$?&J'     HJ'
              `\?\.       `\#/$$$&v!-?&<?::P\\    `"^-^-?b=Sd'     |\#
  _o~=~$&$>==v\.??\,         `\# `\$$'9P':-?>:"=\ooo/=/$$~?$\     ,R/
./$?~^'"""""`"\\&&< ?b               "`~$P:c: /v==v,#::?<<&:'T|   d$/'
:.             ""=o/&.                ,P    o&Z'`'.##| |MH\|| ,$$'
=:$H&=\.           `"b?b.             .&'    96*.-v.:?/`\==$&?$&*'
    `^$?\.           `*&*\\          ,P       ?~-~'      |$$S>'
       `\7b           ,T/\&&\.      d?                    |T'
         \/b         .&J'  `\>     d'                      T,
          &`L        /||          ?|                        ?,
          ||9       J\#           H                          ?,
           H||     ||/           ||                           9,
           ||M     PJ'           ||                           `H
            bT,   ||T            ||                            ||
            T/L   H||            `b                             M
             &T,  M|              9,                            9
             `L9, M|              `&.                           |
              `?*,9||              `b                           d
               `\?(|H.              `b                          ?b
                `*\ `&.              `\.                       J*|b
                  `\o/\.              `&.                     ,P 9/L
                     9:&.              `9\                   ??  `H9.
                      *?9\               `b                .&'    |/|
                       `|`\.              `L             ./'      `|H
                       d\/qZbo.            M          .,='        ,|T
              ./~&$$?=??/' `"=H$|          H       .o=''          J\|
             ,*/''  `\?        `'        ./?ov=="*b9,            ,$P
            ,Td                         ,$$'`'    ?|M           ,$/
            J||                       ,$?/         M||         ?$/
            M||         |>\.     ._,~9$''          T||        d'M.
            9`|         `Hi:R&:&&6&="'           ./$J|       `^"\Z\.
            ||M          `=Z\:""                 H|T"            `&H&>v_
             bT,    ..   v,?|\                   M||               .:Z|&\.
             ||H  _oZ??v~>`d9H|                  `?*\              ?$ `#'H
              9/L||1+ "HH  .$/                    `bZ&\       ,o\&|}6| &/'
               \?$.:?ooo/*""'                       `\$$b_   |\9|/|?:./'
                `"""'  `'                              `~?&qo:?:',p#/'
                                                          "^~<:>/"
PIC
end

puts Pictify.do_magic!(ARGV.first || 'Ruby is awsummm')
