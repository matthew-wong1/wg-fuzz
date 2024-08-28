struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 1u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = vec2<i32>(~(-(~firstLeadingBit(u_input.a))), u_input.a);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1240f)))));
    global1 = 24926u;
    var var_2 = vec2<i32>(_wgslsmith_add_i32(max(abs(_wgslsmith_mult_i32(1i, u_input.a)), -u_input.a), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_0.x, var_0.x), vec2<i32>(u_input.a, var_0.x), false), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 34167i), vec2<i32>(var_0.x, 213i))), var_0.x)), -32926i);
    var var_3 = Struct_1(138f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + var_3.a) + 1473f), _wgslsmith_f_op_f32(f32(-1f) * -1042f), false)));
}

fn func_2(arg_0: i32, arg_1: bool) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(arg_1, arg_1))), _wgslsmith_f_op_f32(-var_0.a)) * -1248f), 450f));
    var var_1 = vec4<i32>(-arg_0 << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, u_input.b) | (0u >> (u_input.b % 32u)), ~1u) % 32u), -420i, -11415i, ~u_input.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(var_0.a)));
    var var_3 = any(select(select(select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(false, arg_1, true, true), arg_1), vec4<bool>(false, true, arg_1, arg_1), arg_1), !select(vec4<bool>(false, arg_1, true, true), vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(false, false, true, arg_1)), arg_1)) || !any(select(!vec4<bool>(false, arg_1, false, arg_1), !vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(true, true, true, arg_1)));
    return vec2<f32>(var_2.a, _wgslsmith_f_op_f32(floor(659f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(3745i, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * 1046f)), global0.a, _wgslsmith_f_op_f32(-1047f - arg_0.a))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1803f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1.x) - -337f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, 168f) + _wgslsmith_f_op_f32(arg_0.a * -201f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-2473f)))))) * vec4<f32>(384f, -1308f, _wgslsmith_f_op_f32(var_1.x - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1060f, arg_0.a)) - global0.a))));
    let var_2 = vec4<i32>(-u_input.a, ~_wgslsmith_add_i32(select(i32(-1i) * -1i, u_input.a, true), 8879i), max(u_input.a, -1i), 0i);
    let var_3 = ~(-2147483647i);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = ~vec2<u32>(~(1u & u_input.b), 5373u);
    global0 = func_1(func_1(arg_1));
    global1 = 4294967295u;
    global0 = Struct_1(-1000f);
    return select(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.a == arg_3)), vec2<bool>(!select(select(true, true, false), true, false), false), false);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> u32 {
    global1 = _wgslsmith_mult_u32(u_input.b, ~0u);
    global0 = Struct_1(global0.a);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1701f - global0.a) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.a, 766f, arg_1)), _wgslsmith_f_op_f32(-arg_0.a)))));
    var var_1 = arg_0;
    let var_2 = true;
    return (arg_3 & ~1u) | 13741u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-1731f, -236f);
    let var_1 = _wgslsmith_div_u32(4294967295u, ~u_input.b) == func_5(Struct_1(-1024f), all(func_4(Struct_1(var_0), func_1(Struct_1(var_0)), var_0, _wgslsmith_f_op_f32(-global0.a))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0))))), 0u);
    global0 = func_1(Struct_1(var_0));
    global0 = func_1(func_1(Struct_1(806f)));
    let var_2 = 72927u;
    let var_3 = ~u_input.b & select(u_input.b, _wgslsmith_dot_vec3_u32(select(vec3<u32>(6057u, 1u, 4294967295u), vec3<u32>(u_input.b, var_2, 20867u), true), vec3<u32>(var_2, ~var_2, 24088u)), all(!vec2<bool>(false, var_1)));
    let var_4 = func_1(func_1(func_1(Struct_1(_wgslsmith_f_op_f32(min(global0.a, 787f))))));
    global0 = Struct_1(1049f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(var_3, 0u), ~1u), ~min(~1u, u_input.b)), _wgslsmith_div_vec2_u32(countOneBits(select(vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(var_2, 101011u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(24890u, u_input.b), vec2<u32>(81219u, 0u), vec2<u32>(0u, 0u)), vec2<bool>(var_1, var_1))), abs(_wgslsmith_add_vec2_u32(min(vec2<u32>(var_2, 24004u), vec2<u32>(20320u, var_2)), vec2<u32>(u_input.b, u_input.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, var_4.a, var_4.a, 396f)));
}

