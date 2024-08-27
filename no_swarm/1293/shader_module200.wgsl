struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<f32>(1025f, 1053f, -1077f, 270f), -1000f, true, vec2<u32>(11613u, 1u)), Struct_1(vec4<f32>(371f, 799f, 261f, 939f), 1255f, false, vec2<u32>(24049u, 0u)), Struct_1(vec4<f32>(-819f, 284f, 365f, 488f), -894f, true, vec2<u32>(1u, 4294967295u)), Struct_1(vec4<f32>(579f, -148f, 193f, 154f), 467f, false, vec2<u32>(13427u, 91799u)), Struct_1(vec4<f32>(-1561f, -2759f, 140f, 150f), 316f, true, vec2<u32>(33556u, 4294967295u)), Struct_1(vec4<f32>(1234f, 865f, -1000f, -244f), -252f, true, vec2<u32>(4294967295u, 0u)), Struct_1(vec4<f32>(-186f, 650f, -2358f, -750f), 124f, true, vec2<u32>(66738u, 1u)), Struct_1(vec4<f32>(415f, -144f, 2297f, -164f), -875f, false, vec2<u32>(1u, 0u)), Struct_1(vec4<f32>(-829f, -371f, 627f, -1000f), -1101f, true, vec2<u32>(0u, 0u)), Struct_1(vec4<f32>(-647f, 1066f, -1700f, 646f), 1437f, true, vec2<u32>(54695u, 1u)), Struct_1(vec4<f32>(-1160f, -1549f, 1059f, -483f), -1056f, true, vec2<u32>(65877u, 42209u)), Struct_1(vec4<f32>(-822f, 1656f, -504f, 300f), 200f, false, vec2<u32>(52873u, 35701u)), Struct_1(vec4<f32>(-1518f, 945f, 415f, -396f), -668f, true, vec2<u32>(65790u, 4294967295u)), Struct_1(vec4<f32>(248f, 1813f, -1430f, -4344f), 1254f, true, vec2<u32>(1165u, 82269u)), Struct_1(vec4<f32>(536f, -1701f, -191f, 546f), 375f, true, vec2<u32>(22775u, 93473u)), Struct_1(vec4<f32>(133f, -1954f, -1000f, -403f), -1303f, false, vec2<u32>(1u, 15649u)), Struct_1(vec4<f32>(-621f, -1393f, -2479f, -1000f), -175f, true, vec2<u32>(6805u, 4294967295u)), Struct_1(vec4<f32>(-1000f, -1327f, 1411f, 364f), 106f, false, vec2<u32>(1u, 2019u)), Struct_1(vec4<f32>(-1595f, 398f, -159f, -820f), -699f, false, vec2<u32>(57463u, 10026u)), Struct_1(vec4<f32>(-547f, -705f, -423f, -1819f), -795f, true, vec2<u32>(4294967295u, 79962u)), Struct_1(vec4<f32>(448f, -1213f, -1007f, 878f), 465f, false, vec2<u32>(8248u, 7888u)), Struct_1(vec4<f32>(-938f, -128f, -198f, -143f), 1103f, false, vec2<u32>(4294967295u, 69399u)), Struct_1(vec4<f32>(-741f, 907f, -1000f, -809f), 193f, false, vec2<u32>(4294967295u, 20764u)), Struct_1(vec4<f32>(1000f, -683f, 717f, 1000f), 865f, true, vec2<u32>(1u, 1u)), Struct_1(vec4<f32>(1000f, 335f, 699f, 624f), 2238f, false, vec2<u32>(0u, 4294967295u)), Struct_1(vec4<f32>(1184f, 773f, 202f, 400f), 1015f, false, vec2<u32>(11416u, 66981u)), Struct_1(vec4<f32>(-1000f, 736f, 1150f, 1014f), 1865f, true, vec2<u32>(58404u, 0u)), Struct_1(vec4<f32>(747f, 531f, -290f, 678f), 736f, false, vec2<u32>(0u, 4294967295u)));

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(-566f, -1102f, 1995f, -205f), -985f, true, vec2<u32>(38057u, 58335u)), Struct_1(vec4<f32>(942f, 649f, -932f, -540f), 154f, false, vec2<u32>(41801u, 1u)), Struct_1(vec4<f32>(-383f, -583f, 1000f, 772f), -744f, false, vec2<u32>(92254u, 34704u)), Struct_1(vec4<f32>(-344f, 1471f, -1228f, -1278f), 1000f, false, vec2<u32>(69453u, 0u)), Struct_1(vec4<f32>(628f, 709f, 540f, -769f), 803f, false, vec2<u32>(59111u, 4294967295u)), Struct_1(vec4<f32>(-311f, 1000f, 486f, -118f), 120f, true, vec2<u32>(33826u, 1u)), Struct_1(vec4<f32>(250f, 559f, -1000f, 1478f), -195f, false, vec2<u32>(38627u, 31758u)), Struct_1(vec4<f32>(-553f, -1051f, 514f, -1926f), -384f, true, vec2<u32>(76339u, 7207u)), Struct_1(vec4<f32>(1114f, 1892f, -1000f, -175f), -566f, true, vec2<u32>(0u, 4294967295u)), Struct_1(vec4<f32>(-140f, -2293f, -1154f, -144f), 188f, false, vec2<u32>(32379u, 1807u)), Struct_1(vec4<f32>(502f, -2057f, -1158f, 397f), -1898f, false, vec2<u32>(0u, 62307u)), Struct_1(vec4<f32>(900f, 107f, 584f, -1592f), 926f, false, vec2<u32>(19454u, 80381u)), Struct_1(vec4<f32>(-818f, -408f, -2112f, 157f), -845f, false, vec2<u32>(4294967295u, 6632u)), Struct_1(vec4<f32>(869f, -230f, -1000f, -586f), 1148f, true, vec2<u32>(1u, 1u)), Struct_1(vec4<f32>(-236f, -1207f, 1690f, 1287f), 362f, false, vec2<u32>(12595u, 36587u)), Struct_1(vec4<f32>(-978f, 365f, -403f, -1000f), 1412f, true, vec2<u32>(10005u, 58476u)), Struct_1(vec4<f32>(426f, -1118f, 636f, -483f), -1786f, false, vec2<u32>(94870u, 4137u)), Struct_1(vec4<f32>(-3258f, -356f, -914f, 505f), -2412f, true, vec2<u32>(110988u, 28725u)), Struct_1(vec4<f32>(-214f, -480f, -690f, 460f), -320f, false, vec2<u32>(1u, 4294967295u)), Struct_1(vec4<f32>(175f, 1288f, -2023f, 1027f), -619f, false, vec2<u32>(1u, 1u)), Struct_1(vec4<f32>(-1279f, -155f, -1000f, -1505f), 178f, true, vec2<u32>(1u, 43697u)), Struct_1(vec4<f32>(634f, -274f, -1146f, 571f), -792f, true, vec2<u32>(1u, 76102u)), Struct_1(vec4<f32>(-1254f, 1596f, 1142f, -760f), 190f, false, vec2<u32>(0u, 0u)), Struct_1(vec4<f32>(1770f, -1183f, -1000f, -189f), -1469f, false, vec2<u32>(1u, 0u)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<u32>) -> u32 {
    var var_0 = countOneBits(countOneBits(vec3<u32>(_wgslsmith_div_u32(abs(32405u), 4294967295u), ~countOneBits(arg_3.x), 1u)));
    let var_1 = ~24401u;
    var_0 = select(_wgslsmith_clamp_vec3_u32(arg_3.yxw, ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 11671u), vec3<u32>(6140u, 17572u, arg_1.d.x)), ~vec3<u32>(arg_1.d.x, 0u, arg_3.x) & vec3<u32>(arg_3.x, arg_3.x, 1u)), arg_3.ywx, !select(arg_2, !arg_2, !vec3<bool>(false, false, arg_2.x))) | arg_3.yzx;
    global1 = array<Struct_1, 24>();
    var_0 = vec3<u32>(45239u, var_0.x, firstLeadingBit(~0u) >> (~_wgslsmith_mult_u32(22581u, 1u | arg_1.d.x) % 32u));
    return arg_1.d.x;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1886f * _wgslsmith_f_op_f32(abs(-565f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-277f + 736f), _wgslsmith_f_op_f32(abs(-693f)), -151f, 384f)), 657f, all(!select(vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, arg_0, false, false))), firstLeadingBit(arg_1)), !vec3<bool>(!any(vec4<bool>(true, false, arg_0, arg_0)), all(vec2<bool>(true, true)), arg_0), vec4<u32>(_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.c, u_input.c, u_input.c) >> (vec3<u32>(arg_1.x, 1u, arg_1.x) % vec3<u32>(32u))) >> (vec3<u32>(arg_1.x, arg_1.x, 4294967295u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(1u, u_input.c, u_input.c) | vec3<u32>(u_input.c, u_input.c, 1u))), arg_1.x, _wgslsmith_dot_vec2_u32(arg_1, countOneBits(~vec2<u32>(1u, arg_1.x))), arg_1.x)), 28u)];
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.yzx - vec3<f32>(_wgslsmith_f_op_f32(1000f + -307f), _wgslsmith_f_op_f32(-593f * -112f), var_0.b))), _wgslsmith_div_vec3_f32(var_1.a.zwz, _wgslsmith_f_op_vec3_f32(-var_0.a.wzz))));
    global1 = array<Struct_1, 24>();
    let var_3 = abs(-(vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), -2903i, u_input.a, _wgslsmith_sub_i32(2147483647i, u_input.a)) ^ vec4<i32>(-u_input.b.x, -13298i, -29956i, abs(u_input.b.x))));
    return true;
}

