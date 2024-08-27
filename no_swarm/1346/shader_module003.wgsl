struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec3<bool>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>) -> bool {
    var var_0 = Struct_1(!all(vec3<bool>(true, true, false)), ~reverseBits((vec4<u32>(1u, arg_1.x, arg_1.x, 4294967295u) | vec4<u32>(arg_1.x, arg_1.x, 0u, 45399u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 3193u, arg_1.x), vec4<u32>(0u, 0u, 1u, arg_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1137f)))));
    let var_1 = false;
    var var_2 = Struct_1(~reverseBits(_wgslsmith_sub_u32(112434u, 28635u)) >= arg_1.x, ~firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(var_0.b.x, 4294967295u, arg_1.x, var_0.b.x)), var_0.b)), -204f);
    return !((-2147483647i > u_input.a) | !any(vec2<bool>(var_2.a, false))) && var_0.a;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(378f, -1811f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2031f, arg_1, func_3(~u_input.b, select(arg_2.b.ywz, arg_2.b.wyz, arg_2.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))))));
    return arg_2.b.x;
}

fn func_1() -> Struct_1 {
    let var_0 = reverseBits(select(2147483647i, firstTrailingBit(u_input.b.x) | (1i << (0u % 32u)), true) | -33304i);
    let var_1 = 28025i;
    let var_2 = Struct_2(false, 17151u, vec3<u32>(~_wgslsmith_mult_u32(1u, func_2(Struct_3(44006u), -1110f, Struct_1(false, vec4<u32>(6173u, 27772u, 4294967295u, 0u), -1199f), vec2<u32>(73319u, 23669u))), firstTrailingBit(1u), _wgslsmith_div_u32(_wgslsmith_div_u32(~0u, ~28506u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 13468u), vec3<u32>(13755u, 1u, 52161u)), _wgslsmith_sub_u32(75544u, 39791u)))));
    var var_3 = vec2<i32>(-12721i >> (countOneBits(var_2.b) % 32u), ~select(u_input.b.x, u_input.a, true) ^ -_wgslsmith_dot_vec4_i32(abs(u_input.b), vec4<i32>(0i, -3627i, 2147483647i, -1i)));
    var_3 = vec2<i32>(-abs(0i), var_0);
    return Struct_1(var_2.a, vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(0u, 0u, var_2.b), var_2.b, var_2.b), _wgslsmith_mult_u32(max(var_2.c.x >> (2176u % 32u), countOneBits(0u)), _wgslsmith_mod_u32(var_2.b, var_2.c.x)), countOneBits(var_2.b), _wgslsmith_div_u32(4294967295u, 75382u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(139f)) + -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(132f, -1243f)), _wgslsmith_f_op_f32(-390f * 1060f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4) -> StorageBuffer {
    let var_0 = Struct_3(func_1().b.x);
    var var_1 = !select(!(!select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, true), false)), select(select(vec2<bool>(arg_0.a, false), !vec2<bool>(arg_0.a, arg_0.a), func_1().a), !vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_0.a & arg_0.a)), vec2<bool>(true, all(vec2<bool>(arg_0.a, arg_0.a))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f + func_1().c));
    return StorageBuffer(vec2<u32>(~2932u, 98935u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, countOneBits(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 21447u, 0u), vec3<u32>(0u, 51145u, 13493u)), max(~0u, 4294967295u), ~reverseBits(8753u), ~(~1u))), 1015f);
    let var_1 = vec3<f32>(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), -194f), 751f);
    let x = u_input.a;
    s_output = func_4(func_1(), ~4294967295u, Struct_4(Struct_3(10306u)));
}

