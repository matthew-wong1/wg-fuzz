struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<f32>(-570f, 1828f, 743f, -1524f), vec3<i32>(31025i, 9461i, i32(-2147483648)), vec4<u32>(28095u, 4294967295u, 38252u, 4294967295u), -307f), Struct_1(vec4<f32>(988f, 836f, 1000f, -367f), vec3<i32>(2570i, -1i, -53781i), vec4<u32>(4294967295u, 1u, 18327u, 1u), -1000f), Struct_1(vec4<f32>(-1673f, 766f, -166f, 577f), vec3<i32>(-1i, 37896i, 13565i), vec4<u32>(33614u, 105671u, 41049u, 4294967295u), -1360f), Struct_1(vec4<f32>(489f, 632f, -429f, 943f), vec3<i32>(0i, -39248i, 2147483647i), vec4<u32>(4294967295u, 0u, 0u, 0u), -1463f), Struct_1(vec4<f32>(-1076f, -1974f, 111f, 158f), vec3<i32>(-9925i, 54735i, 2147483647i), vec4<u32>(11528u, 26619u, 119396u, 4294967295u), -198f), Struct_1(vec4<f32>(740f, 124f, 1512f, 1140f), vec3<i32>(i32(-2147483648), -76500i, 13215i), vec4<u32>(53742u, 1u, 1u, 43081u), -528f), Struct_1(vec4<f32>(477f, -706f, 771f, 1340f), vec3<i32>(1i, 9950i, -33966i), vec4<u32>(0u, 3117u, 0u, 4294967295u), 1198f), Struct_1(vec4<f32>(-1096f, -233f, 1241f, 290f), vec3<i32>(-14976i, -1i, 6680i), vec4<u32>(4294967295u, 47683u, 86934u, 0u), 1594f), Struct_1(vec4<f32>(1826f, 1267f, -780f, 761f), vec3<i32>(0i, 2147483647i, -4200i), vec4<u32>(125316u, 66422u, 25675u, 49600u), 819f), Struct_1(vec4<f32>(-442f, 1024f, -269f, -317f), vec3<i32>(1i, 2147483647i, -26464i), vec4<u32>(4294967295u, 52287u, 1u, 5068u), 1499f), Struct_1(vec4<f32>(-468f, -317f, 796f, 489f), vec3<i32>(i32(-2147483648), 34030i, 32151i), vec4<u32>(4294967295u, 1u, 18780u, 5428u), 943f), Struct_1(vec4<f32>(375f, 177f, -1094f, -1682f), vec3<i32>(i32(-2147483648), 1i, 1i), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), -1891f), Struct_1(vec4<f32>(-1000f, -481f, 1372f, -930f), vec3<i32>(i32(-2147483648), 8431i, -4451i), vec4<u32>(45259u, 5346u, 29510u, 12910u), 496f), Struct_1(vec4<f32>(-1342f, 337f, -1195f, -405f), vec3<i32>(-11954i, 27056i, -88299i), vec4<u32>(40671u, 112458u, 1u, 0u), 1797f), Struct_1(vec4<f32>(243f, -819f, 812f, -732f), vec3<i32>(i32(-2147483648), -15482i, 23524i), vec4<u32>(0u, 82963u, 1u, 2459u), -137f), Struct_1(vec4<f32>(-2061f, -193f, 1694f, -505f), vec3<i32>(-2624i, 24442i, -3436i), vec4<u32>(74714u, 0u, 0u, 1u), 624f), Struct_1(vec4<f32>(1388f, -948f, 478f, -1323f), vec3<i32>(-60993i, 1463i, 0i), vec4<u32>(31591u, 0u, 4294967295u, 43931u), -2125f), Struct_1(vec4<f32>(1491f, -1099f, -1000f, -1381f), vec3<i32>(1i, 1i, -1i), vec4<u32>(10841u, 1u, 1u, 0u), 1106f), Struct_1(vec4<f32>(-273f, -1605f, 127f, -1000f), vec3<i32>(26323i, 578i, i32(-2147483648)), vec4<u32>(0u, 16305u, 56922u, 4294967295u), 1000f), Struct_1(vec4<f32>(866f, -719f, -279f, -159f), vec3<i32>(52414i, -1i, 1i), vec4<u32>(1u, 1u, 1u, 1u), -835f), Struct_1(vec4<f32>(362f, 364f, 322f, -111f), vec3<i32>(-14348i, 233i, 1i), vec4<u32>(0u, 0u, 64965u, 0u), -753f), Struct_1(vec4<f32>(1321f, -1704f, -789f, -1085f), vec3<i32>(-34908i, 2147483647i, 2147483647i), vec4<u32>(3247u, 4294967295u, 44756u, 1u), -1000f), Struct_1(vec4<f32>(796f, -2361f, 533f, 1799f), vec3<i32>(-29791i, -1i, 35692i), vec4<u32>(0u, 4294967295u, 60808u, 4294967295u), 1000f), Struct_1(vec4<f32>(546f, -803f, 1828f, -742f), vec3<i32>(-44780i, -1i, 2147483647i), vec4<u32>(0u, 4294967295u, 72696u, 63011u), -2324f), Struct_1(vec4<f32>(771f, 551f, 483f, 501f), vec3<i32>(-1i, 0i, 6047i), vec4<u32>(1u, 8582u, 75177u, 37318u), 712f), Struct_1(vec4<f32>(108f, 1744f, -1454f, 1038f), vec3<i32>(1755i, 0i, 1i), vec4<u32>(10299u, 35175u, 67482u, 11256u), -165f), Struct_1(vec4<f32>(1686f, -863f, 556f, -1361f), vec3<i32>(1i, -7339i, -13173i), vec4<u32>(35800u, 28421u, 8983u, 4294967295u), 1000f), Struct_1(vec4<f32>(-160f, -653f, -112f, 513f), vec3<i32>(0i, 1i, 2147483647i), vec4<u32>(4294967295u, 0u, 21281u, 21508u), 955f), Struct_1(vec4<f32>(165f, 538f, 332f, -173f), vec3<i32>(-49625i, -1i, -1i), vec4<u32>(1u, 4294967295u, 4294967295u, 4232u), 481f), Struct_1(vec4<f32>(766f, -2047f, -263f, 2036f), vec3<i32>(41619i, 0i, -70507i), vec4<u32>(26499u, 59942u, 1u, 70219u), 1000f), Struct_1(vec4<f32>(-1201f, 1299f, -293f, 1340f), vec3<i32>(-3325i, -17619i, -7842i), vec4<u32>(68656u, 21350u, 67372u, 3087u), -1322f), Struct_1(vec4<f32>(-551f, 199f, -1000f, 912f), vec3<i32>(-27986i, -333i, 2147483647i), vec4<u32>(27683u, 13700u, 0u, 39141u), -841f));