fn func_3() -> vec2<u32> {
    var var_0 = ~vec3<u32>(~_wgslsmith_sub_u32(10869u, 0u), u_input.c, u_input.c << (u_input.c % 32u)) >> (min(abs(firstLeadingBit(~vec3<u32>(4294967295u, u_input.c, 4294967295u))), vec3<u32>(u_input.c, min(u_input.c, 28455u), u_input.c) & (~vec3<u32>(24505u, 0u, 0u) ^ select(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(u_input.c, 58463u, u_input.c), true))) % vec3<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(392f, -1345f, -1135f, -433f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(261f, -173f, 1825f, -974f)))))), vec4<f32>(_wgslsmith_div_f32(-528f, -839f), 1f, _wgslsmith_f_op_f32(579f - 266f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(935f - 688f) - _wgslsmith_f_op_f32(floor(-1128f))))), -1512f, 0i >= ~(~u_input.b.x), ~firstLeadingBit(select(var_0.zy, ~var_0.zz, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(107f - var_1.b))), _wgslsmith_f_op_f32(step(var_1.b, var_1.a.x))));
    let var_3 = _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))));
    let var_4 = vec2<bool>(~var_0.x == ~var_1.d.x, true);
    return vec2<u32>(139049u, var_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    let var_0 = (any(vec3<bool>(true, true, true)) | !func_1(false, vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(24498u, 1u) % vec2<u32>(32u)))) | true;
    let var_1 = u_input.b;
    global1 = array<Struct_1, 24>();
    global0 = array<Struct_1, 28>();
    let var_2 = _wgslsmith_add_vec2_i32(select(vec2<i32>(var_1.x << (23914u % 32u), ~u_input.a), u_input.b.xz, var_0) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(26122u, 0u), vec2<u32>(u_input.c, u_input.c), vec2<u32>(32150u, u_input.c)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(1u, 0u)), func_3()) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(-_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(2147483647i, u_input.a)), vec2<i32>(2147483647i, u_input.a) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), vec2<i32>(abs(1i), u_input.b.x)));
    global1 = array<Struct_1, 24>();
    global0 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, 58431i), -var_1), abs(-2147483647i), var_2.x, 14884i), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(~u_input.c, abs(4294967295u))), vec2<u32>(~0u, ~36155u)), _wgslsmith_mod_vec2_i32(var_1.zx, vec2<i32>(-1i) * -vec2<i32>(-25439i, -1i)), ~(~(vec2<u32>(u_input.c, u_input.c) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(93319u, u_input.c), vec2<u32>(0u, 38001u), vec2<u32>(u_input.c, 2037u)) % vec2<u32>(32u)))));
}

