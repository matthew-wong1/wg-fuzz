struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = arg_0.x;
    var var_1 = Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 + arg_0))) + arg_0), _wgslsmith_div_vec2_u32(u_input.e.yz, vec2<u32>(~firstLeadingBit(11350u), 55435u)));
    let var_2 = vec3<f32>(var_1.b.x, -1559f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))));
    var_0 = 716f;
    var_1 = Struct_3(!vec4<bool>(true, -28721i == min(u_input.a.x, -14946i), false, all(var_1.a.yw) != !var_1.a.x), var_2.zy, ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c.x, select(1u, 0u, var_1.a.x)), countOneBits(firstTrailingBit(vec2<u32>(var_1.c.x, 67339u)))));
    return var_2.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = ~(~37185u ^ ~_wgslsmith_dot_vec4_u32(arg_2.c, ~arg_2.c));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1058f, -263f) + vec2<f32>(-972f, 133f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1077f, 858f)))));
    var var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(arg_2.b.a.x, arg_1.a.x)), vec2<i32>(i32(-1i) * -arg_3.a.x, (arg_1.a.x | arg_2.b.a.x) << (~arg_0.x % 32u))), ~arg_2.b.a.zx ^ -(select(vec2<i32>(arg_2.b.a.x, 0i), arg_2.b.a.xx, vec2<bool>(false, arg_2.a.x)) ^ vec2<i32>(u_input.b, 1i)));
    var_2 = countOneBits(arg_3.a.zz);
    var var_3 = true;
    return 1576f;
}

fn func_1(arg_0: i32, arg_1: u32) -> bool {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(361f * 159f), _wgslsmith_f_op_f32(select(1413f, 1600f, false)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2719f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec2<f32>(-1089f, -3429f))))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(arg_1, u_input.d), Struct_1(vec3<i32>(18785i, -2147483647i, u_input.a.x), 31506u), Struct_2(vec2<bool>(false, false), Struct_1(vec3<i32>(1i, arg_0, arg_0), u_input.d), vec4<u32>(u_input.c, arg_1, 1364u, arg_1)), Struct_1(u_input.a.yyz, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(0i, 0i, -33588i), vec3<i32>(u_input.a.x, -1i, 1i))), 1u);
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.e, u_input.e);
    let var_2 = -715f;
    var var_3 = select(!(!vec4<bool>(-186f <= var_2, true, var_2 > -1767f, true)), vec4<bool>(!(all(vec4<bool>(false, true, false, false)) & true), func_1(var_0.a.x, var_0.b), all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))), true), vec4<bool>(false, true, all(vec4<bool>(true, true, true, true)), true));
    var_3 = !vec4<bool>(any(select(vec3<bool>(true, true, true), var_3.zzy, select(var_3.zww, var_3.wyw, var_3.wwz))), false & func_1(-40680i, 43155u), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(169f)) + _wgslsmith_f_op_f32(var_2 * var_2)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-901f)), var_2)))), ~(4294967295u >> (u_input.e.x % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(447f + 692f), 659f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, -288f, var_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_2) * vec3<f32>(var_2, var_2, -124f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(327f, 1860f, var_2)))));
}

