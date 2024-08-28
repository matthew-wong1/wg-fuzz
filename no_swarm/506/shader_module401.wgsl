struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    global1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~u_input.a.x, -26709i), ~(-(i32(-1i) * -5218i)), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, -(~u_input.b.x)));
    return Struct_1(all(!vec4<bool>(arg_1 & true, any(vec2<bool>(global0.a, global0.a)), false, true)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = vec3<bool>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 24477u, 0u), vec4<u32>(4294967295u, 2853u, 1u, u_input.e.x))), vec4<u32>(u_input.e.x, ~u_input.e.x, ~u_input.e.x, ~u_input.e.x)) >= ~u_input.e.x, global0.a, true || !(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, u_input.d.x), vec2<i32>(30484i, -6057i)) != 0i));
    global1 = ~_wgslsmith_add_i32(-reverseBits(-2147483647i), _wgslsmith_add_i32(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(15307i, 0i, arg_0), vec3<i32>(-2147483647i, u_input.b.x, arg_0)), _wgslsmith_sub_i32(19434i, -20396i))));
    var var_1 = u_input.d;
    return func_2(_wgslsmith_mult_u32(u_input.e.x ^ _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, 4294967295u), vec2<u32>(u_input.e.x, 75190u)), abs(u_input.e)), 28500u), arg_1.a);
}

fn func_1() -> bool {
    var var_0 = Struct_4(Struct_2(1f, select(vec2<bool>(true, global0.a), select(vec2<bool>(true, true), vec2<bool>(global0.a, global0.a), select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a), global0.a)), vec2<bool>(global0.a, global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1159f, 581f))), _wgslsmith_f_op_f32(trunc(-1000f)) != -477f, func_2(countOneBits(~u_input.e.x), false)));
    global1 = _wgslsmith_mult_i32(3948i, 3308i);
    var var_1 = Struct_1(var_0.a.b.x);
    var var_2 = func_3(1i, Struct_1(false), Struct_3(750f));
    var var_3 = var_0.a.a;
    return !(2147483647i <= -(~_wgslsmith_mult_i32(-2147483647i, u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!func_1()));
    let var_1 = func_2(u_input.e.x, var_0);
    let var_2 = var_1;
    let var_3 = ~vec4<u32>(~u_input.e.x, ~u_input.e.x, ~98014u, u_input.e.x);
    global0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(u_input.e.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_3, var_3), var_3.x)), ~(~(~vec2<u32>(u_input.e.x, 4294967295u))), false), abs(1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1040f, -507f, 407f, -1152f), vec4<f32>(1667f, -790f, 1709f, 531f), vec4<bool>(global0.a, global0.a, var_2.a, var_1.a)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(970f)), 527f, _wgslsmith_div_f32(-1018f, 845f), 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-172f, 1261f, 1267f, -1405f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(201f, 1087f, -780f, -1000f))))), u_input.b.x);
}

