class KTerminus < Formula                                                                                                    
    desc "Seamless multi-machine terminal access via Tailscale"                                                                
    homepage "https://github.com/Adiaslow/kTerminus"                                                                           
    version "0.1.0"                                                                                                            
    license "MIT"                                                                                                              
                                                                                                                               
    on_macos do                                                                                                                
      if Hardware::CPU.arm?                                                                                                    
        url "https://github.com/Adiaslow/kTerminus/releases/download/v#{version}/k-terminus-aarch64-apple-darwin.tar.gz"       
        sha256 "PLACEHOLDER"                                                                                                   
      else                                                                                                                     
        url "https://github.com/Adiaslow/kTerminus/releases/download/v#{version}/k-terminus-x86_64-apple-darwin.tar.gz"        
        sha256 "PLACEHOLDER"                                                                                                   
      end                                                                                                                      
    end                                                                                                                        
                                                                                                                               
    on_linux do                                                                                                                
      url "https://github.com/Adiaslow/kTerminus/releases/download/v#{version}/k-terminus-x86_64-unknown-linux-gnu.tar.gz"     
      sha256 "PLACEHOLDER"                                                                                                     
    end                                                                                                                        
                                                                                                                               
    def install                                                                                                                
      bin.install "k-terminus"                                                                                                 
    end                                                                                                                        
                                                                                                                               
    test do                                                                                                                    
      system "#{bin}/k-terminus", "--version"                                                                                  
    end                                                                                                                        
  end
