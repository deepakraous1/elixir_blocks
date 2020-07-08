defmodule BloomFilter do

    #Init Bloom Filter set to all 00000000
    def init do
        ethBloomLst = "00000000" 
                    |>hash_function
                    |>first_order_3bytes
                    |>hash_function
    end

    #Add to Bloom
    def add(data) do
        hash(data)
    end
    
    #Bloom Filter Length
    def hash_function(data) do
        data 
        |> :keccakf1600.sha3_256
        |> Base.encode16(case: :lower)
    end
  
    #First order 3bytes
    def first_order_3bytes(hashed_data) do
        hashed_data 
        |> String.slice(0..5)
    end
  
    #First order 3bytes
    def has(data) do
        data
    end
    
    def xor(hash) do
        hash
    end

    defp max() do
        2048
    end
  
    defp hash(data) do
        data
    end

end