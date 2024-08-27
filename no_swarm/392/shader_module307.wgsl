struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    let var_0 = select(false, arg_1.c.x, !any(select(select(vec4<bool>(arg_1.c.x, arg_1.c.x, true, false), vec4<bool>(arg_1.d.x, arg_1.c.x, true, false), arg_1.c.x), !vec4<bool>(arg_1.c.x, arg_1.d.x, false, false), vec4<bool>(true, arg_1.d.x, true, true))));
    var var_1 = abs(arg_0.yz);
    var var_2 = _wgslsmith_f_op_f32(arg_1.b.a + 1f);
    var var_3 = Struct_2(arg_1.a, arg_1.b, select(!select(select(vec2<bool>(true, var_0), arg_1.d, vec2<bool>(arg_1.c.x, false)), vec2<bool>(true, true), arg_1.d.x), select(!vec2<bool>(var_0, false), !select(vec2<bool>(arg_1.d.x, true), arg_1.c, true), select(!vec2<bool>(arg_1.d.x, false), select(arg_1.c, vec2<bool>(true, false), false), false && arg_1.d.x)), arg_1.c.x), !arg_1.d);
    var_1 = _wgslsmith_sub_vec2_i32(-vec2<i32>(~2147483647i, var_1.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-21933i, min(1i, ~var_1.x)), arg_0.yx));
    return arg_1.a;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(reverseBits(func_3(u_input.a.wxw, Struct_2(4503u, Struct_1(-205f), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(-1891f), select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), !vec2<bool>(true, all(vec3<bool>(true, false, false))), true), select(vec2<bool>(all(vec4<bool>(false, true, true, true)), true), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), select(all(vec2<bool>(true, false)), true, false)), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), true)));
    var var_1 = _wgslsmith_add_u32(var_0.a, ~(~var_0.a) ^ ~countOneBits(4294967295u)) | var_0.a;
    let var_2 = var_0.b;
    var_0 = Struct_2(reverseBits(_wgslsmith_clamp_u32(~var_0.a, ~1u, var_0.a)) ^ select(0u, select(var_0.a, 1u, all(vec4<bool>(false, var_0.d.x, var_0.c.x, var_0.c.x))), false), Struct_1(_wgslsmith_f_op_f32(min(-1218f, var_2.a))), select(vec2<bool>(var_0.d.x, true), vec2<bool>(all(vec2<bool>(false, false)), !any(vec4<bool>(true, true, var_0.d.x, true))), any(!select(var_0.d, vec2<bool>(var_0.c.x, var_0.c.x), var_0.d))), select(var_0.c, select(select(!var_0.c, var_0.c, true), select(vec2<bool>(var_0.d.x, false), select(vec2<bool>(var_0.c.x, false), var_0.d, vec2<bool>(true, false)), vec2<bool>(false, true)), vec2<bool>(true, !var_0.c.x)), true));
    var_1 = _wgslsmith_mult_u32(~var_0.a, ~(~_wgslsmith_mult_u32(7146u, 39728u)));
    return abs(-17599i);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = func_2();
    var var_2 = Struct_2(abs(0u), Struct_1(arg_0.a), vec2<bool>(arg_1, (-var_0 <= -var_1) == all(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, false, true)))), !select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), vec2<bool>(arg_1, true)), vec2<bool>(true, true), arg_1));
    var var_3 = Struct_2(~(~abs(1u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.a))))), var_2.d, vec2<bool>(arg_1, false));
    var_2 = Struct_2(countOneBits(1u), var_2.b, select(select(!var_2.c, var_2.c, vec2<bool>(true, true)), var_2.c, true), !var_3.d);
    return ~34730u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1035f - -517f), 1192f, any(vec3<bool>(true, arg_2, true)))) - 1658f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f)))) - _wgslsmith_f_op_f32(abs(153f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-261f))) - -1411f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1076f + -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2319f)))));
    let var_1 = -585f;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(min(-1931f, 1713f)), _wgslsmith_f_op_f32(var_1 + 1138f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(615f, -1147f, var_0.x, var_1)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -168f, var_0.x, 105f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0.x, -565f, -164f) - vec4<f32>(var_1, var_1, 414f, var_0.x)), vec4<bool>(arg_0, true, arg_2, false))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(810f, var_1, -1246f, -1269f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_1, 1489f) + vec4<f32>(var_1, var_0.x, var_0.x, -511f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 196f, var_0.x, var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -759f, -2135f, var_1)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1689f, var_1, 420f) - vec4<f32>(var_1, var_1, var_1, 3207f)))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2540f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_f_op_f32(select(var_0.x, var_1, false)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(336f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-361f, -619f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-673f, -1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1))), var_0.x));
    return -1954f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, !(!select(true, true, false)), all(vec3<bool>(false, true, any(vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_f_op_f32(451f + _wgslsmith_f_op_f32(func_4(false, ~_wgslsmith_add_u32(firstLeadingBit(88536u), func_1(Struct_1(1898f), false)), any(!var_0.xy) | !var_0.x)));
    let var_2 = max(-countOneBits(i32(-1i) * -1i) << (1u % 32u), u_input.b);
    let var_3 = Struct_2(countOneBits(_wgslsmith_div_u32(21184u >> (1u % 32u), 24543u)), Struct_1(477f), var_0.yx, !select(var_0.zz, !vec2<bool>(var_0.x, true), !(u_input.b < 0i)));
    let var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.b.a, -127f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(761f, var_3.b.a)))))), _wgslsmith_add_i32(var_2, _wgslsmith_add_i32(~7961i, -select(var_2, u_input.b, false))), vec2<u32>(var_4, abs(var_4)), _wgslsmith_f_op_f32(floor(-2501f)));
}

