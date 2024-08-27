struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: f32) -> vec2<bool> {
    var var_0 = select(!(!(!select(vec4<bool>(true, arg_1.e, arg_1.e, arg_1.e), vec4<bool>(false, arg_1.c, arg_1.c, arg_1.c), vec4<bool>(true, true, false, false)))), !(!vec4<bool>(true, !arg_1.c, arg_1.e, select(arg_1.c, false, false))), true);
    var_0 = select(select(vec4<bool>(arg_1.d > _wgslsmith_div_f32(arg_1.b.x, arg_3), !all(var_0.xx), false, all(vec4<bool>(true, false, false, true))), vec4<bool>(arg_1.c, !(13044u != arg_2.x), any(var_0.wz), all(!vec2<bool>(var_0.x, true))), !vec4<bool>(var_0.x, !var_0.x, var_0.x, any(vec2<bool>(true, true)))), !vec4<bool>(false, !(true & arg_1.e), any(vec3<bool>(var_0.x, var_0.x, true)) || all(var_0.xww), false), arg_1.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(arg_1.b));
    var_0 = vec4<bool>(var_0.x, true, var_0.x, !select(true, true, true) || var_0.x);
    let var_2 = -(~(-min(vec4<i32>(arg_0, -1i, arg_0, u_input.d) & vec4<i32>(arg_0, 6146i, 0i, arg_0), ~vec4<i32>(u_input.d, 29659i, 1i, 12971i))));
    return !select(vec2<bool>(true, true), var_0.xw, var_0.xx);
}

fn func_2() -> bool {
    var var_0 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(select(vec2<bool>(true, true), func_3(63977i, Struct_2(vec4<u32>(u_input.b, u_input.c.x, 28992u, u_input.b), vec4<f32>(782f, 1601f, 771f, -599f), false, -1023f, false), vec2<u32>(u_input.b, 47444u), -920f), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(any(vec3<bool>(true, false, false)), true)), vec2<bool>(all(vec4<bool>(false, true, false, true)) & any(vec3<bool>(false, true, true)), true)), func_3(abs(1i), Struct_2(vec4<u32>(min(55734u, u_input.b), 51702u, countOneBits(u_input.b), u_input.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1462f, 2290f, 365f) + vec4<f32>(-189f, -917f, 856f, 1094f)) * vec4<f32>(-433f, 2130f, 1647f, 1000f)), true, _wgslsmith_f_op_f32(f32(-1f) * -1297f), 1i <= ~u_input.d), vec2<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.b, ~u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1306f)))), !func_3(reverseBits(-2147483647i), Struct_2(~vec4<u32>(u_input.c.x, 4350u, 0u, u_input.b), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-923f, 1000f, 848f, -1185f), vec4<f32>(950f, 606f, -1306f, -1000f))), true, -228f, any(vec3<bool>(true, true, true))), vec2<u32>(1u, _wgslsmith_mult_u32(5873u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-170f * 929f))).x);
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703f - -1000f)) - -517f), -430f, -1483f)));
    var var_2 = -vec3<i32>(select(min(-1i, _wgslsmith_sub_i32(u_input.d, -18227i)), 0i, false), u_input.d, u_input.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1017f)))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-628f + var_1.x) - -652f) - _wgslsmith_f_op_f32(-var_1.x)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(-1516f)), _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(1015f + -1219f)) * vec4<f32>(-826f, var_1.x, var_1.x, var_1.x)) - vec4<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1247f, var_1.x))), var_1.x, var_1.x)));
    let var_4 = ~(~(~vec4<u32>(min(9223u, 71974u), ~u_input.b, u_input.c.x, countOneBits(1u))));
    return var_0.x != func_3(-var_2.x, Struct_2((vec4<u32>(4294967295u, var_4.x, 0u, var_4.x) & vec4<u32>(var_4.x, u_input.c.x, 42687u, var_4.x)) >> (_wgslsmith_div_vec4_u32(var_4, vec4<u32>(u_input.b, var_4.x, var_4.x, 0u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -1961f, var_3.x, var_1.x) - vec4<f32>(1052f, var_1.x, 1075f, 2360f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-187f + -1558f)), var_0.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 51688u) | u_input.c.zz, ~vec2<u32>(1u, 20878u), firstTrailingBit(var_4.wx)), _wgslsmith_f_op_f32(-var_3.x)).x;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(true, func_2() && !(!all(vec4<bool>(true, true, true, true))), true);
    let var_1 = _wgslsmith_f_op_f32(-319f - _wgslsmith_f_op_f32(f32(-1f) * -696f));
    let var_2 = Struct_2(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), vec4<u32>(21433u, u_input.c.x, 0u, 13291u)) ^ _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(4435u, 7219u, u_input.c.x, u_input.b)), select(vec4<u32>(9216u, u_input.b, 0u, u_input.b), vec4<u32>(0u, 3488u, u_input.c.x, 51279u), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<u32>(1u, 1u, u_input.c.x, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-705f, var_1, var_1, -215f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, 898f, -2036f) - vec4<f32>(1342f, -361f, -179f, var_1))) + vec4<f32>(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(step(664f, -1108f)), _wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(-var_1)))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)))))), false);
    let var_3 = Struct_1(~(~(countOneBits(u_input.c.x) | var_2.a.x)), _wgslsmith_f_op_f32(var_2.d * -1142f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(905f - _wgslsmith_f_op_f32(f32(-1f) * -573f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_div_f32(var_1, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2216f))))));
    var var_4 = var_3.c;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-682f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2005f, _wgslsmith_f_op_f32(1061f + -2049f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(abs(1248f))))));
    var var_1 = func_1();
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, 1668f) - var_1.b)));
    var_1 = func_1();
    var_0 = _wgslsmith_f_op_f32(step(var_1.b, var_1.b));
    var_1 = func_1();
    var_1 = Struct_1(1u ^ (func_1().a ^ u_input.b), -1000f, var_1.c);
    let var_2 = Struct_2(~_wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, 91499u, ~var_1.a, firstLeadingBit(u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(19303u, u_input.b, var_1.a, 0u), abs(vec4<u32>(101326u, 1524u, 1u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)), -1017f, var_1.b, var_1.c.x)), false, -1057f, false);
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(16577i, u_input.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_div_f32(_wgslsmith_div_f32(1f, var_3.b), var_3.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.c)), vec3<f32>(var_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(771f + var_3.b)), -117f)), 1f);
}

