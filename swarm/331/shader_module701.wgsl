struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = vec3<bool>(arg_0.a.x && true, !all(arg_0.a), false);
    var var_1 = _wgslsmith_f_op_f32(max(-583f, arg_1.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-902f, arg_1.a, 870f, 1242f) - vec4<f32>(-1696f, 725f, -208f, 131f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -915f, 207f, arg_1.a)), vec4<f32>(arg_1.a, arg_1.a, 222f, 849f)))) + vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.a)), -1000f, arg_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.a)), arg_1.a)))));
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_2.wy, _wgslsmith_f_op_vec2_f32(-var_2.wx))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.xz * var_2.yy))))));
    return var_2.x;
}

fn func_2(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = 0u ^ ~firstLeadingBit(u_input.a.x);
    var var_1 = 30557i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(420f, 962f, 813f, 866f)))) + vec4<f32>(1f, -1880f, _wgslsmith_f_op_f32(func_3(Struct_4(vec4<bool>(true, true, false, false), Struct_1(vec3<i32>(11737i, 61183i, -2147483647i), 0u, vec4<i32>(2147483647i, 2147483647i, 1i, 5608i), u_input.a.zx)), Struct_2(-1498f))), 1186f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-141f, 2740f, 1917f, -2247f))) - vec4<f32>(-510f, -125f, 1614f, -1176f))))));
    let var_3 = Struct_1(-max(vec3<i32>(1i, 1i, 1i), select(~vec3<i32>(-34454i, -2147483647i, 2147483647i), vec3<i32>(1i, 1i, 1i), true)), var_0, ~(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i)), arg_0.xx);
    var_1 = _wgslsmith_add_i32(var_3.a.x | -var_3.a.x, -2147483647i);
    return !(!vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), true, !select(true, true, false), true));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_4(!select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true), select(func_2(u_input.b), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), Struct_1(max(vec3<i32>(-1i) * -vec3<i32>(17213i, 6700i, 3770i), -reverseBits(vec3<i32>(-2147483647i, -1i, 0i))), max(~(~u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(90253u, 1u, u_input.b.x), u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-19960i, -23860i, firstLeadingBit(-44714i), min(441i, 1i)), -vec4<i32>(-44355i, -11512i, -39961i, 2542i) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 83381u, 4294967295u), vec4<u32>(u_input.c, u_input.b.x, u_input.c, 11678u)) % vec4<u32>(32u))), ~_wgslsmith_mod_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, 57986u))));
    var var_1 = ~1u;
    let var_2 = func_2(~u_input.b).x;
    var var_3 = !select(!vec2<bool>(all(vec2<bool>(false, var_0.a.x)), any(vec2<bool>(false, false))), var_0.a.zx, false);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-309f)) * _wgslsmith_f_op_f32(f32(-1f) * -635f)))));
    return !vec3<bool>(false, !any(var_0.a), !(var_4.a < -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(u_input.a, abs(_wgslsmith_mult_vec3_u32(u_input.b, u_input.a)))), min(_wgslsmith_add_vec3_u32(u_input.a, ~vec3<u32>(u_input.b.x, 0u, 0u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4450u, u_input.c, u_input.a.x), u_input.b) >> (firstLeadingBit(vec3<u32>(u_input.b.x, u_input.c, u_input.c) >> (vec3<u32>(0u, 5291u, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_1 = reverseBits(-18725i);
    let var_2 = all(select(vec3<bool>(false, true, any(vec3<bool>(true, false, false))), vec3<bool>(true, true, false), select(func_1(), func_2(var_0).xzw, true)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-291f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(439f + 1136f)))))));
    let var_4 = vec4<bool>(true, !select(var_2, var_2, false), any(!select(!vec3<bool>(var_2, var_2, true), !vec3<bool>(var_2, var_2, false), var_1 == -2147483647i)), var_2);
    let var_5 = var_3;
    var var_6 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1476f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_3.a * var_3.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.a * var_5.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f - var_3.a) - -1766f), !(!var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.b.x) | vec2<u32>(u_input.a.x, 14661u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.a.x), var_0.zz) >> ((u_input.b.yz | vec2<u32>(0u, 1u)) % vec2<u32>(32u))) >> (~_wgslsmith_mod_u32(var_0.x, 1u) % 32u), -max(vec2<i32>(firstTrailingBit(var_1), var_1), -vec2<i32>(var_1, var_1)));
}

