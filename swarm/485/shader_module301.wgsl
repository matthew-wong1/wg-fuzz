struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(23601i, vec4<i32>(i32(-2147483648), 23976i, 62300i, -16404i), vec2<u32>(37248u, 84351u)), Struct_1(0i, vec4<i32>(8487i, -1i, -1i, -1i), vec2<u32>(1u, 0u)), Struct_1(30853i, vec4<i32>(i32(-2147483648), 2147483647i, 52122i, i32(-2147483648)), vec2<u32>(4294967295u, 25610u)), Struct_1(50183i, vec4<i32>(i32(-2147483648), -32499i, 2147483647i, 0i), vec2<u32>(1u, 1u)), Struct_1(1814i, vec4<i32>(2147483647i, 38846i, 44770i, 0i), vec2<u32>(4294967295u, 0u)), Struct_1(-1i, vec4<i32>(-48279i, 64125i, -1i, 2147483647i), vec2<u32>(4294967295u, 1u)), Struct_1(-1i, vec4<i32>(2147483647i, -32823i, 11614i, 0i), vec2<u32>(24902u, 3379u)), Struct_1(1i, vec4<i32>(-33229i, 2147483647i, -38101i, 2147483647i), vec2<u32>(70502u, 81616u)), Struct_1(-8501i, vec4<i32>(2147483647i, 2872i, -1i, 1i), vec2<u32>(54152u, 35690u)), Struct_1(-24893i, vec4<i32>(-10071i, i32(-2147483648), 2147483647i, 0i), vec2<u32>(0u, 4294967295u)), Struct_1(43541i, vec4<i32>(75822i, 20339i, 1i, -62692i), vec2<u32>(89402u, 9973u)), Struct_1(-4377i, vec4<i32>(-1i, 0i, 19263i, -67208i), vec2<u32>(1u, 0u)), Struct_1(-56068i, vec4<i32>(-53159i, 1i, 2147483647i, -26706i), vec2<u32>(0u, 27277u)), Struct_1(1i, vec4<i32>(26543i, -1i, -1i, 1i), vec2<u32>(1u, 43853u)), Struct_1(97993i, vec4<i32>(-20521i, 15404i, -20598i, -1i), vec2<u32>(0u, 1u)), Struct_1(0i, vec4<i32>(-25094i, 46575i, 15222i, 15716i), vec2<u32>(4215u, 13933u)), Struct_1(13882i, vec4<i32>(9696i, -1i, i32(-2147483648), 14166i), vec2<u32>(53336u, 65594u)), Struct_1(21749i, vec4<i32>(-19955i, 21470i, 34330i, 29323i), vec2<u32>(65720u, 1u)), Struct_1(0i, vec4<i32>(12894i, 26940i, i32(-2147483648), -25110i), vec2<u32>(31200u, 44076u)), Struct_1(1i, vec4<i32>(49669i, 2147483647i, 36806i, i32(-2147483648)), vec2<u32>(0u, 14939u)), Struct_1(25076i, vec4<i32>(72844i, -17013i, -1921i, 1644i), vec2<u32>(4294967295u, 22203u)), Struct_1(-86189i, vec4<i32>(2147483647i, 0i, 3718i, -1i), vec2<u32>(1u, 17782u)));

var<private> global2: array<Struct_3, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_4) -> f32 {
    global2 = array<Struct_3, 13>();
    global1 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1271f, -1253f)));
    let var_1 = Struct_3(arg_0.b, true);
    var_0 = -294f;
    return arg_2.x;
}

fn func_2() -> bool {
    var var_0 = u_input.a.x;
    global1 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1277f, _wgslsmith_f_op_f32(floor(2095f)), _wgslsmith_f_op_f32(func_3(Struct_4(vec4<bool>(false, true, false, true), Struct_2(true), Struct_2(true), true), -17946i, vec3<f32>(1000f, 584f, 320f), Struct_4(vec4<bool>(true, true, true, true), Struct_2(false), Struct_2(true), true))), 910f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2497f, 835f, 2662f, 1614f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -1097f, 864f, -2522f)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1443f, 584f, -802f, 903f))))) * vec4<f32>(-1695f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(step(690f, 480f))) * _wgslsmith_f_op_f32(f32(-1f) * -118f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2840f - 2055f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1381f)) * _wgslsmith_div_f32(-1000f, -593f)), _wgslsmith_f_op_f32(-342f - _wgslsmith_div_f32(1000f, 2316f)), u_input.c > u_input.c))));
    var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.x)), 234f), _wgslsmith_f_op_f32(min(786f, var_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-709f, -997f, -417f, var_1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -1693f)))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1506f - 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(457f - _wgslsmith_div_f32(var_1.x, var_1.x)))), var_1.x)));
    let var_2 = _wgslsmith_clamp_i32(u_input.c, u_input.c, countOneBits(u_input.c));
    return true;
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = global2[_wgslsmith_index_u32(select(0u, u_input.b.x, !all(vec2<bool>(false, true))) ^ 24003u, 13u)];
    global1 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_mult_vec2_i32(~abs(vec2<i32>(firstLeadingBit(u_input.c), min(u_input.c, -1i))), ~(-max(vec2<i32>(u_input.c, u_input.c) ^ vec2<i32>(11852i, u_input.c), -vec2<i32>(-13548i, u_input.c))));
    var var_2 = ~((_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, u_input.a.x, arg_0.x), u_input.b) >> (11612u % 32u)) & 1u);
    var var_3 = vec4<bool>(any(vec4<bool>(!(u_input.b.x != 1u), var_0.a.a, func_2() || true, var_0.a.a | (arg_0.x == u_input.b.x))), var_0.b, var_0.b, var_0.b);
    return !vec2<bool>(false, !var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = Struct_3(Struct_2(!(!(u_input.c <= -20375i))), all(func_1(~abs(vec4<u32>(0u, 21634u, var_0, 1u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711f - 228f) + _wgslsmith_f_op_f32(round(-662f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(-1061f * -1000f))), _wgslsmith_f_op_f32(-299f * -698f), -102f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2611f), -658f, _wgslsmith_f_op_f32(-439f - _wgslsmith_f_op_f32(1156f + -1786f)), 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~select(0i, u_input.c, true), _wgslsmith_sub_i32(-1i, -u_input.c), u_input.c, -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), vec4<i32>(u_input.c, u_input.c, 85417i, -29803i)), vec4<i32>(-2147483647i, 0i, u_input.c, u_input.c))), _wgslsmith_sub_u32(~select(48356u, var_0, var_1.b) << (0u % 32u), u_input.b.x));
}

