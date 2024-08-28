struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(0u);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), vec3<u32>(1u, 1u, 30882u), Struct_1(vec3<u32>(171002u, 4294967295u, 16952u)), false, Struct_1(vec3<u32>(11765u, 23145u, 80261u))), vec2<i32>(-23036i, -37822i), Struct_2(Struct_1(vec3<u32>(72478u, 22561u, 9822u)), vec3<u32>(33199u, 1u, 28635u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), true, Struct_1(vec3<u32>(19380u, 79668u, 12092u))), 1000f);

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 24954u, 20938u)), vec3<u32>(0u, 5007u, 0u), Struct_1(vec3<u32>(1u, 1u, 0u)), true, Struct_1(vec3<u32>(46591u, 1u, 4294967295u))), vec2<i32>(-696i, -69288i), Struct_2(Struct_1(vec3<u32>(40387u, 1u, 4294967295u)), vec3<u32>(56598u, 1u, 47404u), Struct_1(vec3<u32>(17186u, 4294967295u, 1u)), false, Struct_1(vec3<u32>(41238u, 34274u, 0u))), 846f), Struct_3(Struct_2(Struct_1(vec3<u32>(19175u, 0u, 1u)), vec3<u32>(11925u, 0u, 0u), Struct_1(vec3<u32>(4294967295u, 1u, 0u)), true, Struct_1(vec3<u32>(4294967295u, 0u, 8830u))), vec2<i32>(-23833i, 2147483647i), Struct_2(Struct_1(vec3<u32>(1u, 52852u, 1u)), vec3<u32>(19804u, 1u, 23973u), Struct_1(vec3<u32>(0u, 4294967295u, 49593u)), true, Struct_1(vec3<u32>(1u, 33445u, 0u))), 2429f), Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 1u, 76925u)), vec3<u32>(1u, 0u, 4294967295u), Struct_1(vec3<u32>(49057u, 22318u, 28082u)), true, Struct_1(vec3<u32>(77856u, 1u, 1u))), vec2<i32>(0i, 12769i), Struct_2(Struct_1(vec3<u32>(3722u, 1u, 0u)), vec3<u32>(17767u, 32899u, 0u), Struct_1(vec3<u32>(0u, 1u, 85373u)), false, Struct_1(vec3<u32>(100552u, 1216u, 53672u))), -1000f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 65747u)), vec3<u32>(5111u, 4294967295u, 4294967295u), Struct_1(vec3<u32>(12764u, 4294967295u, 749u)), true, Struct_1(vec3<u32>(55548u, 20106u, 3870u))), vec2<i32>(-1i, -6645i), Struct_2(Struct_1(vec3<u32>(2022u, 52287u, 7325u)), vec3<u32>(45985u, 28281u, 4294967295u), Struct_1(vec3<u32>(37161u, 4682u, 51495u)), false, Struct_1(vec3<u32>(44608u, 0u, 1u))), -158f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u)), vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec3<u32>(1u, 31008u, 1u)), true, Struct_1(vec3<u32>(4294967295u, 10069u, 704u))), vec2<i32>(10329i, -1i), Struct_2(Struct_1(vec3<u32>(1u, 19219u, 25921u)), vec3<u32>(10317u, 1u, 9916u), Struct_1(vec3<u32>(15702u, 33756u, 1u)), true, Struct_1(vec3<u32>(21171u, 4294967295u, 1u))), 197f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 118027u, 0u)), vec3<u32>(0u, 1u, 34029u), Struct_1(vec3<u32>(0u, 4294967295u, 17085u)), false, Struct_1(vec3<u32>(4294967295u, 41942u, 1u))), vec2<i32>(2147483647i, -20311i), Struct_2(Struct_1(vec3<u32>(1u, 11151u, 26846u)), vec3<u32>(35893u, 4294967295u, 1u), Struct_1(vec3<u32>(60982u, 35270u, 39295u)), false, Struct_1(vec3<u32>(0u, 1u, 44553u))), -735f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 112336u, 11604u)), vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(vec3<u32>(15013u, 89826u, 58476u)), true, Struct_1(vec3<u32>(18347u, 81358u, 23665u))), vec2<i32>(-1i, 2147483647i), Struct_2(Struct_1(vec3<u32>(4294967295u, 7932u, 4294967295u)), vec3<u32>(15951u, 55156u, 1u), Struct_1(vec3<u32>(1u, 26640u, 53523u)), false, Struct_1(vec3<u32>(34596u, 0u, 4294967295u))), 251f), Struct_3(Struct_2(Struct_1(vec3<u32>(4134u, 0u, 35973u)), vec3<u32>(60818u, 67549u, 35740u), Struct_1(vec3<u32>(1u, 5485u, 1u)), true, Struct_1(vec3<u32>(2943u, 4294967295u, 4294967295u))), vec2<i32>(-56697i, -1i), Struct_2(Struct_1(vec3<u32>(4294967295u, 16398u, 8628u)), vec3<u32>(40516u, 0u, 0u), Struct_1(vec3<u32>(19401u, 37366u, 0u)), true, Struct_1(vec3<u32>(0u, 4294967295u, 56886u))), -830f), Struct_3(Struct_2(Struct_1(vec3<u32>(40908u, 1u, 0u)), vec3<u32>(1u, 58320u, 1414u), Struct_1(vec3<u32>(0u, 4294967295u, 1u)), true, Struct_1(vec3<u32>(28567u, 0u, 1u))), vec2<i32>(i32(-2147483648), 0i), Struct_2(Struct_1(vec3<u32>(0u, 1u, 1u)), vec3<u32>(73744u, 0u, 4294967295u), Struct_1(vec3<u32>(37288u, 1u, 0u)), true, Struct_1(vec3<u32>(0u, 12934u, 8885u))), -144f), Struct_3(Struct_2(Struct_1(vec3<u32>(44849u, 90400u, 34u)), vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec3<u32>(1u, 31951u, 21249u)), false, Struct_1(vec3<u32>(4294967295u, 1u, 38651u))), vec2<i32>(1i, 20751i), Struct_2(Struct_1(vec3<u32>(59277u, 27288u, 0u)), vec3<u32>(33956u, 1u, 18167u), Struct_1(vec3<u32>(69000u, 0u, 1u)), false, Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u))), 673f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 42330u, 123878u)), vec3<u32>(4294967295u, 16755u, 4294967295u), Struct_1(vec3<u32>(28599u, 4294967295u, 34022u)), true, Struct_1(vec3<u32>(1u, 1u, 19612u))), vec2<i32>(1i, 14015i), Struct_2(Struct_1(vec3<u32>(4294967295u, 13433u, 57980u)), vec3<u32>(50153u, 4294967295u, 23365u), Struct_1(vec3<u32>(29002u, 0u, 40022u)), true, Struct_1(vec3<u32>(41368u, 1u, 0u))), 663f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 1u)), vec3<u32>(1u, 36346u, 19709u), Struct_1(vec3<u32>(1u, 0u, 1u)), false, Struct_1(vec3<u32>(56720u, 1u, 10806u))), vec2<i32>(2147483647i, -16547i), Struct_2(Struct_1(vec3<u32>(1u, 19128u, 1u)), vec3<u32>(18292u, 4294967295u, 34336u), Struct_1(vec3<u32>(5053u, 1u, 1u)), true, Struct_1(vec3<u32>(33313u, 49089u, 1u))), -1266f), Struct_3(Struct_2(Struct_1(vec3<u32>(69857u, 0u, 1u)), vec3<u32>(227u, 29121u, 1u), Struct_1(vec3<u32>(23894u, 53487u, 1u)), false, Struct_1(vec3<u32>(47047u, 4294967295u, 0u))), vec2<i32>(0i, 1i), Struct_2(Struct_1(vec3<u32>(4294967295u, 69880u, 1u)), vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(vec3<u32>(37692u, 1u, 51776u)), false, Struct_1(vec3<u32>(4294967295u, 1u, 1u))), 581f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 32323u, 4294967295u)), vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec3<u32>(1u, 34402u, 27180u)), false, Struct_1(vec3<u32>(1u, 4294967295u, 1u))), vec2<i32>(27234i, -16822i), Struct_2(Struct_1(vec3<u32>(25641u, 0u, 4294967295u)), vec3<u32>(0u, 1u, 43325u), Struct_1(vec3<u32>(10360u, 4280u, 55238u)), false, Struct_1(vec3<u32>(27831u, 70301u, 1988u))), -1193f), Struct_3(Struct_2(Struct_1(vec3<u32>(21878u, 35117u, 22663u)), vec3<u32>(16360u, 8972u, 27046u), Struct_1(vec3<u32>(0u, 1u, 0u)), false, Struct_1(vec3<u32>(1u, 88495u, 53908u))), vec2<i32>(35685i, 52419i), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(vec3<u32>(19093u, 1u, 0u)), true, Struct_1(vec3<u32>(78358u, 57067u, 4294967295u))), -104f), Struct_3(Struct_2(Struct_1(vec3<u32>(12800u, 4294967295u, 677u)), vec3<u32>(81096u, 0u, 28564u), Struct_1(vec3<u32>(88486u, 48423u, 0u)), false, Struct_1(vec3<u32>(7282u, 25234u, 23877u))), vec2<i32>(2147483647i, 1i), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 0u)), vec3<u32>(0u, 40585u, 1u), Struct_1(vec3<u32>(0u, 1u, 5891u)), false, Struct_1(vec3<u32>(4294967295u, 1u, 0u))), -1000f), Struct_3(Struct_2(Struct_1(vec3<u32>(1787u, 0u, 1u)), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(vec3<u32>(22006u, 4294967295u, 49400u)), false, Struct_1(vec3<u32>(54881u, 1751u, 0u))), vec2<i32>(42743i, 0i), Struct_2(Struct_1(vec3<u32>(1u, 1u, 114065u)), vec3<u32>(0u, 37640u, 21723u), Struct_1(vec3<u32>(23449u, 6029u, 0u)), false, Struct_1(vec3<u32>(16183u, 28512u, 4294967295u))), 1000f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 59498u)), vec3<u32>(0u, 1u, 3311u), Struct_1(vec3<u32>(75785u, 4294967295u, 1u)), true, Struct_1(vec3<u32>(0u, 0u, 4294967295u))), vec2<i32>(2147483647i, 16225i), Struct_2(Struct_1(vec3<u32>(24970u, 0u, 13964u)), vec3<u32>(64735u, 0u, 115799u), Struct_1(vec3<u32>(4294967295u, 38632u, 4294967295u)), true, Struct_1(vec3<u32>(4294967295u, 8174u, 1u))), 1000f), Struct_3(Struct_2(Struct_1(vec3<u32>(45501u, 4294967295u, 11405u)), vec3<u32>(4294967295u, 40826u, 1u), Struct_1(vec3<u32>(0u, 1u, 1u)), false, Struct_1(vec3<u32>(0u, 4294967295u, 0u))), vec2<i32>(0i, 0i), Struct_2(Struct_1(vec3<u32>(37738u, 4294967295u, 80916u)), vec3<u32>(12160u, 4294967295u, 43014u), Struct_1(vec3<u32>(31505u, 4294967295u, 49951u)), false, Struct_1(vec3<u32>(1u, 0u, 0u))), -841f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 11441u, 26192u)), vec3<u32>(1u, 21070u, 5482u), Struct_1(vec3<u32>(4294967295u, 1u, 14375u)), false, Struct_1(vec3<u32>(0u, 68069u, 37553u))), vec2<i32>(i32(-2147483648), 2147483647i), Struct_2(Struct_1(vec3<u32>(0u, 83578u, 19861u)), vec3<u32>(0u, 7597u, 62575u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), true, Struct_1(vec3<u32>(3651u, 4294967295u, 4294967295u))), 770f), Struct_3(Struct_2(Struct_1(vec3<u32>(14927u, 19564u, 7921u)), vec3<u32>(0u, 80202u, 1u), Struct_1(vec3<u32>(24423u, 4294967295u, 57936u)), false, Struct_1(vec3<u32>(67122u, 12342u, 4294967295u))), vec2<i32>(i32(-2147483648), -1i), Struct_2(Struct_1(vec3<u32>(31802u, 0u, 1u)), vec3<u32>(1u, 28879u, 0u), Struct_1(vec3<u32>(6212u, 34852u, 53731u)), false, Struct_1(vec3<u32>(42499u, 1u, 94745u))), 1812f), Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 96442u, 1u)), vec3<u32>(28700u, 1u, 1u), Struct_1(vec3<u32>(15128u, 85266u, 1u)), true, Struct_1(vec3<u32>(0u, 35005u, 2913u))), vec2<i32>(-2942i, -25727i), Struct_2(Struct_1(vec3<u32>(35291u, 17632u, 37486u)), vec3<u32>(17352u, 1u, 0u), Struct_1(vec3<u32>(0u, 1u, 21978u)), true, Struct_1(vec3<u32>(14037u, 12041u, 18440u))), -1061f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u)), vec3<u32>(0u, 0u, 1u), Struct_1(vec3<u32>(30335u, 52757u, 32496u)), true, Struct_1(vec3<u32>(0u, 105326u, 4294967295u))), vec2<i32>(2147483647i, -1i), Struct_2(Struct_1(vec3<u32>(38134u, 7331u, 0u)), vec3<u32>(2150u, 4294967295u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 35349u, 0u)), true, Struct_1(vec3<u32>(4294967295u, 18341u, 1u))), -363f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 13449u, 50541u)), vec3<u32>(1u, 2919u, 0u), Struct_1(vec3<u32>(0u, 63862u, 4294967295u)), false, Struct_1(vec3<u32>(0u, 0u, 50064u))), vec2<i32>(-1i, 1i), Struct_2(Struct_1(vec3<u32>(1u, 16476u, 16197u)), vec3<u32>(4294967295u, 40227u, 1u), Struct_1(vec3<u32>(1u, 45034u, 396u)), true, Struct_1(vec3<u32>(28091u, 72310u, 34195u))), 577f));

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = global2[_wgslsmith_index_u32(0u, 24u)];
    var var_0 = global2[_wgslsmith_index_u32(global1.c.b.x, 24u)];
    let var_1 = var_0.b;
    var var_2 = 1u;
    let var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.d.x, -416i, var_1.x), vec3<i32>(2147483647i, u_input.d.x, u_input.d.x)), vec3<i32>(0i, var_0.b.x, 1i)), reverseBits(-(vec3<i32>(1i, 21374i, 11i) ^ ~vec3<i32>(-7412i, -14842i, global1.b.x))));
    return abs(abs(~11851u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: f32) -> vec3<f32> {
    let var_0 = firstTrailingBit(reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.b.x, global0[_wgslsmith_index_u32(0u, 1u)]), vec2<u32>(global0[_wgslsmith_index_u32(73890u, 1u)], 41525u)) | global0[_wgslsmith_index_u32(1u, 1u)], ~global1.a.b.x)));
    let var_1 = Struct_3(global1.a, vec2<i32>(countOneBits(global1.b.x), global1.b.x), global1.c, _wgslsmith_f_op_f32(f32(-1f) * -731f));
    let var_2 = vec3<u32>(40010u, 0u, global0[_wgslsmith_index_u32(~(~(~(arg_0.a.x & 4294967295u))), 1u)]);
    global2 = array<Struct_3, 24>();
    global3 = select(!arg_1.xz, vec2<bool>(var_1.c.d, global1.a.d), select(!arg_1.yz, arg_2, arg_2));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2071f) * _wgslsmith_f_op_f32(f32(-1f) * -866f)), 444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.d)) + _wgslsmith_f_op_f32(select(arg_3, 222f, arg_1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.d, 729f, 1000f))))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(0u, 24u)];
    var var_1 = -2147483647i;
    let var_2 = var_0.c;
    global3 = arg_0.yz;
    var var_3 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<u32>(arg_2.a.x, func_3(Struct_1(var_2.a.a)), var_2.a.a.x)), vec3<bool>(true, _wgslsmith_div_f32(174f, 1f) == _wgslsmith_f_op_f32(-var_0.d), false), arg_0.zz, -653f));
    return _wgslsmith_add_i32(~(-_wgslsmith_clamp_i32(arg_1, 20411i, global1.b.x) << (~(~global0[_wgslsmith_index_u32(var_2.a.a.x, 1u)]) % 32u)), -36592i);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> vec2<bool> {
    global1 = global2[_wgslsmith_index_u32(u_input.e.x, 24u)];
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~firstTrailingBit(abs(vec3<u32>(74385u, global0[_wgslsmith_index_u32(79597u, 1u)], 1u))), global1.a.a.a), 24u)];
    return vec2<bool>(true, var_0.a.d);
}

