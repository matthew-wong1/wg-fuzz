struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec2<f32>(190f, 1139f), vec2<f32>(-1319f, 648f)), vec2<f32>(658f, -509f), 4294967295u, vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(378f, -319f), vec2<f32>(-1041f, -2138f)), vec2<f32>(-1012f, -343f), 9134u, vec2<u32>(0u, 37922u)), Struct_2(Struct_1(vec2<f32>(-488f, 519f), vec2<f32>(-1659f, -1000f)), vec2<f32>(959f, 506f), 51217u, vec2<u32>(23337u, 94096u)), Struct_2(Struct_1(vec2<f32>(757f, -1346f), vec2<f32>(-2091f, 984f)), vec2<f32>(-854f, -1126f), 1u, vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(vec2<f32>(-531f, 765f), vec2<f32>(1000f, -999f)), vec2<f32>(1000f, 282f), 4294967295u, vec2<u32>(5696u, 0u)), Struct_2(Struct_1(vec2<f32>(-594f, -1803f), vec2<f32>(-932f, -1062f)), vec2<f32>(-132f, -1000f), 40609u, vec2<u32>(1780u, 1u)), Struct_2(Struct_1(vec2<f32>(266f, -2097f), vec2<f32>(-612f, -810f)), vec2<f32>(563f, -281f), 14440u, vec2<u32>(63341u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(-494f, -610f), vec2<f32>(-510f, 736f)), vec2<f32>(-135f, 1343f), 0u, vec2<u32>(47902u, 1u)), Struct_2(Struct_1(vec2<f32>(1234f, -2912f), vec2<f32>(1290f, -231f)), vec2<f32>(439f, 286f), 102673u, vec2<u32>(0u, 9186u)), Struct_2(Struct_1(vec2<f32>(1000f, 481f), vec2<f32>(-365f, -297f)), vec2<f32>(136f, -896f), 4294967295u, vec2<u32>(4294967295u, 28497u)), Struct_2(Struct_1(vec2<f32>(-1228f, -548f), vec2<f32>(-151f, -890f)), vec2<f32>(1129f, 1497f), 37607u, vec2<u32>(63175u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(580f, -407f), vec2<f32>(1404f, -713f)), vec2<f32>(-608f, 105f), 4294967295u, vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(1000f, 477f), vec2<f32>(-724f, -1514f)), vec2<f32>(-981f, 632f), 800u, vec2<u32>(44563u, 0u)), Struct_2(Struct_1(vec2<f32>(-1672f, -356f), vec2<f32>(-1415f, 2107f)), vec2<f32>(123f, -1604f), 0u, vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(vec2<f32>(-875f, 1126f), vec2<f32>(639f, -141f)), vec2<f32>(724f, 1526f), 4294967295u, vec2<u32>(4294967295u, 37776u)), Struct_2(Struct_1(vec2<f32>(462f, 922f), vec2<f32>(878f, -1000f)), vec2<f32>(2048f, 1000f), 1136u, vec2<u32>(0u, 6506u)), Struct_2(Struct_1(vec2<f32>(-580f, -2042f), vec2<f32>(922f, 1017f)), vec2<f32>(-954f, 1000f), 91377u, vec2<u32>(4294967295u, 17252u)), Struct_2(Struct_1(vec2<f32>(-476f, 613f), vec2<f32>(-1562f, -242f)), vec2<f32>(2236f, 1319f), 88445u, vec2<u32>(5887u, 19463u)), Struct_2(Struct_1(vec2<f32>(-1295f, -1184f), vec2<f32>(401f, -103f)), vec2<f32>(672f, -666f), 0u, vec2<u32>(1u, 0u)), Struct_2(Struct_1(vec2<f32>(-470f, 829f), vec2<f32>(821f, 701f)), vec2<f32>(206f, -883f), 0u, vec2<u32>(31240u, 47208u)), Struct_2(Struct_1(vec2<f32>(163f, 648f), vec2<f32>(1088f, 2176f)), vec2<f32>(713f, -442f), 1u, vec2<u32>(62062u, 31733u)), Struct_2(Struct_1(vec2<f32>(712f, 1000f), vec2<f32>(742f, -1000f)), vec2<f32>(-1000f, -1406f), 11030u, vec2<u32>(4294967295u, 97188u)), Struct_2(Struct_1(vec2<f32>(-639f, -1374f), vec2<f32>(1714f, 442f)), vec2<f32>(233f, -1785f), 44541u, vec2<u32>(64521u, 4485u)), Struct_2(Struct_1(vec2<f32>(654f, 1000f), vec2<f32>(-1366f, 109f)), vec2<f32>(1199f, 573f), 83220u, vec2<u32>(93786u, 52008u)), Struct_2(Struct_1(vec2<f32>(-1901f, 938f), vec2<f32>(449f, -1571f)), vec2<f32>(-1000f, -1000f), 75484u, vec2<u32>(1u, 1u)), Struct_2(Struct_1(vec2<f32>(561f, -812f), vec2<f32>(-1000f, 736f)), vec2<f32>(-936f, 1000f), 1u, vec2<u32>(0u, 0u)), Struct_2(Struct_1(vec2<f32>(-937f, -1351f), vec2<f32>(1161f, 690f)), vec2<f32>(590f, -684f), 142953u, vec2<u32>(36213u, 0u)), Struct_2(Struct_1(vec2<f32>(1751f, -1057f), vec2<f32>(-1082f, 1000f)), vec2<f32>(159f, -1236f), 34943u, vec2<u32>(9587u, 34123u)), Struct_2(Struct_1(vec2<f32>(-116f, 754f), vec2<f32>(-1476f, -815f)), vec2<f32>(-1000f, 2797f), 4294967295u, vec2<u32>(36042u, 1u)), Struct_2(Struct_1(vec2<f32>(564f, 891f), vec2<f32>(-1427f, -1065f)), vec2<f32>(-143f, -1577f), 0u, vec2<u32>(49882u, 61243u)), Struct_2(Struct_1(vec2<f32>(496f, -716f), vec2<f32>(-159f, -1000f)), vec2<f32>(-1074f, -345f), 0u, vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(vec2<f32>(150f, -861f), vec2<f32>(1325f, 571f)), vec2<f32>(799f, 1000f), 1u, vec2<u32>(1u, 1u)));

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec2<f32>(-1085f, -906f), vec2<f32>(375f, 511f)), vec2<f32>(1000f, -575f), 11189u, vec2<u32>(215u, 35981u)), Struct_2(Struct_1(vec2<f32>(591f, 660f), vec2<f32>(142f, 189f)), vec2<f32>(656f, 2268f), 30832u, vec2<u32>(1u, 0u)), Struct_2(Struct_1(vec2<f32>(551f, -589f), vec2<f32>(-1337f, -417f)), vec2<f32>(428f, 112f), 82954u, vec2<u32>(4294967295u, 16420u)), Struct_2(Struct_1(vec2<f32>(258f, -351f), vec2<f32>(-570f, 482f)), vec2<f32>(1000f, -1983f), 21300u, vec2<u32>(9378u, 55339u)), Struct_2(Struct_1(vec2<f32>(-1010f, -1000f), vec2<f32>(-714f, 847f)), vec2<f32>(386f, -1085f), 1u, vec2<u32>(1u, 8592u)), Struct_2(Struct_1(vec2<f32>(1000f, 153f), vec2<f32>(-400f, -172f)), vec2<f32>(1839f, -461f), 0u, vec2<u32>(1734u, 56966u)), Struct_2(Struct_1(vec2<f32>(-1000f, 108f), vec2<f32>(970f, 494f)), vec2<f32>(-312f, 1000f), 0u, vec2<u32>(4294967295u, 65072u)), Struct_2(Struct_1(vec2<f32>(-651f, 770f), vec2<f32>(106f, 1454f)), vec2<f32>(868f, -1906f), 30816u, vec2<u32>(1u, 7851u)), Struct_2(Struct_1(vec2<f32>(-1577f, 2074f), vec2<f32>(1014f, 574f)), vec2<f32>(1536f, 763f), 73527u, vec2<u32>(0u, 105755u)), Struct_2(Struct_1(vec2<f32>(-890f, -2203f), vec2<f32>(1000f, 198f)), vec2<f32>(-1774f, -2348f), 4294967295u, vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(vec2<f32>(-273f, 335f), vec2<f32>(-1949f, -1263f)), vec2<f32>(-248f, -613f), 4294967295u, vec2<u32>(613u, 1u)), Struct_2(Struct_1(vec2<f32>(1201f, -987f), vec2<f32>(-356f, -1348f)), vec2<f32>(1129f, -738f), 4294967295u, vec2<u32>(0u, 33120u)), Struct_2(Struct_1(vec2<f32>(-419f, -371f), vec2<f32>(940f, -410f)), vec2<f32>(565f, -1460f), 4294967295u, vec2<u32>(0u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(109f, -1700f), vec2<f32>(408f, 984f)), vec2<f32>(-1307f, 532f), 3095u, vec2<u32>(4294967295u, 33712u)), Struct_2(Struct_1(vec2<f32>(483f, -525f), vec2<f32>(-1000f, -454f)), vec2<f32>(1000f, 792f), 37175u, vec2<u32>(12760u, 9553u)), Struct_2(Struct_1(vec2<f32>(-996f, -1916f), vec2<f32>(-463f, -423f)), vec2<f32>(128f, 482f), 0u, vec2<u32>(4294967295u, 41406u)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = 2147483647i;
    var var_1 = ~(~(~firstLeadingBit(vec3<u32>(u_input.a.x, 2409u, u_input.a.x))));
    var_1 = countOneBits(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 8457u, 0u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 51001u), vec3<u32>(var_1.x, 80684u, var_1.x) << (vec3<u32>(23737u, 0u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, 4294967295u, var_1.x))) >> (~vec3<u32>(var_1.x, u_input.a.x << (4294967295u % 32u), abs(u_input.a.x)) % vec3<u32>(32u)));
    let var_2 = 23380u;
    var var_3 = arg_2;
    return var_0;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec3<i32> {
    global0 = array<Struct_2, 4>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~(arg_1.x << (7719u % 32u)), u_input.a.x, u_input.a.x), countOneBits(vec3<u32>(1u, 9717u, 60671u) << (reverseBits(vec3<u32>(u_input.a.x, 51638u, arg_1.x)) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_1.x, 4294967295u, 1u), abs(vec3<u32>(16427u, arg_1.x, 1u)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))) >> (vec3<u32>(arg_1.x, u_input.a.x, arg_1.x) % vec3<u32>(32u)), ~countOneBits(min(vec3<u32>(u_input.a.x, arg_1.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 59290u))))), 32u)];
    var var_1 = -1i;
    return ~firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-13860i, i32(-1i) * -2147483647i, ~0i), vec3<i32>(2777i, abs(2147483647i), func_3(Struct_1(arg_0, vec2<f32>(var_0.b.x, arg_0.x)), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), var_0.a))));
}

