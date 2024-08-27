struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(i32(-2147483648), false, Struct_1(vec2<f32>(-672f, -651f), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<f32>(-564f, -173f, -895f)), vec2<u32>(0u, 4294967295u), Struct_1(vec2<f32>(-199f, 1431f), vec3<i32>(i32(-2147483648), 20315i, 1i), vec3<f32>(-228f, 1110f, -1152f))), Struct_2(-71583i, false, Struct_1(vec2<f32>(433f, -1741f), vec3<i32>(8110i, 0i, -1i), vec3<f32>(-340f, 563f, 1067f)), vec2<u32>(0u, 11690u), Struct_1(vec2<f32>(-548f, -1537f), vec3<i32>(23352i, -15979i, i32(-2147483648)), vec3<f32>(-326f, -1000f, -472f))), Struct_2(3065i, false, Struct_1(vec2<f32>(351f, 432f), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<f32>(-809f, -664f, 994f)), vec2<u32>(95513u, 76582u), Struct_1(vec2<f32>(334f, -145f), vec3<i32>(1i, -1i, 2470i), vec3<f32>(768f, -305f, 690f))), Struct_2(0i, true, Struct_1(vec2<f32>(-1474f, -658f), vec3<i32>(39754i, i32(-2147483648), 68889i), vec3<f32>(-1389f, -592f, 1000f)), vec2<u32>(0u, 65562u), Struct_1(vec2<f32>(-1487f, -1470f), vec3<i32>(-1i, -1i, -275i), vec3<f32>(-1390f, 1000f, -1621f))), Struct_2(i32(-2147483648), true, Struct_1(vec2<f32>(654f, -399f), vec3<i32>(22164i, -32329i, -1i), vec3<f32>(1557f, -3329f, -900f)), vec2<u32>(60095u, 6481u), Struct_1(vec2<f32>(110f, 529f), vec3<i32>(2147483647i, -37544i, -20271i), vec3<f32>(-901f, -2680f, -1581f))), Struct_2(41998i, true, Struct_1(vec2<f32>(-307f, -1000f), vec3<i32>(-26431i, -1i, 0i), vec3<f32>(1147f, -826f, -1470f)), vec2<u32>(4294967295u, 91086u), Struct_1(vec2<f32>(-1406f, -345f), vec3<i32>(0i, 2147483647i, 0i), vec3<f32>(715f, 613f, -997f))), Struct_2(-33693i, false, Struct_1(vec2<f32>(-2961f, -839f), vec3<i32>(i32(-2147483648), i32(-2147483648), -10998i), vec3<f32>(1378f, -2330f, -1609f)), vec2<u32>(4294967295u, 3870u), Struct_1(vec2<f32>(764f, -341f), vec3<i32>(-30673i, 1i, 1i), vec3<f32>(1719f, 615f, 162f))), Struct_2(-1i, false, Struct_1(vec2<f32>(545f, 316f), vec3<i32>(0i, 0i, 1i), vec3<f32>(1287f, -1518f, -548f)), vec2<u32>(25341u, 25973u), Struct_1(vec2<f32>(684f, 515f), vec3<i32>(1i, 2147483647i, 0i), vec3<f32>(183f, -1735f, 1055f))), Struct_2(-11630i, true, Struct_1(vec2<f32>(-1145f, -497f), vec3<i32>(-34738i, 0i, 0i), vec3<f32>(-291f, -1000f, -395f)), vec2<u32>(2666u, 1u), Struct_1(vec2<f32>(-321f, 981f), vec3<i32>(1i, 9448i, i32(-2147483648)), vec3<f32>(-648f, 223f, -724f))), Struct_2(-1i, false, Struct_1(vec2<f32>(-507f, -403f), vec3<i32>(15348i, 2147483647i, -1i), vec3<f32>(-1305f, 359f, -1083f)), vec2<u32>(4294967295u, 0u), Struct_1(vec2<f32>(-918f, 217f), vec3<i32>(-1i, -22307i, i32(-2147483648)), vec3<f32>(408f, 1587f, -817f))), Struct_2(1i, true, Struct_1(vec2<f32>(226f, 964f), vec3<i32>(30963i, 1i, -10813i), vec3<f32>(-1106f, -589f, 876f)), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<f32>(187f, -221f), vec3<i32>(i32(-2147483648), -43039i, i32(-2147483648)), vec3<f32>(1103f, -248f, -347f))), Struct_2(i32(-2147483648), false, Struct_1(vec2<f32>(252f, 282f), vec3<i32>(4360i, -33674i, 11471i), vec3<f32>(117f, -951f, 270f)), vec2<u32>(30515u, 37304u), Struct_1(vec2<f32>(192f, -723f), vec3<i32>(-15422i, -1i, 5969i), vec3<f32>(790f, -982f, -1007f))), Struct_2(-27286i, true, Struct_1(vec2<f32>(-542f, 1000f), vec3<i32>(2147483647i, 5978i, 1i), vec3<f32>(595f, -233f, -1000f)), vec2<u32>(14318u, 59398u), Struct_1(vec2<f32>(655f, -486f), vec3<i32>(-35572i, -1i, 43486i), vec3<f32>(-567f, -655f, 398f))), Struct_2(i32(-2147483648), false, Struct_1(vec2<f32>(1924f, 1176f), vec3<i32>(2147483647i, -5360i, 0i), vec3<f32>(250f, -977f, -1658f)), vec2<u32>(24160u, 53974u), Struct_1(vec2<f32>(535f, -1000f), vec3<i32>(-19014i, 7854i, -34866i), vec3<f32>(226f, -1697f, -809f))), Struct_2(9878i, false, Struct_1(vec2<f32>(-1000f, 109f), vec3<i32>(-1326i, -23925i, -2536i), vec3<f32>(418f, -490f, -425f)), vec2<u32>(1u, 1u), Struct_1(vec2<f32>(683f, -407f), vec3<i32>(28675i, 2147483647i, -21676i), vec3<f32>(711f, 1768f, 717f))), Struct_2(-284i, false, Struct_1(vec2<f32>(-111f, -934f), vec3<i32>(0i, 52938i, i32(-2147483648)), vec3<f32>(1479f, -472f, -326f)), vec2<u32>(34398u, 0u), Struct_1(vec2<f32>(-848f, 890f), vec3<i32>(10707i, i32(-2147483648), i32(-2147483648)), vec3<f32>(-1024f, 856f, 601f))), Struct_2(1i, false, Struct_1(vec2<f32>(-857f, -1239f), vec3<i32>(1i, 53662i, -48372i), vec3<f32>(-2001f, -184f, 676f)), vec2<u32>(0u, 49459u), Struct_1(vec2<f32>(791f, -1893f), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<f32>(1274f, -313f, -171f))), Struct_2(i32(-2147483648), true, Struct_1(vec2<f32>(-149f, 383f), vec3<i32>(2147483647i, 26094i, -46204i), vec3<f32>(482f, -1486f, -1429f)), vec2<u32>(1u, 113731u), Struct_1(vec2<f32>(1743f, -1000f), vec3<i32>(51985i, 0i, i32(-2147483648)), vec3<f32>(261f, 1008f, 469f))), Struct_2(20603i, false, Struct_1(vec2<f32>(1709f, 1139f), vec3<i32>(-1i, 21322i, 1i), vec3<f32>(-786f, 795f, -1381f)), vec2<u32>(11728u, 2082u), Struct_1(vec2<f32>(-1794f, -1995f), vec3<i32>(1i, 2147483647i, -15860i), vec3<f32>(943f, 520f, -374f))), Struct_2(9545i, false, Struct_1(vec2<f32>(-128f, -1026f), vec3<i32>(-9403i, i32(-2147483648), 37158i), vec3<f32>(1000f, 1114f, 1006f)), vec2<u32>(4294967295u, 1u), Struct_1(vec2<f32>(806f, -791f), vec3<i32>(0i, -11851i, 1i), vec3<f32>(154f, -699f, 374f))), Struct_2(2147483647i, false, Struct_1(vec2<f32>(-127f, -1938f), vec3<i32>(-1i, -63412i, 2147483647i), vec3<f32>(1119f, -470f, -253f)), vec2<u32>(95287u, 76295u), Struct_1(vec2<f32>(-1749f, -703f), vec3<i32>(-19939i, -5500i, 38652i), vec3<f32>(473f, -540f, 1089f))), Struct_2(1i, true, Struct_1(vec2<f32>(-473f, -775f), vec3<i32>(0i, 1i, 1i), vec3<f32>(376f, 1839f, -857f)), vec2<u32>(4294967295u, 0u), Struct_1(vec2<f32>(838f, 170f), vec3<i32>(0i, 13083i, 35541i), vec3<f32>(377f, 1458f, -221f))), Struct_2(i32(-2147483648), true, Struct_1(vec2<f32>(-698f, 2257f), vec3<i32>(2147483647i, 1i, -5536i), vec3<f32>(2214f, 1196f, -393f)), vec2<u32>(5414u, 38631u), Struct_1(vec2<f32>(-1310f, -537f), vec3<i32>(-33393i, i32(-2147483648), -6581i), vec3<f32>(797f, 1030f, 676f))), Struct_2(23670i, true, Struct_1(vec2<f32>(1000f, 1048f), vec3<i32>(3742i, 5027i, 232i), vec3<f32>(1071f, 1139f, 635f)), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<f32>(-1412f, 989f), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<f32>(737f, 356f, -1000f))), Struct_2(-1i, false, Struct_1(vec2<f32>(435f, -301f), vec3<i32>(0i, -9062i, 3738i), vec3<f32>(151f, 1000f, -400f)), vec2<u32>(0u, 4133u), Struct_1(vec2<f32>(1051f, -1243f), vec3<i32>(i32(-2147483648), -25911i, -1i), vec3<f32>(-1114f, 782f, -442f))), Struct_2(i32(-2147483648), true, Struct_1(vec2<f32>(604f, -2078f), vec3<i32>(24795i, -3351i, i32(-2147483648)), vec3<f32>(-206f, -1000f, -491f)), vec2<u32>(52488u, 0u), Struct_1(vec2<f32>(-394f, -1000f), vec3<i32>(1i, -1i, 9635i), vec3<f32>(-1404f, 466f, -1112f))), Struct_2(i32(-2147483648), true, Struct_1(vec2<f32>(455f, -417f), vec3<i32>(-1387i, 1i, 1183i), vec3<f32>(-1000f, 1000f, 349f)), vec2<u32>(32650u, 4398u), Struct_1(vec2<f32>(2528f, 1863f), vec3<i32>(49324i, i32(-2147483648), 1i), vec3<f32>(-818f, 850f, -372f))), Struct_2(-6264i, true, Struct_1(vec2<f32>(-1000f, -384f), vec3<i32>(i32(-2147483648), i32(-2147483648), -7319i), vec3<f32>(628f, -307f, -1000f)), vec2<u32>(8998u, 38551u), Struct_1(vec2<f32>(967f, -604f), vec3<i32>(-1i, 7741i, -60351i), vec3<f32>(197f, -1000f, 459f))));

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(82402i, true, Struct_1(vec2<f32>(-1091f, -644f), vec3<i32>(-1i, -1i, -1i), vec3<f32>(578f, -1413f, 1509f)), vec2<u32>(1u, 0u), Struct_1(vec2<f32>(-378f, 698f), vec3<i32>(9698i, 0i, 10061i), vec3<f32>(689f, -541f, -751f))), Struct_2(-1i, true, Struct_1(vec2<f32>(2247f, 749f), vec3<i32>(-18498i, 1i, i32(-2147483648)), vec3<f32>(-562f, -476f, 1000f)), vec2<u32>(0u, 29787u), Struct_1(vec2<f32>(-1247f, -1010f), vec3<i32>(0i, 0i, 1i), vec3<f32>(-1433f, 159f, -2958f))), Struct_2(-35236i, true, Struct_1(vec2<f32>(748f, 1911f), vec3<i32>(i32(-2147483648), 15781i, -1i), vec3<f32>(820f, -716f, -1000f)), vec2<u32>(4294967295u, 95027u), Struct_1(vec2<f32>(753f, -1758f), vec3<i32>(-4625i, 0i, -591i), vec3<f32>(1000f, 1379f, -131f))));