fn func_1() -> Struct_1 {
    global3 = select(select(vec2<bool>(global3.x, true), vec2<bool>(true, all(!vec3<bool>(true, global1.a.d, global1.a.d))), false), func_5(4294967295u, global1.d, vec3<i32>(u_input.d.x, min(func_2(vec3<bool>(global3.x, global3.x, global1.c.d), 1i, global1.c.a), i32(-1i) * -25606i), 59110i)), vec2<bool>(true, global1.a.d));
    let var_0 = global1.a;
    let var_1 = Struct_2(Struct_1(~vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(global1.c.b, vec3<u32>(global1.a.b.x, global1.a.e.a.x, 0u)), ~u_input.e.x)), vec3<u32>(4891u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global1.a.c.a.x, 1u)], min(~var_0.c.a.x, 0u)), abs(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, ~0u))), Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.b.x), ~global1.a.c.a)), select(any(select(select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(global3.x, var_0.d), vec2<bool>(var_0.d, global1.a.d)), vec2<bool>(global3.x, global1.c.d), !vec2<bool>(true, var_0.d))), !func_5(1u & u_input.e.x, global1.d, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, global1.b.x), vec3<i32>(global1.b.x, u_input.d.x, global1.b.x))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.d)))), Struct_1(vec3<u32>(var_0.c.a.x, global0[_wgslsmith_index_u32(~(~u_input.e.x), 1u)], ~global1.a.b.x)));
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    return Struct_1(~var_0.b);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(1u, 24u)];
    var var_1 = vec3<f32>(-586f, -772f, 715f);
    var var_2 = Struct_2(func_1(), vec3<u32>(firstLeadingBit(_wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(u_input.e.x, arg_3), ~global1.a.a.a.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(9712u, 19665u), var_0.a.a.a.xy << (u_input.b % vec2<u32>(32u))), ~vec2<u32>(24263u, global0[_wgslsmith_index_u32(1u, 1u)])), select(global1.a.c.a.x, ~(~0u), arg_2)), func_1(), true, global1.c.e);
    var var_3 = global1.a;
    let var_4 = abs(-(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_1, global1.b.x, -7684i, global1.b.x)), vec4<i32>(var_0.b.x, -44070i, var_0.b.x, var_0.b.x) << (vec4<u32>(25791u, 1u, 78474u, arg_0.a.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 14988i, 27282i, var_0.b.x), vec4<i32>(global1.b.x, -2147483647i, 0i, global1.b.x))) | -firstTrailingBit(vec4<i32>(u_input.c.x, var_0.b.x, -19316i, -2147483647i))));
    return 22091u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstTrailingBit(vec3<u32>(abs(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(global1.a.e.a.x, 1u)])), 0u, _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(global1.c.c.a.x, 1u)]))));
    let var_1 = abs(_wgslsmith_sub_u32(80511u, func_6(func_1(), ~_wgslsmith_mod_i32(2147483647i, 7059i), global1.d >= -128f, u_input.e.x)));
    let var_2 = Struct_3(global1.c, ~global1.b & firstLeadingBit(_wgslsmith_mult_vec2_i32(min(vec2<i32>(global1.b.x, 0i), vec2<i32>(0i, -2147483647i)), reverseBits(u_input.c))), global1.a, 1f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d + -1890f), _wgslsmith_f_op_f32(-global1.d))))));
    global3 = vec2<bool>(any(!(!(!vec2<bool>(global1.c.d, global3.x)))), var_2.c.d & select(true, global3.x, all(select(vec4<bool>(global3.x, var_2.a.d, true, global1.c.d), vec4<bool>(false, true, true, var_2.c.d), var_2.a.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(~abs(vec4<i32>(1i, u_input.c.x, u_input.c.x, 2147483647i)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-50653i, var_2.b.x, -3921i, u_input.d.x), vec4<i32>(2147483647i, 23764i, -1i, -30070i)), u_input.c.x >> (u_input.a % 32u)), max(0i, _wgslsmith_div_i32(var_2.b.x, 0i)), global1.b.x, u_input.c.x)));
}