fn func_1() -> vec4<u32> {
    let var_0 = abs(select(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1053f, 1382f)), ~u_input.a), vec3<i32>(-4560i, -9758i, 1i), true));
    let var_1 = !all(vec2<bool>(true, true));
    var var_2 = global1[_wgslsmith_index_u32(1u, 32u)];
    var var_3 = select(var_1, false, var_1 | var_1);
    let var_4 = 814f;
    return _wgslsmith_mult_vec4_u32(vec4<u32>(abs(u_input.a.x), _wgslsmith_mod_u32(66537u, ~u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11612u) ^ vec2<u32>(59834u, var_2.c), ~vec2<u32>(87355u, var_2.d.x)), u_input.a.x), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.a.x, 0u, 83484u), max(vec4<u32>(var_2.d.x, 4294967295u, u_input.a.x, var_2.c), vec4<u32>(var_2.d.x, u_input.a.x, 24929u, u_input.a.x)))) << (countOneBits(countOneBits(select(~vec4<u32>(var_2.d.x, 36411u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_2.d.x), var_1))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0.x;
    var var_1 = Struct_1(vec2<f32>(-929f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(1f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -906f) + 618f), 1f)));
    global0 = array<Struct_2, 4>();
    return Struct_1(_wgslsmith_div_vec2_f32(var_1.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(602f, -1320f) * var_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x))), true & any(vec3<bool>(false, false, arg_3.x))))), vec2<f32>(840f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)) - var_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 16>();
    global2 = array<Struct_2, 16>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-752f, _wgslsmith_f_op_f32(trunc(-3417f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(136f, -1582f), vec2<f32>(-1337f, 1777f))))));
    var var_1 = func_4(func_1(), _wgslsmith_div_vec2_i32(vec2<i32>(22388i, func_3(Struct_1(vec2<f32>(-577f, -239f), vec2<f32>(var_0.b.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2136f, 1076f, var_0.a.x))), Struct_1(var_0.b, vec2<f32>(1000f, 912f)))), ~vec2<i32>(1i, 1i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(47147i), ~1i), _wgslsmith_sub_vec2_i32(~vec2<i32>(0i, -45552i), vec2<i32>(-2145i, 1i)), -vec2<i32>(21632i, 19891i)), vec2<bool>(false, false));
    global0 = array<Struct_2, 4>();
    let var_2 = u_input.a.x & ~_wgslsmith_add_u32(~abs(u_input.a.x), 40514u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(u_input.a.x, 20006u, 1u, reverseBits(var_2) << (~55217u % 32u))));
}