var<private> global2: bool;

var<private> global3: array<Struct_2, 6>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>) -> u32 {
    var var_0 = arg_0;
    var_0 = Struct_2(_wgslsmith_mult_i32(min(arg_1.a, min(firstTrailingBit(1i), arg_0.e.b.x)), -2147483647i << (reverseBits(u_input.c.x) % 32u)), !(var_0.c.b.x == u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.e.c.x), 1f))), -reverseBits(_wgslsmith_sub_vec3_i32(var_0.e.b, vec3<i32>(1i, arg_1.c.b.x, 17864i))), var_0.c.c), select(var_0.d, ~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.d, var_0.d), vec2<u32>(arg_0.d.x, 4294967295u)), vec2<bool>(all(arg_2.ww) || true, arg_1.e.a.x >= _wgslsmith_f_op_f32(select(1262f, 1000f, arg_2.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.e.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.c.x, var_0.e.c.x)))), select(_wgslsmith_div_vec3_i32(-var_0.e.b, min(u_input.b, vec3<i32>(-1i, arg_0.e.b.x, 6558i))), vec3<i32>(_wgslsmith_add_i32(1i, 0i), arg_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.a, arg_1.c.b.x, arg_1.e.b.x), vec4<i32>(1i, -2147483647i, 2147483647i, arg_0.e.b.x))), !var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c.c)))));
    let var_1 = vec3<u32>(~firstTrailingBit(arg_1.d.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(max(arg_0.d.x, 4294967295u), ~u_input.c.x), _wgslsmith_mult_u32(reverseBits(var_0.d.x), 45868u)), _wgslsmith_sub_u32(var_0.d.x ^ ~var_0.d.x, ~var_0.d.x >> ((var_0.d.x << (50559u % 32u)) % 32u))), 32331u);
    let var_2 = select(~vec4<i32>(~(37830i | u_input.b.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(54914i, var_0.a), vec2<i32>(1150i, arg_1.a)), _wgslsmith_clamp_i32(-5775i ^ u_input.b.x, u_input.a, _wgslsmith_add_i32(-26326i, u_input.a)), var_0.c.b.x), vec4<i32>(-1i) * -(~(vec4<i32>(u_input.a, -45382i, -23962i, u_input.b.x) ^ vec4<i32>(arg_1.c.b.x, -2147483647i, u_input.b.x, u_input.a))), arg_2);
    let var_3 = all(select(vec4<bool>(any(select(arg_2, arg_2, arg_0.b)), all(!vec3<bool>(var_0.b, false, false)), any(!vec3<bool>(false, false, arg_1.b)), !(!arg_1.b)), vec4<bool>(!arg_1.b, arg_0.d.x != _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), !any(arg_2), arg_2.x), arg_0.b));
    return u_input.c.x;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = ~vec4<u32>(abs(u_input.c.x), firstTrailingBit(func_3(Struct_2(u_input.a, true, Struct_1(vec2<f32>(arg_2.a.x, arg_2.c.x), arg_2.b, vec3<f32>(-1716f, 643f, 300f)), vec2<u32>(4294967295u, 79676u), arg_2), Struct_2(-3808i, true, arg_2, vec2<u32>(54516u, arg_1), arg_2), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)))), ~_wgslsmith_add_u32(arg_1, 75158u), 60491u | ~firstTrailingBit(arg_1));
    global1 = array<Struct_2, 3>();
    global2 = !all(vec3<bool>(true, true, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.c.x)), 212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1067f)), _wgslsmith_f_op_f32(-arg_2.a.x)));
    global3 = array<Struct_2, 6>();
    return min(vec3<u32>(~(~1u), ~min(u_input.c.x, 33007u) & 73550u, _wgslsmith_clamp_u32(var_0.x, arg_1, ~abs(u_input.c.x))), vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(49388u, var_0.x), vec2<u32>(u_input.c.x, 11577u)), _wgslsmith_clamp_u32(var_0.x, 55763u, 5113u)), var_0.x, var_0.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> bool {
    global0 = array<Struct_2, 28>();
    global1 = array<Struct_2, 3>();
    let var_0 = arg_1.d;
    let var_1 = abs(~min(~func_2(arg_0.x, var_0.x, Struct_1(arg_1.c.c.xz, vec3<i32>(u_input.b.x, arg_0.x, arg_0.x), vec3<f32>(arg_2, arg_2, arg_2))), ~(vec3<u32>(1u, 4294967295u, 64284u) << (u_input.c.wzy % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_1.e.c + _wgslsmith_f_op_vec3_f32(-arg_1.c.c));
    return any(select(select(!select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(false, true, false, arg_1.b), true), select(vec4<bool>(false, true, arg_1.b, arg_1.b), select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, false, true, arg_1.b), vec4<bool>(false, arg_1.b, true, false)), select(vec4<bool>(arg_1.b, true, arg_1.b, true), vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), vec4<bool>(arg_1.b, true, arg_1.b, false))), any(!vec4<bool>(arg_1.b, arg_1.b, true, true))), !select(select(vec4<bool>(false, arg_1.b, false, true), vec4<bool>(true, false, false, true), arg_1.b), !vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b), arg_1.b && arg_1.b), select(vec4<bool>(arg_1.b, false, arg_1.e.a.x > -167f, arg_1.b), vec4<bool>(arg_1.b, arg_1.b & true, false, arg_1.b), vec4<bool>(arg_1.b, all(vec2<bool>(true, true)), true, all(vec2<bool>(false, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 3>();
    let var_0 = Struct_2(-countOneBits(-1i), (true | func_1(min(vec3<i32>(u_input.b.x, 1i, -1i), vec3<i32>(u_input.b.x, u_input.b.x, -50625i)), global3[_wgslsmith_index_u32(u_input.c.x, 6u)], _wgslsmith_f_op_f32(f32(-1f) * -600f), 4294967295u)) | (~_wgslsmith_add_i32(u_input.a, 1i) >= u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1493f, -902f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(946f, -1352f) - vec2<f32>(725f, -1403f)))), vec3<i32>(-56444i, 20417i | ~u_input.a, 7992i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1299f)) + _wgslsmith_f_op_f32(abs(-258f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1077f) + _wgslsmith_f_op_f32(floor(-832f))), 1000f)), ~u_input.c.zy, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1102f, -151f)), u_input.b ^ vec3<i32>(min(-1i, u_input.b.x), abs(2147483647i), 1i), vec3<f32>(1443f, -1123f, _wgslsmith_f_op_f32(-100f - 1f))));
    global3 = array<Struct_2, 6>();
    let var_1 = u_input.c.xyz;
    let var_2 = global0[_wgslsmith_index_u32(~31082u, 28u)];
    var var_3 = Struct_1(vec2<f32>(-209f, _wgslsmith_f_op_f32(f32(-1f) * -1498f)), _wgslsmith_mod_vec3_i32(min(countOneBits(vec3<i32>(u_input.a, var_0.a, u_input.a)), vec3<i32>(-23394i, -29200i, var_2.e.b.x)) ^ ~abs(vec3<i32>(var_0.e.b.x, u_input.a, var_0.a)), max(~vec3<i32>(55997i, var_2.c.b.x, var_0.c.b.x) & firstTrailingBit(var_0.c.b), -abs(u_input.b))), vec3<f32>(var_0.c.a.x, var_0.e.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e.c.x - 715f), var_2.c.a.x))));
    var var_4 = vec4<bool>((max(~(-12950i), i32(-1i) * -11341i) >> (~u_input.c.x % 32u)) > -max(1i, _wgslsmith_div_i32(var_3.b.x, var_2.e.b.x)), !(!(_wgslsmith_dot_vec3_u32(u_input.c.zyx, vec3<u32>(4294967295u, var_0.d.x, 1u)) >= _wgslsmith_add_u32(var_2.d.x, 34398u))), select(!any(vec2<bool>(false, false)), true, !var_0.b) != var_0.b, var_0.b);
    global1 = array<Struct_2, 3>();
    var_3 = Struct_1(vec2<f32>(var_0.e.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.a.x))), vec3<i32>(var_0.a, i32(-1i) * -firstTrailingBit(-1i), 36999i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e.a.x)) + -1000f), 1000f, -812f));
    let x = u_input.a;
    s_output = StorageBuffer(-575f, (((vec4<i32>(-2147483647i, 4918i, -1i, u_input.b.x) ^ vec4<i32>(-43804i, 20691i, 1i, -2147483647i)) << (~vec4<u32>(0u, 0u, var_2.d.x, var_1.x) % vec4<u32>(32u))) << (vec4<u32>(firstLeadingBit(u_input.c.x), _wgslsmith_mod_u32(59058u, 17041u), 15473u, 58635u) % vec4<u32>(32u))) >> (abs(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 0u, 56128u), u_input.c), abs(vec4<u32>(var_1.x, 56157u, u_input.c.x, 8748u)), 337f != var_0.e.c.x)) % vec4<u32>(32u)), _wgslsmith_clamp_i32(-2147483647i, -1i, _wgslsmith_sub_i32(var_0.e.b.x, var_0.c.b.x)) >> (var_2.d.x % 32u));
}

