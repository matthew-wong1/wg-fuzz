struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    return 2147483647i;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_u32(~(~u_input.a), 48110u, ~(~_wgslsmith_div_u32(~1u, firstTrailingBit(u_input.a))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -874f) + _wgslsmith_div_f32(771f, 461f)))))), 872f, arg_0);
    let var_2 = 0i;
    var var_3 = Struct_1(!arg_2, !vec2<bool>(!(!arg_2), arg_2), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(931f)) - 737f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))))));
    let var_4 = !(!(!(!(!vec3<bool>(true, false, var_3.a)))));
    return ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, ~4294967295u, ~9406u), abs(~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 52146u))), select(max(select(vec3<u32>(48395u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a), var_3.b.x), abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), abs(vec3<u32>(u_input.a, u_input.a, 28594u)), vec3<bool>(all(var_3.b), true, all(vec3<bool>(true, false, true)))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = arg_0;
    var var_1 = arg_1;
    var var_2 = _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(63731u, u_input.a, 4294967295u)) << (vec3<u32>(u_input.a, reverseBits(1u), _wgslsmith_mod_u32(u_input.a, u_input.a)) % vec3<u32>(32u))), select(~_wgslsmith_div_vec3_u32(vec3<u32>(23784u, 1u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)) | abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, 25115u), vec3<u32>(u_input.a, u_input.a, 3555u))), countOneBits(func_3(arg_1.c.x, arg_1.d, false)), vec3<bool>(all(vec4<bool>(true, false, var_1.a, var_1.d)) || true, true, select(false, true, arg_1.d) && arg_1.a)));
    var_2 = ~vec3<u32>(~u_input.a, ~4294967295u, 56166u);
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -_wgslsmith_sub_i32(1i, 1i), 5504i), vec3<i32>(1i, func_1(1u, Struct_1(var_1.a, select(vec2<bool>(false, var_1.d), vec2<bool>(false, var_1.a), vec2<bool>(true, false)), -2728f), Struct_1(true, vec2<bool>(arg_1.d, arg_1.d), arg_1.b)), arg_0));
    return select(_wgslsmith_sub_i32(arg_0, ~_wgslsmith_mod_i32(arg_0, arg_0)) <= (arg_0 ^ -2147483647i), var_1.a, all(!vec3<bool>(arg_1.a, false, var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, select(vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(19264u, 33700u, u_input.a), vec3<u32>(4294967295u, u_input.a, 60990u)) <= (u_input.a << (u_input.a % 32u)), func_2(func_1(1u, Struct_1(true, vec2<bool>(true, true), -1000f), Struct_1(true, vec2<bool>(true, true), 808f)), Struct_2(false, -1288f, vec2<f32>(723f, -184f), false), _wgslsmith_f_op_f32(417f * 509f))), false), 1355f);
    var var_1 = ~countOneBits(-2147483647i);
    var_1 = _wgslsmith_mod_i32(abs(-(~7783i)), 2147483647i ^ _wgslsmith_sub_i32(min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(18195i, -3951i, 0i), vec3<i32>(5715i, -2147483647i, 0i))), func_1(u_input.a << (u_input.a % 32u), Struct_1(false, vec2<bool>(var_0.b.x, var_0.a), var_0.c), Struct_1(var_0.b.x, vec2<bool>(false, var_0.b.x), var_0.c))));
    let var_2 = Struct_1(false, var_0.b, 1019f);
    var_0 = var_2;
    let var_3 = -1477f;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, _wgslsmith_sub_u32(~1u, u_input.a) >> (~u_input.a % 32u)), vec4<u32>(~func_3(1000f, any(vec4<bool>(var_2.b.x, var_0.a, var_2.a, false)), true).x, reverseBits(~u_input.a), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(f32(-1f) * -367f)), any(vec3<bool>(var_2.b.x, var_0.b.x, false)), !all(vec4<bool>(true, true, true, var_2.a))).x, _wgslsmith_add_u32(~(u_input.a | 16460u), 4294967295u)), firstTrailingBit(vec3<u32>(u_input.a, ~23878u, u_input.a ^ 38087u)) | vec3<u32>(u_input.a >> (~23776u % 32u), max(~u_input.a, ~33578u), ~22097u), _wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_div_u32(u_input.a, u_input.a)) & func_3(-1000f, true, true).yy, vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 4294967295u)), -37501i);
}

