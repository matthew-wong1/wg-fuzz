struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_1 {
    var var_0 = 60247u;
    let var_1 = firstLeadingBit(~_wgslsmith_add_vec4_u32(~select(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 0u), false), ~(vec4<u32>(17062u, 1u, u_input.a, 50385u) ^ vec4<u32>(27056u, 0u, 4294967295u, 28101u))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) - _wgslsmith_f_op_f32(2810f - 1000f))))), true);
    var var_3 = var_2;
    var var_4 = Struct_2(var_3.a, (any(vec3<bool>(var_3.b, var_2.b, true)) || var_3.b) != (all(vec4<bool>(true, true, var_3.b, var_3.b)) | (var_2.b & false)));
    return Struct_1(-261f, _wgslsmith_sub_u32(~103552u, u_input.a), false);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = 15508u;
    return any(select(!(!select(vec2<bool>(arg_3.c, false), vec2<bool>(arg_3.c, false), vec2<bool>(arg_3.c, false))), vec2<bool>(false, false), vec2<bool>(true, arg_3.c)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(125f, arg_1)), _wgslsmith_f_op_f32(379f * 433f), !func_3(arg_3, _wgslsmith_add_i32(u_input.c.x, u_input.b), _wgslsmith_f_op_f32(floor(arg_1)), func_2()))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(750f, !(!all(vec2<bool>(false, true)) || select(any(vec3<bool>(true, false, false)), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(62630u, u_input.a, 67804u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 62996u, 0u), vec3<u32>(u_input.a, u_input.a, 0u))), _wgslsmith_f_op_f32(var_0.a - var_0.a), Struct_2(_wgslsmith_f_op_f32(-var_0.a), var_0.b), _wgslsmith_f_op_f32(min(var_0.a, -528f)))), 2095f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a))), vec3<i32>(32668i, _wgslsmith_div_i32(u_input.b, u_input.b), u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(3854u, 70204u, 0u, u_input.a), vec4<u32>(u_input.a, 21103u, 1u, 42473u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 52454u, u_input.a, 9197u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 18316u, u_input.a, u_input.a))), _wgslsmith_mult_u32(countOneBits(4294967295u), 70133u), ~firstTrailingBit(4294967295u)), vec4<u32>(_wgslsmith_add_u32(1u, u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a) >> (~73795u % 32u), 49077u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), ~vec3<u32>(4294967295u, 4294967295u, 14857u)))), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(func_1(u_input.a, 1f, Struct_2(_wgslsmith_div_f32(var_0.a, -1017f), true), -159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(-var_0.a), true)))));
}

