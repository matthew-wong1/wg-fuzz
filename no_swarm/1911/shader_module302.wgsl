struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(-998f, true, 29642u, Struct_2(Struct_1(vec4<u32>(0u, 40364u, 4294967295u, 1u), 506f, 1u, -995f), vec2<i32>(i32(-2147483648), 3722i), vec2<u32>(12167u, 13811u), vec3<u32>(4294967295u, 18142u, 0u), Struct_1(vec4<u32>(4294967295u, 1u, 21189u, 1u), 140f, 13659u, -1280f)), vec3<i32>(0i, 2147483647i, 35247i)), Struct_4(1265f, false, 1u, Struct_2(Struct_1(vec4<u32>(0u, 5183u, 44016u, 1u), 1568f, 66014u, -571f), vec2<i32>(0i, 0i), vec2<u32>(11328u, 0u), vec3<u32>(1u, 1u, 43529u), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 1u), -777f, 11447u, 955f)), vec3<i32>(i32(-2147483648), i32(-2147483648), -22705i)), Struct_4(1000f, true, 0u, Struct_2(Struct_1(vec4<u32>(1u, 27224u, 4294967295u, 0u), -408f, 1u, 188f), vec2<i32>(0i, 2147483647i), vec2<u32>(88683u, 0u), vec3<u32>(1u, 10780u, 33460u), Struct_1(vec4<u32>(4294967295u, 1u, 34016u, 0u), -844f, 1u, 709f)), vec3<i32>(-17645i, 2147483647i, -35083i)), Struct_4(426f, false, 5686u, Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 0u), -281f, 4466u, -1000f), vec2<i32>(20486i, -1i), vec2<u32>(4294967295u, 7399u), vec3<u32>(0u, 39407u, 4005u), Struct_1(vec4<u32>(0u, 0u, 91055u, 31623u), -989f, 22298u, -242f)), vec3<i32>(1i, 0i, 2147483647i)), Struct_4(704f, false, 0u, Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 35416u, 0u), -2006f, 0u, -617f), vec2<i32>(-31250i, 26264i), vec2<u32>(1u, 79667u), vec3<u32>(40359u, 1u, 0u), Struct_1(vec4<u32>(57175u, 0u, 47902u, 0u), 1200f, 4294967295u, 633f)), vec3<i32>(35252i, 62550i, 1i)), Struct_4(556f, false, 0u, Struct_2(Struct_1(vec4<u32>(92762u, 0u, 4294967295u, 43033u), 923f, 1u, 1834f), vec2<i32>(62487i, 1i), vec2<u32>(1u, 1u), vec3<u32>(1u, 0u, 33576u), Struct_1(vec4<u32>(37240u, 94773u, 4294967295u, 4294967295u), 497f, 40592u, 239f)), vec3<i32>(-36859i, -9403i, -1i)), Struct_4(-730f, true, 0u, Struct_2(Struct_1(vec4<u32>(32017u, 4294967295u, 4294967295u, 0u), -382f, 0u, -1316f), vec2<i32>(-8766i, i32(-2147483648)), vec2<u32>(29788u, 15565u), vec3<u32>(29469u, 0u, 55976u), Struct_1(vec4<u32>(1789u, 36094u, 12933u, 38199u), 1499f, 0u, 2379f)), vec3<i32>(2147483647i, 24628i, -30188i)), Struct_4(2356f, true, 2323u, Struct_2(Struct_1(vec4<u32>(4294967295u, 60333u, 36534u, 27084u), -1617f, 0u, 1000f), vec2<i32>(i32(-2147483648), 1i), vec2<u32>(0u, 1u), vec3<u32>(1u, 59765u, 58475u), Struct_1(vec4<u32>(5212u, 59378u, 4294967295u, 63618u), 401f, 4294967295u, 902f)), vec3<i32>(2147483647i, 0i, -51419i)), Struct_4(545f, true, 33532u, Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), 1228f, 1u, -1000f), vec2<i32>(-40016i, 62285i), vec2<u32>(1u, 22575u), vec3<u32>(1u, 1u, 0u), Struct_1(vec4<u32>(1u, 11985u, 34609u, 70844u), 479f, 24277u, -2156f)), vec3<i32>(8636i, 15573i, 35918i)), Struct_4(947f, false, 20642u, Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 23972u, 17668u), -1161f, 60288u, -451f), vec2<i32>(-44959i, 57503i), vec2<u32>(1u, 57202u), vec3<u32>(84631u, 1u, 52659u), Struct_1(vec4<u32>(1u, 0u, 36319u, 1u), -1019f, 3337u, -1000f)), vec3<i32>(2147483647i, i32(-2147483648), 14432i)), Struct_4(-352f, false, 27196u, Struct_2(Struct_1(vec4<u32>(0u, 1u, 10928u, 9342u), 616f, 41220u, 1525f), vec2<i32>(0i, 1i), vec2<u32>(14724u, 0u), vec3<u32>(16415u, 4294967295u, 25040u), Struct_1(vec4<u32>(0u, 0u, 61093u, 31793u), -717f, 50369u, -188f)), vec3<i32>(2147483647i, 9040i, 33406i)), Struct_4(1946f, false, 1u, Struct_2(Struct_1(vec4<u32>(1u, 0u, 0u, 33336u), -656f, 4294967295u, -778f), vec2<i32>(-1i, 0i), vec2<u32>(1u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(vec4<u32>(45145u, 4294967295u, 4294967295u, 5220u), -510f, 31041u, 452f)), vec3<i32>(i32(-2147483648), -1i, 1i)), Struct_4(-118f, true, 0u, Struct_2(Struct_1(vec4<u32>(0u, 36783u, 21095u, 4294967295u), -368f, 1u, 382f), vec2<i32>(1i, 2147483647i), vec2<u32>(34250u, 31160u), vec3<u32>(47604u, 4294967295u, 0u), Struct_1(vec4<u32>(4294967295u, 0u, 13715u, 8042u), 1239f, 83955u, -2160f)), vec3<i32>(-1i, 9386i, 7175i)), Struct_4(1330f, true, 4294967295u, Struct_2(Struct_1(vec4<u32>(0u, 0u, 4294967295u, 39157u), 1110f, 4294967295u, 1360f), vec2<i32>(-1i, 0i), vec2<u32>(33209u, 4294967295u), vec3<u32>(22598u, 30320u, 2687u), Struct_1(vec4<u32>(19228u, 29432u, 4294967295u, 77806u), -1359f, 4294967295u, 307f)), vec3<i32>(13136i, 34492i, -80042i)), Struct_4(-2272f, false, 98141u, Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 74562u, 34015u), 1714f, 51686u, 152f), vec2<i32>(-1i, -1i), vec2<u32>(0u, 1u), vec3<u32>(1u, 4294967295u, 119432u), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 1u), 1000f, 52224u, -1000f)), vec3<i32>(8389i, -60077i, -5955i)), Struct_4(1165f, false, 0u, Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 39933u, 29213u), 472f, 4294967295u, 275f), vec2<i32>(-9876i, i32(-2147483648)), vec2<u32>(4294967295u, 24977u), vec3<u32>(1u, 78739u, 4294967295u), Struct_1(vec4<u32>(0u, 60365u, 1u, 4129u), 203f, 4294967295u, 371f)), vec3<i32>(-12409i, 17145i, i32(-2147483648))), Struct_4(-1844f, false, 26598u, Struct_2(Struct_1(vec4<u32>(1u, 6192u, 4294967295u, 0u), -414f, 22217u, -1829f), vec2<i32>(13005i, 30904i), vec2<u32>(75429u, 4294967295u), vec3<u32>(1u, 12525u, 13765u), Struct_1(vec4<u32>(6880u, 0u, 4294967295u, 107242u), -1690f, 16795u, -591f)), vec3<i32>(-25803i, 15512i, 0i)), Struct_4(-1284f, true, 109945u, Struct_2(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 39841u), -669f, 10079u, 1019f), vec2<i32>(9607i, 1i), vec2<u32>(4294967295u, 0u), vec3<u32>(1865u, 0u, 4294967295u), Struct_1(vec4<u32>(4294967295u, 6668u, 1u, 10761u), -686f, 74724u, -513f)), vec3<i32>(1919i, 43204i, i32(-2147483648))), Struct_4(391f, false, 60563u, Struct_2(Struct_1(vec4<u32>(12303u, 105451u, 36965u, 0u), 1456f, 52172u, -1448f), vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(21666u, 4294967295u), vec3<u32>(50904u, 15093u, 4294967295u), Struct_1(vec4<u32>(30194u, 56602u, 13255u, 28191u), -147f, 4294967295u, -490f)), vec3<i32>(-944i, 8947i, 2147483647i)), Struct_4(986f, true, 4294967295u, Struct_2(Struct_1(vec4<u32>(1056u, 4294967295u, 1u, 4294967295u), -161f, 1u, -988f), vec2<i32>(-28303i, 38371i), vec2<u32>(0u, 0u), vec3<u32>(17570u, 4294967295u, 24451u), Struct_1(vec4<u32>(0u, 4294967295u, 74378u, 0u), -1414f, 4294967295u, -628f)), vec3<i32>(2147483647i, 14715i, -21342i)), Struct_4(-753f, false, 78942u, Struct_2(Struct_1(vec4<u32>(58771u, 4294967295u, 7008u, 0u), 1372f, 1u, 1340f), vec2<i32>(1i, -2912i), vec2<u32>(49489u, 47006u), vec3<u32>(47724u, 0u, 65897u), Struct_1(vec4<u32>(34008u, 18457u, 69963u, 58480u), 1114f, 29129u, 409f)), vec3<i32>(-9198i, -1i, 9788i)), Struct_4(-350f, false, 0u, Struct_2(Struct_1(vec4<u32>(62740u, 20187u, 25998u, 5174u), 2820f, 2070u, -560f), vec2<i32>(53505i, 1i), vec2<u32>(19665u, 64115u), vec3<u32>(27725u, 4294967295u, 1u), Struct_1(vec4<u32>(4294967295u, 8206u, 17643u, 47654u), -994f, 75850u, 329f)), vec3<i32>(0i, -2092i, 24611i)), Struct_4(-854f, true, 23356u, Struct_2(Struct_1(vec4<u32>(1u, 54547u, 73354u, 22278u), -554f, 1u, -868f), vec2<i32>(-11916i, 1i), vec2<u32>(0u, 1u), vec3<u32>(4294967295u, 0u, 0u), Struct_1(vec4<u32>(25178u, 4847u, 3653u, 4294967295u), 207f, 88182u, 650f)), vec3<i32>(-48042i, 2147483647i, -26565i)), Struct_4(734f, false, 1u, Struct_2(Struct_1(vec4<u32>(36162u, 4294967295u, 0u, 32950u), 2076f, 0u, 598f), vec2<i32>(2147483647i, -1i), vec2<u32>(34344u, 28668u), vec3<u32>(63205u, 1u, 4294967295u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 30997u, 1991u), 1446f, 6922u, -612f)), vec3<i32>(0i, 2147483647i, -19253i)), Struct_4(-720f, false, 0u, Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 407u, 0u), 889f, 50347u, 1147f), vec2<i32>(-1i, -36017i), vec2<u32>(0u, 1u), vec3<u32>(103696u, 21734u, 69595u), Struct_1(vec4<u32>(4294967295u, 25558u, 4294967295u, 38687u), -1738f, 4294967295u, -1000f)), vec3<i32>(7658i, 2147483647i, 2147483647i)), Struct_4(748f, true, 47542u, Struct_2(Struct_1(vec4<u32>(92360u, 3333u, 1u, 0u), -363f, 0u, 452f), vec2<i32>(9805i, 0i), vec2<u32>(1u, 38312u), vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(vec4<u32>(4294967295u, 25295u, 36434u, 15434u), -1020f, 20485u, -190f)), vec3<i32>(2147483647i, 0i, 1i)), Struct_4(925f, true, 10533u, Struct_2(Struct_1(vec4<u32>(2782u, 10125u, 38600u, 5778u), 503f, 19713u, 254f), vec2<i32>(26472i, 1i), vec2<u32>(4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), Struct_1(vec4<u32>(13510u, 0u, 55088u, 37069u), -595f, 49156u, 636f)), vec3<i32>(0i, -22823i, -24541i)), Struct_4(165f, false, 36310u, Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 0u, 58748u), -469f, 19504u, -1587f), vec2<i32>(2147483647i, 2147483647i), vec2<u32>(86014u, 0u), vec3<u32>(4294967295u, 0u, 35107u), Struct_1(vec4<u32>(1u, 0u, 0u, 38487u), -207f, 0u, 450f)), vec3<i32>(-812i, i32(-2147483648), -33121i)), Struct_4(1640f, true, 29425u, Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 8261u, 1u), -434f, 13472u, 587f), vec2<i32>(i32(-2147483648), 1i), vec2<u32>(4294967295u, 0u), vec3<u32>(45702u, 45136u, 0u), Struct_1(vec4<u32>(1u, 1u, 18580u, 0u), -845f, 1u, 1043f)), vec3<i32>(0i, -26208i, -17608i)), Struct_4(-1238f, false, 50455u, Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), -968f, 36094u, -567f), vec2<i32>(18811i, 2147483647i), vec2<u32>(32782u, 17097u), vec3<u32>(21933u, 0u, 1u), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 1u), 154f, 23067u, -676f)), vec3<i32>(-1i, -43472i, i32(-2147483648))), Struct_4(182f, true, 1u, Struct_2(Struct_1(vec4<u32>(1u, 0u, 53641u, 4294967295u), -1749f, 13691u, 1000f), vec2<i32>(21081i, 2147483647i), vec2<u32>(0u, 21559u), vec3<u32>(95349u, 6654u, 51335u), Struct_1(vec4<u32>(0u, 4294967295u, 74000u, 4294967295u), -719f, 36140u, 562f)), vec3<i32>(33447i, 0i, 1i)), Struct_4(471f, false, 7255u, Struct_2(Struct_1(vec4<u32>(37538u, 1u, 15656u, 1u), 1236f, 22792u, -1765f), vec2<i32>(1i, -123215i), vec2<u32>(89371u, 9974u), vec3<u32>(112683u, 4294967295u, 69740u), Struct_1(vec4<u32>(4294967295u, 9375u, 4294967295u, 0u), -1073f, 0u, 474f)), vec3<i32>(49156i, -1i, 36981i)));

