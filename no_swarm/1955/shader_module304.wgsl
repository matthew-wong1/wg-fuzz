struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = ~u_input.d.wyz;
    var var_1 = _wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(-2147483647i, ~(-2147483647i), max(-15136i, ~1i), 25881i));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(global0.x, -1503f, arg_1.x, arg_1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(1409f, global0.x), 231f, global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-654f, -1309f, -798f, global0.x)))))));
    var var_2 = ~u_input.a;
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1519f, -2561f, 905f) + vec3<f32>(global0.x, -1359f, -244f))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.wzx, global0.www), vec3<f32>(arg_1.x, global0.x, -1232f))) + _wgslsmith_f_op_vec3_f32(-global0.xyw)), !(!(!vec4<bool>(arg_0.a.c.x, arg_2.b.x, true, true))), vec4<u32>(u_input.e, 1u, ~27496u, var_2.x ^ ~_wgslsmith_mult_u32(4294967295u, var_2.x)));
    return _wgslsmith_f_op_vec3_f32(-global0.yxx);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, 22459u), vec3<u32>(34294u, 42137u, u_input.c)), vec4<i32>(u_input.b, arg_0.a.b.x, u_input.b, u_input.b), select(vec3<bool>(false, arg_0.a.c.x, true), vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x), arg_0.a.c)), !arg_0.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, 1204f, global0.x, arg_2.x), vec4<f32>(arg_2.x, arg_2.x, 156f, -300f), arg_0.b.x))))), arg_0)).x, _wgslsmith_div_f32(-147f, _wgslsmith_f_op_f32(ceil(arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1)), arg_2.x)))), _wgslsmith_f_op_f32(round(arg_1)));
    global0 = vec4<f32>(arg_1, arg_1, arg_1, arg_2.x);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-800f, -1068f)) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), global0.x, arg_0.a.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(626f)))))), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, -1000f)) * global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.x, -172f, true)) + -156f)));
    var var_1 = -vec2<i32>(2147483647i, max(abs(~(-1i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_0.a.b.zww), arg_0.a.b.xxx | vec3<i32>(0i, -14213i, 2147483647i))));
    var var_2 = any(select(vec4<bool>(any(select(arg_0.b.xxx, arg_0.b.wyw, arg_0.b.xww)), arg_0.a.c.x, !(!arg_0.b.x), arg_0.b.x), vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) == 158f, !(var_1.x < -46558i), true, all(!arg_0.a.c)), all(!select(vec3<bool>(false, arg_0.b.x, false), vec3<bool>(false, true, arg_0.b.x), arg_0.a.c.x))));
    return true;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(select(_wgslsmith_sub_vec4_u32(~max(vec4<u32>(u_input.c, u_input.c, 20787u, 33907u), vec4<u32>(108180u, 0u, arg_1.a.x, arg_1.a.x)), vec4<u32>(~arg_1.a.x, u_input.c, _wgslsmith_mult_u32(11738u, u_input.c), _wgslsmith_sub_u32(4294967295u, arg_1.a.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.c, ~u_input.e, 1u, _wgslsmith_add_u32(11597u, arg_1.a.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(70571u, u_input.c, u_input.a.x, arg_1.a.x), vec4<u32>(1u, u_input.c, 0u, 98288u))), all(select(vec2<bool>(arg_1.c.x, true), select(vec2<bool>(false, false), vec2<bool>(true, arg_0.x), false), vec2<bool>(arg_0.x, false)))), ~(vec4<u32>(_wgslsmith_mod_u32(89690u, 9648u), 1u, ~4294967295u, ~u_input.e) & ~abs(vec4<u32>(arg_1.a.x, u_input.e, 4450u, 17593u))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(121f))));
    let var_2 = arg_0.x;
    var var_3 = Struct_2(Struct_1(var_0.zwy, -u_input.d, vec3<bool>(any(arg_1.c.yx) != arg_0.x, true, !var_2)), !vec4<bool>(func_3(Struct_2(Struct_1(vec3<u32>(31660u, 4294967295u, 1u), arg_1.b, vec3<bool>(false, true, false)), vec4<bool>(arg_0.x, arg_1.c.x, var_2, true)), _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_vec3_f32(func_2(Struct_2(arg_1, vec4<bool>(arg_1.c.x, arg_0.x, arg_1.c.x, false)), vec4<f32>(global0.x, global0.x, -1000f, 994f), Struct_2(Struct_1(vec3<u32>(arg_1.a.x, u_input.a.x, arg_1.a.x), vec4<i32>(u_input.d.x, 30367i, -40423i, arg_1.b.x), vec3<bool>(arg_1.c.x, arg_0.x, var_2)), vec4<bool>(false, var_2, arg_0.x, true))))), var_2 && (global0.x < global0.x), true, arg_0.x));
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, 2009f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, global0.x, -2712f))))), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 1650f, _wgslsmith_f_op_f32(-1000f + 223f)), vec3<bool>(true, true, true))), vec4<bool>(arg_1.c.x, true, arg_1.c.x, true), vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, 0u), ~var_3.a.a.x), var_0.x, 43079u, ~1u));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global0 = vec4<f32>(-837f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-512f, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    var var_0 = arg_0.a.a.x;
    let var_1 = reverseBits(-min(~_wgslsmith_add_vec3_i32(u_input.d.xyw, vec3<i32>(arg_0.a.b.x, 2147483647i, -25449i)), _wgslsmith_add_vec3_i32(vec3<i32>(-4733i, 30163i, 0i), vec3<i32>(u_input.d.x, -1i, arg_1.b.x) >> (vec3<u32>(u_input.e, 55903u, u_input.c) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - 947f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -627f), -2439f)), _wgslsmith_f_op_f32(trunc(global0.x)), -1246f) - _wgslsmith_div_vec4_f32(vec4<f32>(693f, global0.x, _wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(arg_1.a, arg_1.b, vec3<bool>(false, true, false)), vec4<bool>(arg_0.a.c.x, arg_1.c.x, true, arg_1.c.x)), vec4<f32>(-589f, 1000f, 596f, -361f), arg_0)).x, -294f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -324f, 491f, global0.x)), vec4<f32>(global0.x, -100f, -1207f, global0.x)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -822f, -1000f, 1369f) * vec4<f32>(1092f, global0.x, global0.x, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(571f + global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(global0.x, -981f)), _wgslsmith_f_op_f32(f32(-1f) * -125f)), false)))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -118f), var_2.x, _wgslsmith_f_op_f32(ceil(-1447f)), 1342f));
    return func_1(!vec3<bool>(true, arg_1.c.x, any(vec2<bool>(true, false))), func_1(select(select(arg_0.a.c, select(arg_0.a.c, vec3<bool>(false, true, false), vec3<bool>(true, false, false)), arg_0.a.c.x), !select(arg_0.a.c, arg_1.c, true), select(vec3<bool>(false, arg_1.c.x, true), select(vec3<bool>(true, arg_1.c.x, true), arg_1.c, vec3<bool>(false, arg_0.a.c.x, arg_0.b.x)), arg_0.a.c)), func_1(select(arg_0.b.xzz, !arg_0.b.yxx, vec3<bool>(arg_0.b.x, arg_1.c.x, arg_0.b.x)), Struct_1(func_1(vec3<bool>(arg_1.c.x, arg_0.a.c.x, true), arg_1).a, vec4<i32>(-24214i, var_1.x, 0i, var_1.x), !arg_0.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, any(vec3<bool>(true, true, true)));
    var var_1 = -u_input.d.zy;
    var var_2 = vec3<bool>(all(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, false), var_0.x), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, true), true), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), false))) | true, all(vec3<bool>(var_0.x, var_0.x, global0.x != global0.x)), true);
    var var_3 = firstLeadingBit(0u);
    let var_4 = func_4(Struct_2(func_1(!select(vec3<bool>(var_0.x, var_2.x, true), vec3<bool>(var_2.x, true, true), vec3<bool>(false, false, false)), Struct_1(reverseBits(vec3<u32>(64285u, u_input.e, u_input.c)), _wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, vec4<i32>(0i, u_input.d.x, var_1.x, -1939i)), select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, false, false), vec3<bool>(var_2.x, true, var_2.x)))), !select(!vec4<bool>(var_0.x, var_2.x, false, false), vec4<bool>(var_2.x, var_0.x, true, var_2.x), any(vec3<bool>(var_2.x, var_0.x, var_2.x)))), func_1(select(!(!vec3<bool>(var_0.x, true, true)), select(!vec3<bool>(var_0.x, var_2.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_2.x), vec3<bool>(var_2.x, true, false), var_2.x), vec3<bool>(false, var_0.x, false)), vec3<bool>(select(var_0.x, var_0.x, true), all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true)), Struct_1(~vec3<u32>(72586u, u_input.c, u_input.a.x), countOneBits(~u_input.d), vec3<bool>(true, func_1(vec3<bool>(var_2.x, var_0.x, var_2.x), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), u_input.d, vec3<bool>(false, true, var_0.x))).c.x, true))));
    var_3 = _wgslsmith_add_u32(abs(1u), u_input.e) & reverseBits(~var_4.a.x);
    var var_5 = _wgslsmith_add_vec2_u32(~var_4.a.xz, func_4(Struct_2(var_4, vec4<bool>(false, true || var_2.x, all(vec4<bool>(var_4.c.x, false, var_4.c.x, true)), all(var_2.yz))), func_4(Struct_2(func_4(Struct_2(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 0u), var_4.b, var_4.c), vec4<bool>(var_4.c.x, var_2.x, var_2.x, var_2.x)), Struct_1(vec3<u32>(var_4.a.x, 1u, var_4.a.x), var_4.b, vec3<bool>(var_4.c.x, var_0.x, var_4.c.x))), vec4<bool>(false, false, false, var_2.x)), Struct_1(_wgslsmith_mod_vec3_u32(var_4.a, var_4.a), var_4.b, !var_4.c))).a.yx);
    var_1 = func_4(Struct_2(func_1(var_4.c, func_4(Struct_2(var_4, vec4<bool>(false, var_0.x, false, var_2.x)), Struct_1(vec3<u32>(45971u, var_4.a.x, 110675u), vec4<i32>(u_input.d.x, -4046i, 4265i, var_1.x), vec3<bool>(var_4.c.x, true, false)))), !select(vec4<bool>(var_2.x, var_0.x, false, var_2.x), vec4<bool>(true, var_4.c.x, true, false), false)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), -select(u_input.d, u_input.d, vec4<bool>(true, var_0.x, var_4.c.x, false)), func_1(func_4(Struct_2(var_4, vec4<bool>(true, var_2.x, false, false)), Struct_1(vec3<u32>(var_5.x, 1u, u_input.c), u_input.d, var_4.c)).c, Struct_1(var_4.a, vec4<i32>(-15088i, -2147483647i, 0i, 28082i), vec3<bool>(true, true, var_4.c.x))).c)).b.wz & ~(~vec2<i32>(max(19123i, u_input.d.x), firstTrailingBit(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(2357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1078f + _wgslsmith_f_op_f32(f32(-1f) * -342f))))));
}

