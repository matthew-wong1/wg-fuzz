struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> vec4<bool> {
    let var_0 = !all(vec4<bool>(true, true, true, true));
    let var_1 = _wgslsmith_f_op_f32(ceil(-459f));
    var var_2 = Struct_2(_wgslsmith_mod_u32(35977u, 1u) ^ ~arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) - _wgslsmith_f_op_f32(-510f - -1000f)) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(710f))))), !(!vec2<bool>(false, u_input.a >= 62889i)), !all(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, false, var_0), vec3<bool>(false, false, var_0))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1467f, var_1, -206f)), vec3<bool>(var_0, true, var_0))), _wgslsmith_div_vec3_f32(vec3<f32>(694f, var_1, 552f), vec3<f32>(var_1, 1280f, var_1)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 451f, 1f)), true | var_0)));
    var_2 = Struct_2(reverseBits(arg_0.x), var_1, var_2.c, false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_2.b) * var_2.e) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1147f, var_2.b, var_1))))) * var_2.e));
    var var_3 = Struct_3(firstLeadingBit(select(max(var_2.a, 29670u), _wgslsmith_mult_u32(u_input.b.x, arg_0.x), true) << (1u % 32u)), _wgslsmith_div_i32(u_input.a, countOneBits(_wgslsmith_div_i32(arg_1, u_input.a)) & u_input.a), !select(vec4<bool>(var_2.c.x, var_2.c.x, 2147483647i != u_input.a, select(var_2.c.x, var_2.d, var_2.d)), !vec4<bool>(false, false, var_2.c.x, var_0), vec4<bool>(875f > var_1, var_0, any(vec3<bool>(true, var_2.c.x, var_0)), var_0)), 0u & (arg_0.x & u_input.b.x));
    return vec4<bool>(u_input.a == 2147483647i, all(var_3.c), false, (-7012i >= arg_1) == var_3.c.x);
}

fn func_2() -> vec3<f32> {
    var var_0 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), func_3(vec2<u32>(17354u, 1u), u_input.a)), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, false)), any(func_3(vec2<u32>(u_input.b.x, u_input.b.x), 19423i).wy), all(vec2<bool>(true, true)), true)), !(!func_3(countOneBits(vec2<u32>(0u, 0u)), -u_input.a)), !vec4<bool>(select(u_input.a != -14751i, select(true, true, true), true), true, 10127i < (u_input.a >> (u_input.b.x % 32u)), false && select(true, false, true)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-492f, 859f))))));
    var_1 = 1000f;
    let var_2 = vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x);
    let var_3 = Struct_3(u_input.b.x, u_input.a, !(!var_2), (5772u | ~_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.yy)) & u_input.b.x);
    return vec3<f32>(780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(f32(-1f) * -717f));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> bool {
    let var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(arg_1.x, arg_1.x), 42105u, ~(~11939u), ~arg_2.x), _wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(u_input.b.x, arg_1.x, arg_2.x, arg_2.x)), vec4<u32>(u_input.b.x, firstLeadingBit(arg_1.x), ~1u, arg_1.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-147f, 1045f, -1000f), vec3<f32>(-649f, -100f, -1227f)), vec3<f32>(1055f, 822f, 1478f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(470f, 340f, 1000f) * vec3<f32>(349f, 1000f, 1782f))))));
    var var_2 = false;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_1.yz, vec2<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(ceil(-1434f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1000f) * _wgslsmith_f_op_vec2_f32(-var_1.yx)) - _wgslsmith_f_op_vec2_f32(var_1.yx * vec2<f32>(var_1.x, var_1.x))))), reverseBits(select(arg_1.x, ~_wgslsmith_mod_u32(var_0.x, arg_1.x), arg_3.x)));
    var_1 = vec3<f32>(var_3.a.x, var_3.a.x, 1000f);
    return !(arg_0.x | (_wgslsmith_add_u32(arg_2.x, arg_1.x) <= arg_2.x)) && false;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(411f - -1243f))), _wgslsmith_f_op_f32(-893f * -2165f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-125f - -194f) * _wgslsmith_f_op_f32(trunc(1573f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-455f, 186f, -403f, -105f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-515f, -1313f, -1000f, 1443f), vec4<f32>(389f, 1203f, 695f, 522f)))))))));
    let var_1 = Struct_3(_wgslsmith_sub_u32(u_input.b.x, reverseBits(1u)), _wgslsmith_mod_i32(u_input.a, u_input.a), vec4<bool>(all(arg_1.xy) || false, all(!select(vec4<bool>(arg_2.x, arg_0, arg_0, true), arg_1, arg_0)), select(arg_0, !arg_1.x, true), (u_input.b.x << (~20119u % 32u)) >= u_input.b.x), min(u_input.b.x, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b.x, 32521u, 4294967295u, 8800u), vec4<u32>(u_input.b.x, 92511u, u_input.b.x, 32955u)), ~vec4<u32>(u_input.b.x, 20879u, 2423u, u_input.b.x))));
    let var_2 = ~var_1.a;
    var var_3 = vec2<bool>(all(arg_2), (arg_2.x & true) || arg_2.x);
    var_3 = vec2<bool>(!all(vec4<bool>(all(var_1.c.wzy), !arg_0, 23314i > var_1.b, true)), true);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(false, !vec4<bool>(!func_1(vec4<bool>(false, false, true, true), vec4<u32>(1u, u_input.b.x, u_input.b.x, 58246u), vec2<u32>(4294967295u, u_input.b.x), vec3<bool>(true, true, true)), true, true, 36026u <= ~u_input.b.x), vec2<bool>(true, true));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) - _wgslsmith_f_op_vec3_f32(func_2()).xy) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1798f, var_0.a.x))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)))))), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, -1159f));
    var_1 = vec2<f32>(-831f, _wgslsmith_f_op_f32(-var_1.x));
    let var_2 = var_0.a.x;
    let var_3 = Struct_4(~select(min(u_input.b.x, _wgslsmith_add_u32(105662u, 7668u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(3672u, 13151u, 35830u), 4294967295u >> (u_input.b.x % 32u)), func_3(vec2<u32>(50725u, u_input.b.x), 0i).x));
    let var_4 = var_0.a.x;
    var var_5 = _wgslsmith_clamp_i32(2147483647i & ~_wgslsmith_div_i32(firstTrailingBit(u_input.a), -15094i), 15577i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

