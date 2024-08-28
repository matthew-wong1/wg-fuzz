struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    let var_0 = abs(_wgslsmith_clamp_u32(4294967295u >> (1u % 32u), 0u, 1u) >> ((~1u >> (~u_input.a % 32u)) % 32u)) == abs(max(0u, abs(_wgslsmith_add_u32(30257u, 0u))));
    var var_1 = vec2<u32>(u_input.b.x, ~1u) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), u_input.b.zz) % vec2<u32>(32u));
    let var_2 = ~abs(~u_input.c);
    var_1 = ~countOneBits(u_input.b.wx);
    var var_3 = ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(abs(var_2), ~(-1i))), abs(min(vec2<i32>(10529i, u_input.c), ~vec2<i32>(var_2, var_2))));
    return !vec2<bool>(firstLeadingBit(-20107i) > ~var_2, true);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(584f, _wgslsmith_f_op_f32(-592f + arg_2)))));
    var var_1 = u_input.b;
    var_0 = -426f;
    var var_2 = Struct_1(!any(vec4<bool>(true, u_input.c > 2147483647i, !arg_1.x, true)));
    let var_3 = func_3();
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2)), arg_2, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, arg_2) - arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(min(1000f, arg_2))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -627f))), -675f, _wgslsmith_f_op_f32(f32(-1f) * -486f), -406f)));
}

fn func_1() -> StorageBuffer {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(279f, _wgslsmith_f_op_f32(f32(-1f) * -441f)), -1472f, _wgslsmith_f_op_f32(-1f), 1693f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(false)), vec2<bool>(false, true), _wgslsmith_div_f32(575f, -2150f))))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-412f, -1482f, 528f, -818f) - vec4<f32>(-224f, -310f, -1395f, 932f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1490f, 420f, 1000f, -1584f) - vec4<f32>(1645f, 1404f, -1000f, 346f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(875f, 1000f, -606f, -924f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(772f, 776f, 494f, -1253f), vec4<f32>(357f, -898f, 2672f, -2289f), true)))), true))), any(vec4<bool>(true, false, true, true))));
    var var_2 = -2766i;
    var var_3 = ~abs(min(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), ~4294967295u), firstLeadingBit(~u_input.b.xz)));
    let var_4 = vec2<u32>(~(81624u >> (select(u_input.a, var_3.x, true) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~619u, u_input.a), u_input.b.zw)) << ((u_input.b.xx << (_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.zz, u_input.b.zw), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 3591u), u_input.b.yw)), reverseBits(u_input.b.xy)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return StorageBuffer(2147483647i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f))), 399f), ~max(~vec2<i32>(u_input.c, 1i) & (vec2<i32>(var_0, u_input.c) >> (var_4 % vec2<u32>(32u))), min(vec2<i32>(4008i, 34248i), firstLeadingBit(vec2<i32>(30612i, u_input.c)))), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, 20379i) << (vec3<u32>(4294967295u, var_3.x, 0u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 15429i, -31992i), vec3<i32>(-2147483647i, var_0, -13609i), vec3<i32>(-2147483647i, u_input.c, u_input.c))), reverseBits(select(0i, 8802i, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

