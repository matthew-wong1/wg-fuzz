struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 25025i;

var<private> global1: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    var var_0 = any(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), true));
    var var_1 = 58612u;
    var var_2 = abs(~(~vec4<u32>(17880u, u_input.b, 4294967295u, 0u))) & _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b, 15792u | u_input.b, u_input.b, u_input.b << (u_input.b % 32u)), ~min(vec4<u32>(u_input.b, 24428u, u_input.b, 4294967295u), vec4<u32>(33500u, 4294967295u, u_input.b, 26729u))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 25053u, 46995u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u))));
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))));
    return _wgslsmith_div_u32(var_2.x, abs(~(~u_input.b)));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: i32, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -940f), _wgslsmith_div_f32(915f, 1083f), true)))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> u32 {
    global1 = 20289u;
    global0 = u_input.a;
    global1 = 14758u;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(arg_0.b, Struct_5(arg_2, Struct_4(arg_0, func_3(vec2<i32>(-34704i, 11900i), vec2<f32>(arg_1, arg_1), vec2<i32>(arg_0.b, 7771i), arg_1))), -(~(arg_2 << (0u % 32u))), arg_0.a.x)));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = ~_wgslsmith_sub_u32(38922u, abs(select(func_2(Struct_2(vec2<u32>(u_input.b, 4577u), u_input.a), arg_0.a, -34680i), _wgslsmith_mult_u32(69183u, u_input.b), select(true, true, true))));
    let var_1 = func_2(Struct_2(~(~vec2<u32>(u_input.b, 0u)), ~(u_input.a << (_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b) % 32u))), 101f, _wgslsmith_sub_i32(u_input.a, 13518i));
    var var_2 = Struct_5(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1857i, ~_wgslsmith_div_i32(u_input.a, u_input.a)), ~0i), Struct_4(Struct_2(select(~vec2<u32>(var_1, var_1), vec2<u32>(u_input.b, 1u), all(vec3<bool>(false, false, false))), -abs(303i)), 19997u));
    var var_3 = arg_0.a;
    let var_4 = var_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, -1239f, -1504f), vec4<f32>(arg_0.a, 139f, arg_0.a, -1526f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -1420f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, arg_0.a, 797f, arg_0.a)), vec4<bool>(true, true, true, true)))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<f32>) -> Struct_1 {
    global1 = abs(_wgslsmith_clamp_u32((reverseBits(0u) & u_input.b) >> (_wgslsmith_mod_u32(firstLeadingBit(0u), _wgslsmith_div_u32(u_input.b, 86409u)) % 32u), 19228u, 59591u));
    let var_0 = Struct_5(abs(u_input.a) >> (_wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.b, 28646u), u_input.b) % 32u), Struct_4(Struct_2(vec2<u32>(_wgslsmith_mult_u32(u_input.b, 1u), _wgslsmith_mult_u32(1u, u_input.b)), u_input.a), u_input.b));
    global0 = ~(-u_input.a);
    let var_1 = vec4<i32>(1i, -1i, var_0.b.a.b, firstTrailingBit(-((var_0.a << (u_input.b % 32u)) >> (1u % 32u))));
    var var_2 = Struct_1(_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(1000f, -1095f)));
    return Struct_1(arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1802f, -1197f), vec2<f32>(-1117f, -626f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(202f, 1000f) - vec2<f32>(-597f, 1392f)))) + vec2<f32>(_wgslsmith_f_op_f32(1131f - 1669f), _wgslsmith_f_op_f32(min(781f, -1040f)))))));
    let var_1 = func_5(vec2<i32>(-u_input.a, 3983i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(_wgslsmith_f_op_f32(floor(-516f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-599f, var_0.x, -1819f, var_0.x) - vec4<f32>(var_0.x, var_0.x, 984f, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1067f, var_0.x, 771f, var_0.x) + vec4<f32>(-221f, 2175f, -251f, var_0.x))))));
    let var_2 = _wgslsmith_mult_i32(u_input.a, firstLeadingBit(_wgslsmith_mod_i32(75767i, u_input.a)));
    let var_3 = Struct_5(u_input.a, Struct_4(Struct_2(vec2<u32>(abs(42050u), ~u_input.b), var_2), 1u));
    var var_4 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_4(-var_2, Struct_5(11994i, Struct_4(var_3.b.a, _wgslsmith_clamp_u32(1u, u_input.b, 13073u))), _wgslsmith_add_i32(var_2, var_2), u_input.b)));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_0.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, -242f), vec2<f32>(831f, -1000f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-343f, var_1.a), vec2<f32>(484f, -1406f), false)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(var_1.a, var_1.a), -467f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-255f + var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(func_5(vec2<i32>(u_input.a, var_2), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(106f - -445f), _wgslsmith_div_f32(1000f, 405f), _wgslsmith_f_op_f32(var_0.x + var_0.x))).a, _wgslsmith_f_op_f32(1000f + -793f)), 1i, ~var_3.b.a.a.x, vec4<u32>(~7667u, u_input.b, firstTrailingBit(var_3.b.b), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, var_3.b.a.a.x), var_3.b.a.a.x))), var_1.a);
}