var<private> global2: f32 = 841f;

var<private> global3: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false));

var<private> global4: array<bool, 30>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec2<i32> {
    global4 = array<bool, 30>();
    global2 = _wgslsmith_f_op_f32(abs(-1000f));
    let var_0 = vec3<i32>(~(-u_input.b.x) >> (~(~21444u) % 32u), countOneBits(_wgslsmith_mod_i32(23327i, ~u_input.b.x)), 1i) ^ (firstTrailingBit(-vec3<i32>(global0.d.b.x, u_input.b.x, 2147483647i)) & global0.e);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, -1000f, arg_1.x))) * vec3<f32>(886f, _wgslsmith_f_op_f32(-392f - arg_1.x), -217f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a, arg_0, arg_0), vec3<f32>(global0.a, 462f, arg_1.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, 230f, global0.a))))))), vec3<f32>(global0.d.a.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 194f), _wgslsmith_f_op_f32(-1012f + -636f))), global0.a));
    var var_2 = Struct_2(Struct_1(abs(_wgslsmith_div_vec4_u32(global0.d.e.a, vec4<u32>(21606u, 0u, u_input.c, u_input.a)) << (global0.d.e.a % vec4<u32>(32u))), arg_0, 4294967295u, arg_0), ~vec2<i32>(firstTrailingBit(-30330i) & firstTrailingBit(15678i), -12671i), global0.d.d.yx & vec2<u32>(~_wgslsmith_clamp_u32(u_input.c, 27260u, global0.d.c.x), 40042u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 71772u, u_input.a), global0.d.d), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(20818u, 48276u, 875u, u_input.c) ^ vec4<u32>(1u, global0.c, u_input.c, u_input.a), global0.d.a.a & global0.d.e.a), _wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f), -1691f)), u_input.c >> (~8861u % 32u), arg_0));
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.b.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-26608i, -25150i), vec2<i32>(13913i, 2147483647i)))), vec2<i32>(_wgslsmith_mod_i32(22922i, u_input.b.x) >> (37145u % 32u), _wgslsmith_div_i32(-24752i, firstTrailingBit(var_2.b.x))), firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(var_2.b, vec2<i32>(-2147483647i, 17423i)), reverseBits(vec2<i32>(-1i, 0i))))) >> (vec2<u32>(4294967295u, 54015u) % vec2<u32>(32u));
}

