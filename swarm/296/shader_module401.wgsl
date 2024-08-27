struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    var var_0 = u_input.a;
    var_0 = u_input.a;
    return false;
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = any(vec2<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), 797f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1071f)) + 313f)));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-1000f, 2967f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1409f, -454f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2116f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1596f)))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1423f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-320f)))), -820f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(274f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2340f, 1314f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(542f, -1428f)), _wgslsmith_f_op_f32(abs(528f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(636f + -401f), _wgslsmith_f_op_f32(-461f - 788f)))), _wgslsmith_f_op_f32(sign(543f)))));
    var var_2 = all(vec4<bool>(var_0 == true, !var_0, func_1(!(!vec3<bool>(var_0, false, var_0))), !(!func_1(vec3<bool>(true, false, var_0)))));
    let var_3 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.d.x, u_input.d.x, 1u) & vec3<u32>(u_input.a, 83676u, u_input.c)), min(~vec3<u32>(1u, u_input.a, 1u), vec3<u32>(0u, 1u, u_input.a))), u_input.c);
    var var_4 = Struct_1(vec2<f32>(344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1094f + _wgslsmith_f_op_f32(-var_1.x)))));
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(firstTrailingBit(func_3(u_input.b)), 1u << (1u % 32u), firstLeadingBit(1u)), countOneBits(min(vec3<u32>(u_input.d.x, u_input.a, u_input.c), firstLeadingBit(vec3<u32>(u_input.a, u_input.d.x, u_input.d.x)))), true), _wgslsmith_add_vec3_u32(~vec3<u32>(31302u, u_input.c, u_input.a) >> (max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 64444u), vec3<u32>(u_input.a, 10111u, 11773u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 69328u, u_input.a))) % vec3<u32>(32u)), select(countOneBits(vec3<u32>(u_input.c, 79065u, 8196u)), ~vec3<u32>(u_input.c, 4294967295u, 1u), true) << ((~vec3<u32>(1u, u_input.a, 1u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.d.x, 38548u), vec3<u32>(73237u, 1u, u_input.d.x))) % vec3<u32>(32u))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.a + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_1.a)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, -1030f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(729f, arg_1.a.x) - vec2<f32>(-1556f, arg_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(!select(false, false, false), true, true), !vec3<bool>(~0u != select(u_input.c, u_input.a, false), true, true), !(!any(vec3<bool>(true, true, true))));
    let var_1 = var_0.x;
    let var_2 = ~(~(firstTrailingBit(vec4<i32>(u_input.b.x, 1i, 0i, 5916i) << (vec4<u32>(u_input.c, u_input.a, 0u, 1u) % vec4<u32>(32u))) & ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(16638i, 1i, -2147483647i, u_input.b.x))));
    var var_3 = func_2(1039f, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2056f), _wgslsmith_f_op_f32(-883f - 223f)))), true | func_1(vec3<bool>(false, true, true)));
    var var_4 = select(!select(var_0.xz, !var_0.yx, !select(vec2<bool>(var_0.x, false), var_0.yx, var_0.x)), select(!vec2<bool>(true, any(vec4<bool>(false, var_0.x, false, var_0.x))), !vec2<bool>(var_0.x, var_3.a.x != 1000f), !(!var_0.x) | true), vec2<bool>(var_0.x, all(!select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(~14327u), u_input.a, _wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, 25551u)), 54163u));
}