var<private> global1: bool;

var<private> global2: vec4<u32> = vec4<u32>(0u, 4294967295u, 81429u, 4294967295u);

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<f32>(1009f, 1508f, -214f, -426f), vec3<i32>(1076i, -59936i, 1i), vec4<u32>(0u, 0u, 4294967295u, 0u), -301f), Struct_1(vec4<f32>(-240f, 499f, -179f, -800f), vec3<i32>(1i, -1062i, -29985i), vec4<u32>(77175u, 40625u, 1u, 24537u), -286f), Struct_1(vec4<f32>(782f, -725f, -327f, -1160f), vec3<i32>(-9445i, 18606i, 0i), vec4<u32>(4294967295u, 4294967295u, 61631u, 73145u), -1157f), Struct_1(vec4<f32>(644f, -804f, -3414f, 282f), vec3<i32>(10533i, 47858i, 2147483647i), vec4<u32>(0u, 0u, 16197u, 4294967295u), -162f), Struct_1(vec4<f32>(-456f, 1000f, 1253f, -933f), vec3<i32>(-14577i, 1i, i32(-2147483648)), vec4<u32>(0u, 78591u, 58320u, 4294967295u), -1134f), Struct_1(vec4<f32>(829f, 134f, 772f, 295f), vec3<i32>(33723i, 2147483647i, -67910i), vec4<u32>(81537u, 37443u, 1u, 1u), 1000f), Struct_1(vec4<f32>(1448f, 648f, -956f, -1070f), vec3<i32>(-63363i, 85621i, 20507i), vec4<u32>(92408u, 1u, 82056u, 53100u), -236f), Struct_1(vec4<f32>(-1000f, -498f, -1000f, 221f), vec3<i32>(16427i, 1i, 699i), vec4<u32>(37863u, 15623u, 60682u, 1u), -472f), Struct_1(vec4<f32>(-722f, 365f, 714f, -719f), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec4<u32>(46802u, 1u, 15591u, 14730u), -134f), Struct_1(vec4<f32>(1000f, -151f, 342f, -1174f), vec3<i32>(-32703i, 1i, 5286i), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), 1176f), Struct_1(vec4<f32>(-1273f, -576f, -1433f, 1000f), vec3<i32>(i32(-2147483648), -3723i, -1i), vec4<u32>(0u, 4294967295u, 1u, 1u), 541f), Struct_1(vec4<f32>(149f, -1013f, 1000f, 1362f), vec3<i32>(-46915i, -32689i, 1i), vec4<u32>(4294967295u, 0u, 6180u, 4294967295u), 696f), Struct_1(vec4<f32>(728f, -755f, 962f, -252f), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec4<u32>(0u, 1u, 7921u, 1u), 559f), Struct_1(vec4<f32>(-778f, 377f, 1000f, -1006f), vec3<i32>(-22982i, 1i, 2147483647i), vec4<u32>(38976u, 1u, 1u, 4294967295u), 304f), Struct_1(vec4<f32>(-218f, -435f, 402f, 207f), vec3<i32>(42864i, 2147483647i, -1291i), vec4<u32>(37955u, 44924u, 19136u, 20553u), -451f), Struct_1(vec4<f32>(-1054f, -1000f, 2106f, 342f), vec3<i32>(2147483647i, 12607i, 15260i), vec4<u32>(4294967295u, 58790u, 45563u, 1u), 2540f), Struct_1(vec4<f32>(1207f, 1384f, 679f, -876f), vec3<i32>(-2818i, 9622i, 48521i), vec4<u32>(3915u, 4294967295u, 4294967295u, 15828u), 338f), Struct_1(vec4<f32>(1617f, -297f, -887f, -877f), vec3<i32>(1i, 2147483647i, 20835i), vec4<u32>(4294967295u, 41737u, 4694u, 0u), 520f), Struct_1(vec4<f32>(1000f, -834f, 1551f, 529f), vec3<i32>(8910i, i32(-2147483648), i32(-2147483648)), vec4<u32>(4294967295u, 0u, 4294967295u, 2478u), 1795f), Struct_1(vec4<f32>(-397f, 333f, 576f, 182f), vec3<i32>(21648i, 20478i, -22601i), vec4<u32>(0u, 19834u, 1u, 4294967295u), 738f), Struct_1(vec4<f32>(-1396f, -1000f, -399f, 128f), vec3<i32>(-63701i, 356i, -36148i), vec4<u32>(1u, 15851u, 53587u, 1u), -911f), Struct_1(vec4<f32>(731f, 1662f, 297f, 1000f), vec3<i32>(1i, 18763i, -1i), vec4<u32>(39352u, 1u, 4294967295u, 115754u), -1000f), Struct_1(vec4<f32>(-1000f, 465f, 1000f, 1727f), vec3<i32>(27829i, 10773i, -5954i), vec4<u32>(1u, 4294967295u, 7283u, 65486u), 1153f), Struct_1(vec4<f32>(870f, 307f, 605f, 1435f), vec3<i32>(-7143i, 24549i, -17216i), vec4<u32>(4294967295u, 0u, 60382u, 6006u), -940f), Struct_1(vec4<f32>(-1573f, -1067f, -459f, 890f), vec3<i32>(28582i, -56405i, 2147483647i), vec4<u32>(1u, 1u, 24320u, 1u), 479f));

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = global2.yw;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-769f * 1f), !all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(false, false, false))), global2.xw, select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true))), vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_2 = ~vec3<i32>(~firstTrailingBit(firstLeadingBit(-1i)), 4160i, _wgslsmith_sub_i32(-61503i, u_input.a.x) >> (global2.x % 32u));
    var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f + var_1.a)), var_1.a, var_1.d.x)))), any(vec2<bool>(true, var_1.b)), var_1.c, vec2<bool>(0i >= var_2.x, all(!(!vec3<bool>(var_1.b, var_1.d.x, true)))));
    var var_3 = ~min(global2.zy, ~vec2<u32>(var_1.c.x << (global2.x % 32u), ~12077u));
    return 21868u;
}