fn func_2() -> Struct_1 {
    var var_0 = ~func_3(_wgslsmith_f_op_f32(step(global0.d.a.b, -928f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.d.e.d, -1352f))))));
    return global0.d.e;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> u32 {
    global4 = array<bool, 30>();
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(~(~6886u), arg_0.c), global0.c);
    global3 = array<vec4<bool>, 3>();
    let var_1 = func_2();
    var var_2 = ~vec2<u32>(~(~(~var_1.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(0u), _wgslsmith_mult_u32(0u, 2834u), 1u), ~abs(arg_0.a.xzz)));
    return abs(66688u);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: i32) -> StorageBuffer {
    var var_0 = arg_2;
    global3 = array<vec4<bool>, 3>();
    let var_1 = _wgslsmith_f_op_f32(-global0.a);
    global0 = global1[_wgslsmith_index_u32(u_input.a, 32u)];
    let var_2 = firstLeadingBit(min(_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(arg_0, arg_0, u_input.b.x, arg_2)), -vec4<i32>(arg_0, u_input.b.x, u_input.b.x, arg_2)), _wgslsmith_div_vec4_i32(-vec4<i32>(arg_0, u_input.b.x, u_input.b.x, -20783i), select(-vec4<i32>(-6367i, 2147483647i, -10343i, 1i), vec4<i32>(14804i, 0i, -2147483647i, arg_2), any(vec3<bool>(arg_1.x, global4[_wgslsmith_index_u32(global0.d.d.x, 30u)], global4[_wgslsmith_index_u32(26558u, 30u)]))))));
    return StorageBuffer(~(~0u), firstTrailingBit(-13850i), -172f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-global0.d.b.x, global0.e.x, -_wgslsmith_dot_vec3_i32(global0.e, vec3<i32>(9220i, u_input.b.x, 31813i))) | _wgslsmith_mod_vec3_i32(global0.e, vec3<i32>(_wgslsmith_clamp_i32(14607i, 0i, -1i), global0.d.b.x, _wgslsmith_div_i32(25843i, u_input.b.x))), max(global0.e, vec3<i32>(-u_input.b.x, _wgslsmith_div_i32(global0.e.x, global0.e.x), _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, -1i)) ^ -vec3<i32>(-1i, 1i, u_input.b.x)));
    global0 = global1[_wgslsmith_index_u32(global0.d.e.c, 32u)];
    global3 = array<vec4<bool>, 3>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(global0.d.a.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.d.e.d - 1386f), global0.d.a.b, any(!(!vec3<bool>(global0.b, false, false))))));
    global3 = array<vec4<bool>, 3>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-(~(-1i)), select(-3204i, 1i, select(global0.b, global4[_wgslsmith_index_u32(u_input.a, 30u)], true)), max(_wgslsmith_dot_vec3_i32(var_0, var_0), u_input.b.x), min(global0.d.b.x, var_0.x) << (func_1(Struct_1(vec4<u32>(global0.c, 1u, 44517u, u_input.c), -773f, u_input.a, global0.a), 51715u, global0.d.a, true) % 32u)), _wgslsmith_add_vec4_i32(countOneBits(min(vec4<i32>(u_input.b.x, global0.e.x, u_input.b.x, -1i), vec4<i32>(0i, var_0.x, 14206i, 2147483647i))), -(vec4<i32>(-3851i, -7851i, var_0.x, 0i) >> (vec4<u32>(global0.c, 33554u, 38680u, 64352u) % vec4<u32>(32u))))), vec2<bool>(any(select(global3[_wgslsmith_index_u32(~global0.c, 3u)], !global3[_wgslsmith_index_u32(58459u, 3u)], !global4[_wgslsmith_index_u32(u_input.a, 30u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.x, 1i, var_0.x) >> (global0.d.a.a.xwz % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(1i, -2147483647i, var_0.x))) == ~(~u_input.b.x)), global0.d.b.x);
}

