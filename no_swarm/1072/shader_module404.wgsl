struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(firstLeadingBit(~1i));
    var var_1 = ~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(18849u, arg_0.d, 26064u), select(vec3<u32>(arg_0.d, arg_0.d, 24708u), vec3<u32>(4294967295u, arg_0.d, arg_0.d), false))) ^ vec3<u32>(~0u, 0u, u_input.a.x);
    let var_2 = arg_0;
    var var_3 = arg_0;
    var var_4 = (var_0.a | 25379i) != arg_0.c.x;
    return vec4<bool>(true, true, true, true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> Struct_2 {
    global0 = select(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_0.b.x), u_input.a), ~5521u) > u_input.a.x, arg_1.x, select(arg_1.x, arg_1.x, !arg_1.x));
    global0 = any(!arg_1.yx);
    var var_0 = func_3(arg_0);
    global0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-950f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1729f)) - _wgslsmith_f_op_f32(1000f - -905f))) + -485f));
    return Struct_2(arg_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = -4696i & arg_0.a;
    var var_2 = !func_3(Struct_1(firstLeadingBit(arg_0.a), vec3<u32>(4294967295u, u_input.a.x, arg_1.x & u_input.a.x), select(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<i32>(31698i, arg_0.a, arg_0.a, arg_0.a), var_0) | vec4<i32>(-2147483647i, -2147483647i, arg_0.a, -16884i), firstTrailingBit(1u | arg_1.x))).zxy;
    var_2 = !select(!vec3<bool>(true, !var_2.x, all(vec3<bool>(var_2.x, true, false))), select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, false), arg_0.a >= arg_0.a), vec3<bool>(var_2.x, true, var_0 || var_2.x), vec3<bool>(select(true, true, var_0), true, all(vec3<bool>(false, var_0, var_2.x)))), !(!(arg_1.x == 4294967295u)));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~abs(20800u)), 4294967295u, 1u, u_input.a.x), vec4<u32>(~18773u, abs(~0u), abs(abs(_wgslsmith_sub_u32(0u, arg_1.x))), ~(~countOneBits(57071u))));
    return var_2.zx;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> i32 {
    global0 = all(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), false));
    global0 = false && (any(func_4(func_2(arg_0, vec4<bool>(false, false, false, false), arg_0.d), _wgslsmith_div_vec2_u32(arg_0.b.xx, arg_0.b.zx))) | ((abs(4294967295u) >= ~arg_0.b.x) != any(select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    global0 = false;
    var var_0 = _wgslsmith_mult_i32(0i, 85563i);
    global0 = func_4(Struct_2(~5167i), ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), firstTrailingBit(vec2<u32>(arg_0.b.x, u_input.a.x))))).x;
    return min(_wgslsmith_sub_i32(_wgslsmith_mod_i32(~32089i, 1i), arg_0.a), arg_2.a) ^ -45938i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(vec3<bool>(any(vec3<bool>(false, true, true)) && false, true, func_1(Struct_1(-2376i, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec4<i32>(-2147483647i, 1849i, 0i, -15338i), u_input.a.x), -1309f, Struct_2(22836i)) > 0i)) && false;
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = Struct_1(countOneBits(-(~max(-73789i, 2147483647i))), vec3<u32>(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), abs(u_input.a.x), 84513u), -(~min(vec4<i32>(1i, -15353i, 0i, -20441i), countOneBits(vec4<i32>(-8139i, 22724i, 28479i, 2147483647i)))), u_input.a.x);
    let var_2 = true;
    let var_3 = Struct_2(~var_1.c.x);
    var_0 = vec3<bool>(true, true, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(select(50858u, var_1.b.x, var_2), u_input.a.x, select(113770u, u_input.a.x, var_0.x), 0u)), 991f, vec3<f32>(_wgslsmith_div_f32(-291f, 263f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-449f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(319f, 1237f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(119f)), -731f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1150f)), -1432f))))), -52337i);
}

