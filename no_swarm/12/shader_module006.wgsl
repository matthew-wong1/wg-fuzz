struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    return 0i;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = arg_0;
    var_0 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(step(var_0.a, var_0.a));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a)))), -22920i, -countOneBits(~arg_0.b), arg_0.d, u_input.c.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = 179081u;
    var_0 = 0u;
    var_0 = 17894u;
    var_0 = 4115u;
    var var_1 = -1065f;
    return _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, _wgslsmith_f_op_f32(min(-1000f, arg_1.a)) > arg_1.a)), -2402f));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.c.x, func_3(Struct_1(_wgslsmith_f_op_f32(max(-1383f, -413f)), func_2(Struct_1(1460f, 23110i, u_input.b.x, vec2<bool>(true, arg_0), 15978i)), i32(-1i) * -2147483647i, !arg_1.yz, 2147483647i), 1u))));
    var var_1 = ~firstTrailingBit(1u);
    var var_2 = func_3(Struct_1(105f, -u_input.c.x, u_input.c.x, arg_1.zy, u_input.a.x), firstLeadingBit(1u));
    var var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(abs(reverseBits(3868u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(15546u, 0u, 60738u), vec3<u32>(1u, 13092u, 23079u)), vec3<u32>(4294967295u, 4294967295u, 2273u))), abs(~firstTrailingBit(vec2<u32>(5206u, 0u))));
    var_2 = func_3(func_3(func_3(func_3(Struct_1(var_2.a, -2147483647i, -2147483647i, vec2<bool>(arg_0, false), u_input.c.x), ~69548u), _wgslsmith_clamp_u32(4294967295u, select(0u, 4294967295u, var_2.d.x), ~0u)), 7571u), countOneBits(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), max(firstLeadingBit(vec2<u32>(4294967295u, 10379u)), ~vec2<u32>(0u, 20335u)))));
    return reverseBits(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 4294967295u)), vec2<u32>(1u, ~4294967295u)));
}

fn func_5(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1172f + -3713f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1323f + -164f), -583f)))), u_input.c.x, func_2(func_3(func_3(func_3(Struct_1(-525f, 2147483647i, 2147483647i, vec2<bool>(false, false), u_input.a.x), 42124u), arg_0.x), firstTrailingBit(~17662u))), !(!vec2<bool>(true, any(vec2<bool>(false, true)))), -1i);
    var_0 = func_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + 250f), -114f))), ~1i, u_input.a.x, select(var_0.d, func_3(func_3(Struct_1(var_0.a, 1i, u_input.c.x, vec2<bool>(false, var_0.d.x), u_input.b.x), 46438u), _wgslsmith_mult_u32(arg_0.x, arg_0.x)).d, vec2<bool>(var_0.d.x, all(vec2<bool>(var_0.d.x, var_0.d.x)))), -u_input.a.x), arg_0.x);
    var_0 = func_3(func_3(Struct_1(_wgslsmith_f_op_f32(988f + _wgslsmith_f_op_f32(min(113f, 1759f))), reverseBits(-2147483647i), -2147483647i, !select(var_0.d, var_0.d, false), -_wgslsmith_sub_i32(-26918i, -1i)), _wgslsmith_dot_vec3_u32(reverseBits(min(vec3<u32>(arg_0.x, arg_0.x, 1u), vec3<u32>(arg_0.x, 4294967295u, arg_0.x))), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x))))), abs(_wgslsmith_dot_vec2_u32(abs(arg_0) >> (~vec2<u32>(0u, arg_0.x) % vec2<u32>(32u)), abs(arg_0))));
    var var_1 = func_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(703f + 294f)))), -2147483647i, _wgslsmith_div_i32(min(~var_0.b, _wgslsmith_clamp_i32(u_input.a.x, var_0.e, -2147483647i)), var_0.e), var_0.d, ~reverseBits(var_0.e)), arg_0.x).a;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1153f, -535f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, var_0.a, -259f), vec3<f32>(797f, var_0.a, 642f))))))), vec3<bool>(var_0.d.x, any(select(!vec3<bool>(true, false, var_0.d.x), !vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), !vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x))), !var_0.d.x)));
    return func_3(Struct_1(_wgslsmith_f_op_f32(-157f * _wgslsmith_f_op_f32(trunc(-310f))), _wgslsmith_add_i32(u_input.b.x, -(i32(-1i) * -3220i)), var_0.e, vec2<bool>(any(!vec4<bool>(true, var_0.d.x, true, var_0.d.x)), !(var_0.c < -20065i)), min(u_input.b.x, 0i)), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(reverseBits(u_input.b.zz));
    var var_1 = u_input.a;
    var_1 = u_input.b;
    var var_2 = -27098i;
    var var_3 = func_5(~min(vec2<u32>(select(55758u, 9978u, true), func_1(false, vec3<bool>(false, true, false))), ~min(vec2<u32>(0u, 4294967295u), vec2<u32>(47317u, 1u))));
    var_1 = -(u_input.b & ~(-vec4<i32>(-2147483647i, var_1.x, u_input.c.x, 1i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    var var_4 = ~(~func_1(var_3.d.x || var_3.d.x, vec3<bool>(false, false, var_3.d.x)) >> (countOneBits(40864u) % 32u));
    let var_5 = u_input.b.wzx;
    var_2 = var_5.x << ((~(1u << (firstTrailingBit(55144u) % 32u)) | (~select(4294967295u, 28841u, true) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(10708u, 4294967295u, 37329u), vec3<u32>(0u, 61316u, 4294967295u)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * _wgslsmith_f_op_f32(-var_3.a)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_3.a)), _wgslsmith_div_f32(-1487f, var_3.a))))), _wgslsmith_f_op_f32(-1000f * var_3.a), vec4<f32>(var_3.a, -1000f, _wgslsmith_f_op_f32(-var_3.a), var_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.a, var_3.a, var_3.d.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a + -688f), -377f)) - 1f)));
}

