struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(1201f, 2310f), 0u, 249f, 11918i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    let var_0 = -2147483647i;
    var var_1 = global0[_wgslsmith_index_u32(~(select(~u_input.b, u_input.b, any(select(arg_0.yzz, arg_0.ywz, vec3<bool>(true, true, arg_0.x)))) & u_input.a), 1u)];
    return global0[_wgslsmith_index_u32(var_1.b, 1u)];
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 1>();
    var var_0 = func_1(vec4<bool>(true, any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true))), false, select(_wgslsmith_div_u32(9187u, 41441u), _wgslsmith_div_u32(arg_1.x, 1u), all(vec4<bool>(true, false, true, true))) == _wgslsmith_clamp_u32(arg_1.x ^ 60045u, 32705u, 39656u)));
    global0 = array<Struct_1, 1>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -1000f)));
    var var_2 = reverseBits(-select(arg_2.d, -2147483647i, arg_0 <= var_0.b));
    return true;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    return select(!vec4<bool>(all(!vec2<bool>(arg_0, true)), false, any(!vec4<bool>(arg_0, false, false, true)), !arg_0), vec4<bool>(!arg_0, func_3(_wgslsmith_mult_u32(u_input.b, 67879u) >> (~u_input.a % 32u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 32078u, u_input.b), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.b)), 16521u, 14852u, u_input.b), func_1(select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), arg_0, !(!arg_0)), !vec4<bool>(arg_0 & true, any(vec2<bool>(arg_0, arg_0)), false, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c))) <= _wgslsmith_f_op_f32(min(arg_2.a.x, _wgslsmith_div_f32(-194f, arg_1.a.x)));
    global0 = array<Struct_1, 1>();
    var var_1 = global0[_wgslsmith_index_u32(arg_2.b, 1u)];
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = func_1(!vec4<bool>(true, false, true, all(vec2<bool>(true, true))));
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    let var_1 = func_4(func_1(vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(u_input.b, 1u)], func_1(select(func_2(true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), func_2(true).x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(min(-vec4<i32>(-42181i, -31221i, -var_0.d, var_0.d), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, -2147483647i, var_0.d, var_1.d), vec4<i32>(9465i, var_0.d, var_0.d, var_1.d)), -2147483647i, -func_4(var_1, Struct_1(vec2<f32>(-606f, var_1.a.x), 84734u, var_1.a.x, var_0.d), global0[_wgslsmith_index_u32(var_1.b, 1u)]).d, 25668i)), ~39599u, 1u, _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(0u, 4294967295u)), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, 54019u), vec2<u32>(u_input.b, 31082u))), vec2<u32>(~var_1.b, 44501u)) | ~abs(vec2<u32>(var_1.b, 31389u)), ~(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, var_0.d, var_0.d), vec3<i32>(1062i, 0i, var_0.d)), ~var_1.d) | 0i));
}

