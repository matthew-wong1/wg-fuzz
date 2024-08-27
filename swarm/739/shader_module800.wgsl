struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(false, vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), Struct_4(false, vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), Struct_4(true, vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), Struct_4(true, vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), Struct_4(false, vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), Struct_4(true, vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), Struct_4(true, vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), Struct_4(true, vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), Struct_4(true, vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), Struct_4(false, vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), Struct_4(true, vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), Struct_4(false, vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), Struct_4(true, vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), Struct_4(false, vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), Struct_4(true, vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), Struct_4(false, vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), Struct_4(true, vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), Struct_4(true, vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), Struct_4(false, vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), Struct_4(false, vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), Struct_4(false, vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), Struct_4(true, vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), Struct_4(true, vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), Struct_4(false, vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), Struct_4(true, vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)));

var<private> global1: array<vec4<f32>, 21>;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(-1i, vec3<f32>(-673f, 257f, -916f)), Struct_1(2147483647i, vec3<f32>(870f, 197f, 145f)), vec4<f32>(-1840f, 441f, -146f, -616f)), Struct_2(Struct_1(1i, vec3<f32>(246f, 964f, -112f)), Struct_1(48995i, vec3<f32>(-687f, -1253f, 1166f)), vec4<f32>(-806f, 792f, -322f, -768f)), Struct_2(Struct_1(4487i, vec3<f32>(-941f, -2135f, -1000f)), Struct_1(1i, vec3<f32>(-134f, 640f, -1000f)), vec4<f32>(1378f, -1000f, 1544f, 752f)), Struct_2(Struct_1(2147483647i, vec3<f32>(-489f, 199f, -1340f)), Struct_1(2147483647i, vec3<f32>(588f, -246f, -1018f)), vec4<f32>(1952f, -2373f, 1234f, -636f)), Struct_2(Struct_1(31583i, vec3<f32>(-692f, -104f, 1381f)), Struct_1(2147483647i, vec3<f32>(1080f, -457f, 1045f)), vec4<f32>(-1329f, -1518f, -516f, 2077f)), Struct_2(Struct_1(0i, vec3<f32>(1000f, 1848f, -1102f)), Struct_1(21417i, vec3<f32>(1662f, -1502f, 292f)), vec4<f32>(1041f, 270f, -472f, -277f)), Struct_2(Struct_1(1i, vec3<f32>(-696f, 154f, 199f)), Struct_1(-1i, vec3<f32>(-846f, -1678f, -662f)), vec4<f32>(1239f, 140f, -833f, 312f)), Struct_2(Struct_1(1i, vec3<f32>(1030f, 2081f, -2529f)), Struct_1(47201i, vec3<f32>(-2796f, -1348f, -1129f)), vec4<f32>(265f, -1000f, -503f, 1521f)), Struct_2(Struct_1(2147483647i, vec3<f32>(943f, 708f, -1383f)), Struct_1(2147483647i, vec3<f32>(246f, -221f, 1011f)), vec4<f32>(1396f, 1414f, -268f, -557f)), Struct_2(Struct_1(2147483647i, vec3<f32>(791f, -816f, -774f)), Struct_1(-22570i, vec3<f32>(-1723f, 897f, 339f)), vec4<f32>(286f, -1521f, -574f, -144f)), Struct_2(Struct_1(-9107i, vec3<f32>(-678f, -304f, 990f)), Struct_1(-27608i, vec3<f32>(2690f, 1000f, -2072f)), vec4<f32>(322f, 1818f, 311f, -784f)), Struct_2(Struct_1(-1i, vec3<f32>(-424f, 724f, 1265f)), Struct_1(10087i, vec3<f32>(1658f, 267f, -1385f)), vec4<f32>(-1311f, 720f, 1482f, 894f)), Struct_2(Struct_1(-27045i, vec3<f32>(286f, 440f, -1141f)), Struct_1(1i, vec3<f32>(-499f, 443f, -517f)), vec4<f32>(1239f, -102f, 460f, 1344f)), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(-418f, 1329f, 1079f)), Struct_1(40747i, vec3<f32>(958f, 1000f, -417f)), vec4<f32>(-192f, -181f, 985f, -509f)), Struct_2(Struct_1(62042i, vec3<f32>(1661f, -912f, -900f)), Struct_1(-16288i, vec3<f32>(-288f, -1252f, -863f)), vec4<f32>(-322f, 1254f, -2368f, -216f)), Struct_2(Struct_1(-19380i, vec3<f32>(-113f, 1498f, -1459f)), Struct_1(0i, vec3<f32>(-176f, 179f, 644f)), vec4<f32>(-1111f, 1283f, -1412f, 899f)), Struct_2(Struct_1(-1i, vec3<f32>(-414f, -1065f, 109f)), Struct_1(17979i, vec3<f32>(-2470f, 726f, -309f)), vec4<f32>(-580f, -1504f, 122f, 1000f)), Struct_2(Struct_1(-14359i, vec3<f32>(-394f, -1169f, -1176f)), Struct_1(6521i, vec3<f32>(203f, -1002f, -950f)), vec4<f32>(-538f, -1000f, 543f, 2876f)), Struct_2(Struct_1(0i, vec3<f32>(203f, -213f, 1809f)), Struct_1(6964i, vec3<f32>(1843f, -1331f, 1882f)), vec4<f32>(-126f, -535f, -680f, 1000f)), Struct_2(Struct_1(18143i, vec3<f32>(820f, -837f, 1497f)), Struct_1(-35446i, vec3<f32>(409f, -754f, -887f)), vec4<f32>(-1017f, -493f, 474f, -1114f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<u32> {
    global1 = array<vec4<f32>, 21>();
    global1 = array<vec4<f32>, 21>();
    global1 = array<vec4<f32>, 21>();
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(~(i32(-1i) * -12858i), firstTrailingBit(arg_2.a.a), -56862i, u_input.c.x), select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -1i) & (vec4<i32>(15387i, -1i, -15673i, 1i) >> (u_input.a % vec4<u32>(32u))), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), !select(arg_3, arg_3, false))), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.a.b.x)), _wgslsmith_f_op_f32(1002f - _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -2910f))), 319f));
    let var_1 = vec2<i32>(52247i ^ min(~arg_2.b.a >> (_wgslsmith_div_u32(arg_1, arg_1) % 32u), _wgslsmith_div_i32(var_0.a | 83456i, arg_2.a.a << (arg_1 % 32u))), -2147483647i);
    return ~u_input.a.wyx;
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<f32>(301f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(239f, -208f)))), -1299f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1015f, -568f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(683f)) * 841f)))), -759f);
    let var_1 = vec4<u32>(max(u_input.d.x, ~u_input.a.x), ~_wgslsmith_dot_vec3_u32(max(u_input.d, func_3(var_0.x, 35214u, global2[_wgslsmith_index_u32(u_input.d.x, 20u)], vec4<bool>(false, true, true, false))), countOneBits(vec3<u32>(11482u, u_input.b, 1u))), ~_wgslsmith_mult_u32(~u_input.d.x, 1u) ^ min(u_input.d.x, func_3(var_0.x, abs(u_input.d.x), global2[_wgslsmith_index_u32(~0u, 20u)], vec4<bool>(false, true, false, true)).x), _wgslsmith_mod_u32(2207u, ~(~(~u_input.d.x))));
    var var_2 = Struct_5(min(vec4<u32>(~1u, select(abs(0u), 4294967295u, true), u_input.d.x, _wgslsmith_div_u32(~0u, u_input.a.x)), vec4<u32>(~(~var_1.x), 63596u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_1.x, 1u, 44242u, u_input.b)) >> (~var_1.x % 32u), ~select(var_1.x, 1u, true))), -u_input.c.x);
    var var_3 = vec4<bool>(any(vec3<bool>(min(var_2.a.x, u_input.b) == ~var_2.a.x, true & select(true, true, true), true)), any(vec2<bool>(true, true)), true, any(vec2<bool>(true, true)) | true);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-286f, 413f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 369f)) - 901f))));
    return Struct_3(~(~(~reverseBits(23556u))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_5) -> u32 {
    var var_0 = ~arg_0.a;
    let var_1 = !(!all(vec2<bool>(true, true)));
    global2 = array<Struct_2, 20>();
    global2 = array<Struct_2, 20>();
    var_0 = _wgslsmith_sub_u32(18917u, _wgslsmith_sub_u32(arg_1.a, ~u_input.a.x));
    return select(~u_input.b, 61628u, any(vec4<bool>(!var_1, var_1, !(!var_1), any(!vec2<bool>(var_1, var_1)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> StorageBuffer {
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -256f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f)))), func_4(func_2(), func_2(), Struct_5(select(max(arg_2, arg_2), vec4<u32>(arg_0.x, arg_3.x, 17300u, u_input.a.x) << (vec4<u32>(6852u, arg_3.x, 41377u, arg_0.x) % vec4<u32>(32u)), any(vec2<bool>(true, false))), 39017i)), _wgslsmith_dot_vec3_i32(u_input.c, -u_input.c), ~vec3<i32>(select(_wgslsmith_mult_i32(arg_1, arg_1), 7842i, true), ~u_input.c.x, (i32(-1i) * -7999i) << ((31331u & u_input.b) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 21>();
    global0 = array<Struct_4, 25>();
    let x = u_input.a;
    s_output = func_1(abs(u_input.a), u_input.c.x, _wgslsmith_mod_vec4_u32(~(vec4<u32>(76091u, 4294967295u, 32080u, u_input.a.x) & vec4<u32>(u_input.d.x, 46692u, 0u, 4294967295u)), vec4<u32>(u_input.b, 15798u, abs(max(1u, 4294967295u)), ~_wgslsmith_div_u32(0u, u_input.d.x))), vec3<u32>(0u, (u_input.d.x ^ u_input.b) >> (_wgslsmith_div_u32(u_input.d.x | u_input.a.x, ~15292u) % 32u), u_input.d.x));
}