fn func_2() -> Struct_3 {
    global2 = vec4<u32>(0u >> (1u % 32u), _wgslsmith_mod_u32(global2.x, ~(~46688u)), global2.x, _wgslsmith_dot_vec3_u32(global2.ywy, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 52707u), vec2<u32>(global2.x, 34267u)), _wgslsmith_div_u32(func_3(), global2.x), global2.x)));
    global2 = firstTrailingBit(~(~firstLeadingBit(vec4<u32>(81726u, 4294967295u, 1u, global2.x)))) << ((countOneBits(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(global2.x, global2.x, 8483u, 2525u))) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, global2.x, 4294967295u, global2.x), vec4<u32>(global2.x, global2.x, global2.x, 4294967295u) >> (vec4<u32>(global2.x, 73995u, global2.x, 1946u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_0 = min(global2.xy, global2.zw) & vec2<u32>(global2.x, global2.x);
    var var_1 = (select(19622u, 1u, any(vec4<bool>(true, true, false, true))) ^ ((_wgslsmith_div_u32(4294967295u, var_0.x) << (~0u % 32u)) << ((var_0.x << (~global2.x % 32u)) % 32u))) | ~var_0.x;
    let var_2 = Struct_2(select(-countOneBits(vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, 41902i)), _wgslsmith_div_vec4_i32(max(vec4<i32>(0i, 0i, 8183i, 2147483647i), vec4<i32>(-40908i, 24060i, u_input.a.x, u_input.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 27880i, 2258i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 30182i))), all(vec2<bool>(false, true)) && all(vec3<bool>(true, false, false))) ^ (vec4<i32>(u_input.a.x, -u_input.a.x, u_input.b.x, u_input.b.x) & select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 12331i, u_input.a.x, 19065i), vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, -1i), vec4<i32>(-43153i, 0i, 0i, -2147483647i)), ~vec4<i32>(-2147483647i, -1i, 0i, -1i), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1051f, 152f, -568f)), _wgslsmith_div_vec3_f32(vec3<f32>(-393f, -150f, 1255f), vec3<f32>(-1889f, -1000f, 871f))), vec3<f32>(-156f, -1000f, _wgslsmith_f_op_f32(ceil(1382f)))))), all(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), global0[_wgslsmith_index_u32(var_0.x, 32u)], (countOneBits(u_input.a.x) & (-2513i >> (global2.x % 32u))) >> (var_0.x % 32u));
    return Struct_3(-1054f, !(_wgslsmith_f_op_f32(floor(var_2.b.x)) <= _wgslsmith_f_op_f32(floor(var_2.d.a.x))) | true, reverseBits(_wgslsmith_clamp_vec2_u32(var_0, global2.xx, vec2<u32>(var_2.d.c.x, global2.x ^ 3843u))), select(vec2<bool>((u_input.b.x & var_2.a.x) <= -28400i, var_2.c), select(!select(vec2<bool>(false, var_2.c), vec2<bool>(var_2.c, true), vec2<bool>(true, false)), vec2<bool>(true, true), !(var_2.d.d <= var_2.d.d)), !select(vec2<bool>(false, true), select(vec2<bool>(var_2.c, false), vec2<bool>(var_2.c, var_2.c), var_2.c), select(vec2<bool>(var_2.c, false), vec2<bool>(var_2.c, true), vec2<bool>(true, var_2.c)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    var var_0 = select(select(select(vec3<bool>(true, true, true), !(!vec3<bool>(arg_0.d.x, false, false)), vec3<bool>(arg_0.b, u_input.b.x <= arg_1.x, all(vec4<bool>(false, arg_0.b, arg_0.d.x, arg_0.d.x)))), !(!select(vec3<bool>(arg_0.b, arg_0.b, arg_0.d.x), vec3<bool>(arg_0.b, arg_0.b, false), false)), !arg_0.b), vec3<bool>(true, true, true), arg_0.b & !arg_0.d.x);
    global2 = vec4<u32>(func_3(), 20432u & abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 18094u), func_2().c.x)), arg_0.c.x, _wgslsmith_dot_vec4_u32(~(_wgslsmith_mult_vec4_u32(vec4<u32>(79849u, global2.x, global2.x, 4294967295u), vec4<u32>(global2.x, arg_0.c.x, 1u, 35265u)) | ~vec4<u32>(23092u, 1u, 1u, 71190u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 15368u, global2.x, 3317u), vec4<u32>(4294967295u, global2.x, arg_0.c.x, arg_0.c.x))) & reverseBits(vec4<u32>(global2.x, arg_0.c.x, arg_0.c.x, arg_0.c.x))));
    var_0 = select(vec3<bool>(true, true, true), vec3<bool>(true, false, global2.x > func_2().c.x), vec3<bool>(any(func_2().d), func_2().d.x, var_0.x));
    var var_1 = _wgslsmith_sub_i32(4383i, 72246i);
    let var_2 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(1i, ~(u_input.a.x | u_input.a.x)), 0i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-18918i, u_input.b.x), arg_1.x), min(-abs(34627i), ~u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1000f), -1017f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-617f, arg_0.a, 0u > arg_0.c.x)))), _wgslsmith_f_op_f32(-905f * arg_0.a)), 1i > _wgslsmith_mod_i32(~(-1i), arg_1.x), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(231f, arg_2, -567f, arg_2) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(520f, -1106f, arg_2, -482f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(942f, 967f, -1046f, arg_0.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(411f, -548f, 1024f, 386f) * vec4<f32>(902f, -2215f, -411f, 646f)))), countOneBits(u_input.b), abs(vec4<u32>(~4294967295u, 0u, arg_0.c.x, 4294967295u)), arg_0.a), ~u_input.b.x ^ 52900i);
    return var_2.d.a.x;
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = false;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(func_4(func_2(), vec4<i32>(arg_0.a.x, arg_0.a.x, i32(-1i) * -5188i, firstTrailingBit(arg_0.e)) | _wgslsmith_mult_vec4_i32(arg_0.a >> (vec4<u32>(71453u, 19389u, 1u, global2.x) % vec4<u32>(32u)), select(arg_0.a, vec4<i32>(17548i, u_input.a.x, 2147483647i, u_input.b.x), vec4<bool>(var_0, true, false, var_0))), 394f)), !arg_0.c, ~vec2<u32>(46500u, max(~arg_0.d.c.x, ~arg_0.d.c.x)), !vec2<bool>(arg_0.c, true));
    let var_2 = false;
    let var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b << (_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(62002u, 4294967295u, 4294967295u)), global2.zyy) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32((vec3<i32>(arg_0.d.b.x, arg_0.e, 12059i) << (arg_0.d.c.wzy % vec3<u32>(32u))) >> (vec3<u32>(arg_0.d.c.x, 0u, arg_0.d.c.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(u_input.b, arg_0.a.wyw))), arg_0.d.b);
    global3 = array<Struct_1, 25>();
    return Struct_3(_wgslsmith_f_op_f32(-380f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-909f * -680f), var_1.a)))), all(select(vec4<bool>(false, !var_1.d.x, true, true), vec4<bool>(true, arg_0.a.x < -49443i, false, !arg_0.c), false)), _wgslsmith_sub_vec2_u32(var_1.c, firstLeadingBit(var_1.c & ~global2.ww)), select(select(vec2<bool>(false, var_1.d.x | true), !vec2<bool>(var_0, arg_0.c), any(!vec4<bool>(false, var_2, var_2, true))), select(var_1.d, select(vec2<bool>(var_1.b, true), var_1.d, var_1.d), !var_1.d), vec2<bool>(arg_0.c, min(0i, -18051i) != _wgslsmith_div_i32(arg_0.a.x, arg_0.d.b.x))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(abs(~(4294967295u ^ global2.x)), global2.x, 24487u, countOneBits(countOneBits(22904u)));
    var var_0 = firstLeadingBit(abs(max(~vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x), -vec4<i32>(u_input.a.x, 0i, u_input.a.x, -49733i))) >> ((~_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 45530u, 4294967295u, 87167u), vec4<u32>(global2.x, 4294967295u, global2.x, global2.x)) & select(reverseBits(vec4<u32>(4294967295u, global2.x, global2.x, global2.x)), vec4<u32>(4294967295u, 4294967295u, 20135u, global2.x), true)) % vec4<u32>(32u)));
    let var_1 = func_5(!select(vec4<bool>(true, true, true, select(false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, false, false), any(vec2<bool>(false, true)))), func_1(Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, -42747i, u_input.b.x), vec4<i32>(u_input.b.x, var_0.x, -1i, 2147483647i) >> (vec4<u32>(67736u, global2.x, global2.x, 50000u) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(1510f * 1139f), _wgslsmith_div_f32(463f, -2076f), -1369f), true, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-636f, 298f, 141f, -1156f) * vec4<f32>(1117f, 731f, 1123f, 133f)), u_input.b, vec4<u32>(global2.x, 1u, global2.x, 1u) << (vec4<u32>(0u, 1u, 0u, global2.x) % vec4<u32>(32u)), 550f), ~u_input.a.x)), global3[_wgslsmith_index_u32(~(~func_2().c.x), 25u)]);
    let var_2 = var_1.d;
    var var_3 = -min(_wgslsmith_dot_vec3_i32(-select(var_0.wzz, vec3<i32>(u_input.a.x, -1i, u_input.b.x), var_2.x), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(u_input.a.x, 2582i)), -34860i, _wgslsmith_dot_vec4_i32(vec4<i32>(-887i, u_input.a.x, -2147483647i, 0i), vec4<i32>(-1i, var_0.x, -3970i, 2147483647i)))), -65248i);
    var var_4 = global0[_wgslsmith_index_u32(firstTrailingBit(~0u), 32u)];
    var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>((var_4.b.x ^ var_0.x) | -1i, var_4.b.x), min(~_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, u_input.a.x), u_input.a), -vec2<i32>(var_0.x, -47717i)), var_2), 1u);
}

