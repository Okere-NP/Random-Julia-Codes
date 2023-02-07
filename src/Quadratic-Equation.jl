function QuadEqua(a, b, c)
    # The Quadratic Equation Variables
    D = b^2 - 4*a*c
    root = (-b)/(2*a)

    if (D > 0)
        rs = sqrt(D)/(2*a); realside = round(rs, digits = 3)

        paf1, naf1 = (root + realside), (root - realside)
        println("\nx₁ = $(paf1)\n" * "x₂ = $(naf1)")

    elseif (D == 0)
        paf_naf = root
        println("x₍₁,₂₎ = $(paf_naf)")

    else
        imS = sqrt(D * -1)im/(2*a); imagside = round(imS, digits = 3)

        paf2, naf2 = (root + imagside), (root - imagside)
        println("\nx₁ = $(paf2)\n" * "x₂ = $(naf2)")
    end
end;

while true
    try
        println("\nEnter values:-")
        print("a: "); a = parse(Int, readline())
        print("b: "); b = parse(Int, readline())
        print("c: "); c = parse(Int, readline())
        
        QuadEqua(a, b, c)
    catch
        @warn "Enter a valid value"
        continue
    end
    
    print("\nDo you want to perform another operation (Y/N): ")
    operation = readline()

    if operation != "y" && uppercase(operation) != "Y"
        break
    end
end
