function QuadEqua(a, b, c)
    # The Quadratic Equation Variables
    D = b^2 - 4*a*c
    root = (-b)/(2*a)

    if (D > 0)
        rs = sqrt(D)/(2*a); realside = round(rs, digits = 3)

        paf1, naf1 = (root + realside), (root - realside)
        println("x₁ = $(paf1) and x₂ = $(naf1)")

    elseif (D == 0)
        paf_naf = root
        println("x₍₁,₂₎ = $(paf_naf)")

    else
        imS = sqrt(D * -1)im/(2*a); imagside = round(imS, digits = 3)

        paf2, naf2 = (root + imagside), (root - imagside)
        println("x₁ = $(paf2) and x₂ = $(naf2)")
    end
end
