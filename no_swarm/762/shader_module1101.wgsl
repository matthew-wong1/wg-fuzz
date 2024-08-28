struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    return 855f;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(-1712f)), Struct_1(_wgslsmith_mod_u32(~1u, ~(~38631u)), vec3<bool>(false, arg_1, arg_1), arg_1), !vec3<bool>(false, !arg_1 | (arg_1 == arg_1), all(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, arg_1, arg_1, false)))));
    return var_0.a;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = vec4<bool>(false, any(vec3<bool>(_wgslsmith_f_op_f32(ceil(1967f)) >= _wgslsmith_f_op_f32(ceil(-1387f)), true, !all(arg_2.b))), !all(arg_2.b.xz), false);
    let var_1 = _wgslsmith_mult_vec2_u32(reverseBits(arg_0.a.yz) << (vec2<u32>(~(4294967295u ^ arg_0.a.x), 9969u) % vec2<u32>(32u)), u_input.b.wz & u_input.b.zz);
    let var_2 = _wgslsmith_f_op_f32(1f * 1f);
    var var_3 = arg_0;
    var var_4 = abs(select(vec2<i32>(arg_1.x, arg_1.x), arg_1.yx, select(arg_2.b.yz, !arg_2.b.zy, select(true, any(var_0), arg_2.c & var_0.x))));
    return reverseBits(countOneBits(~(arg_2.a | min(var_3.a.x, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec3<bool>(true, true, true)) != (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1245f))))) > 1277f);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1774f, _wgslsmith_f_op_f32(f32(-1f) * -1185f), _wgslsmith_f_op_f32(863f - -633f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(222f, -1065f, -638f), vec3<f32>(580f, 1130f, 1000f)) + vec3<f32>(-401f, 143f, -289f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-750f, 556f, 514f) * vec3<f32>(-1655f, 763f, 111f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, u_input.b.x, 2257u, u_input.a.x)), var_0 || true, -291f, _wgslsmith_dot_vec4_i32(vec4<i32>(71160i, -5080i, -37517i, 20892i), vec4<i32>(26295i, -2147483647i, 1i, -17464i)))), 112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1741f))))));
    let var_2 = vec3<u32>(4294967295u, 1u, _wgslsmith_clamp_u32(select(func_3(Struct_3(vec4<u32>(34571u, u_input.a.x, 20886u, 0u)), vec3<i32>(15319i, 11207i, 21921i) >> (vec3<u32>(1u, u_input.a.x, 50504u) % vec3<u32>(32u)), Struct_1(39613u, vec3<bool>(var_0, var_0, var_0), false)), select(u_input.b.x >> (9209u % 32u), u_input.a.x, all(vec2<bool>(true, false))), true & select(var_0, false, var_0)), _wgslsmith_dot_vec2_u32(select(~u_input.a, u_input.a, select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), vec2<bool>(true, false))), firstLeadingBit(vec2<u32>(3778u, u_input.a.x) ^ u_input.b.zy)), ~(~reverseBits(0u))));
    var var_3 = vec3<bool>(var_0, !all(vec3<bool>(true, true, false)) && true, all(!vec3<bool>(all(vec3<bool>(true, var_0, var_0)), false, all(vec3<bool>(false, var_0, var_0)))));
    var_3 = select(vec3<bool>(true, true, !(_wgslsmith_div_f32(328f, 345f) != _wgslsmith_f_op_f32(trunc(140f)))), !(!vec3<bool>(var_3.x, true, var_0)), select(vec3<bool>((var_3.x || true) | any(var_3.yz), !var_0, var_0), select(vec3<bool>(var_3.x, !var_0, any(var_3.xx)), vec3<bool>(true, all(vec4<bool>(true, var_0, true, true)), true), any(!vec3<bool>(var_3.x, true, false))), select(vec3<bool>(var_3.x, true, !var_0), !(!vec3<bool>(var_3.x, var_3.x, false)), vec3<bool>(true, all(var_3.yz), all(vec4<bool>(true, false, false, var_0))))));
    let var_4 = ~(~_wgslsmith_div_vec3_u32(var_2, min(_wgslsmith_add_vec3_u32(u_input.b.ywx, var_2), vec3<u32>(1u, u_input.b.x, 54547u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, -firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(-42638i, -35823i), 1i, select(-27307i, 1i, true))), _wgslsmith_sub_i32(~(-1i), ~7882i), _wgslsmith_sub_i32(-62716i | abs(_wgslsmith_clamp_i32(-2147483647i, 24525i, -2147483647i)), 1i));
}

