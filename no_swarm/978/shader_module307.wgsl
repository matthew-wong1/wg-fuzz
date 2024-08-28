struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = ~select(~vec4<u32>(u_input.c.x ^ 1u, u_input.d | 0u, u_input.c.x, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 0u, 114401u) << (vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u) % vec4<u32>(32u)), countOneBits(vec4<u32>(57962u, 0u, u_input.d, u_input.a))) ^ vec4<u32>(reverseBits(u_input.d), ~1u, u_input.a, u_input.d), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, false))));
    var var_1 = _wgslsmith_mod_u32(u_input.d, 13780u);
    return u_input.a;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    return vec4<u32>(33903u, 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.d, 1u, u_input.b), vec4<u32>(5163u, u_input.c.x, 4294967295u, u_input.b))), ~vec4<u32>(u_input.b, arg_2.c, u_input.b, arg_2.c)), ~(~vec4<u32>(1u, 1u, 17891u, u_input.b)) | _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 46964u, u_input.a), vec4<u32>(u_input.d, u_input.d, u_input.a, arg_2.c)), _wgslsmith_add_vec4_u32(vec4<u32>(44369u, 1u, 0u, 5962u), vec4<u32>(arg_2.c, 601u, 0u, u_input.d)))), ~(~max(10388u, func_3(vec3<f32>(arg_1, -868f, 299f)))));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    let var_0 = abs(~func_2(u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1243f - arg_0)), Struct_2(u_input.e, arg_0, ~4294967295u, 1i)));
    let var_1 = Struct_1(vec3<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, true))), u_input.d != func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(525f, 1304f, arg_0))), select(all(vec3<bool>(false, false, false)), false, u_input.e.x == u_input.e.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1605f)), 1546f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0))), _wgslsmith_f_op_f32(342f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(889f, 768f, true)) + _wgslsmith_f_op_f32(-310f - -525f)))), var_0);
    var var_2 = var_1.b;
    let var_3 = vec4<u32>(~u_input.c.x, _wgslsmith_div_u32(_wgslsmith_add_u32(~countOneBits(u_input.c.x), ~(var_0.x << (var_0.x % 32u))), u_input.b), u_input.a & firstLeadingBit(1956u), ~u_input.d);
    var var_4 = select(!(!vec4<bool>(true, !var_1.a.x, var_1.a.x != var_1.a.x, true)), !(!(!(!vec4<bool>(var_1.a.x, true, false, var_1.a.x)))), !select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(var_1.a.x, true, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), vec4<bool>(var_1.a.x, var_1.a.x, false, true)), vec4<bool>(true, false, false, var_1.a.x)), select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), !vec4<bool>(true, var_1.a.x, var_1.a.x, false), true), !any(vec2<bool>(var_1.a.x, false))));
    return StorageBuffer(min(select(max(select(u_input.e, vec4<i32>(-8794i, u_input.e.x, 11515i, 0i), vec4<bool>(true, false, false, true)), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -43847i) ^ vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -4017i)), u_input.e, var_4.x), abs(u_input.e)), u_input.c, 48191i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -455f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * -260f)) - var_1.b.zy));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-651f);
}

