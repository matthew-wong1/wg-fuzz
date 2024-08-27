struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = ~u_input.d.yzy;
    var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-35444i, -9090i, -1i) & vec3<i32>(-2147483647i, u_input.b.x, u_input.a.x), u_input.d.wxw), -2147483647i, ~(-6809i)) ^ ~vec3<i32>(-_wgslsmith_mult_i32(u_input.b.x, 2147483647i), abs(select(10814i, u_input.b.x, false)), abs(0i));
    let var_1 = vec2<bool>(!((false != any(vec3<bool>(true, false, false))) & true), false);
    var_0 = u_input.a.wzy;
    let var_2 = Struct_1(~22756u, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f), -863f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1418f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -737f) + 779f), 1f), _wgslsmith_mult_i32(2147483647i, 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(659f, -1640f))))), _wgslsmith_f_op_f32(1312f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(738f, -431f)), 1774f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2346f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-549f)) * _wgslsmith_f_op_f32(f32(-1f) * -1477f))), _wgslsmith_f_op_f32(-940f * -658f)));
    return -4216i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec3<u32> {
    var var_0 = true;
    var var_1 = arg_1;
    let var_2 = countOneBits(~55214u) > _wgslsmith_sub_u32((var_1.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 54712u, var_1.a), vec3<u32>(arg_1.a, arg_1.a, 4294967295u)) % 32u)) | 11156u, max(_wgslsmith_sub_u32(max(var_1.a, arg_0.a), reverseBits(arg_0.a)), ~arg_0.a << (arg_1.a % 32u)));
    var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(59955u, 0u, arg_1.a) | _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a, 24989u, 4294967295u), vec3<u32>(arg_1.a, var_1.a, var_1.a)), vec3<u32>(_wgslsmith_div_u32(13656u, 32279u), 1u, arg_1.a)), arg_0.b, 2147483647i, arg_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2)));
    var_0 = true;
    return vec3<u32>(0u, ~1u, var_1.a) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, 0u, var_1.a) & (vec3<u32>(61706u, 17770u, 1u) >> (vec3<u32>(arg_0.a, var_1.a, 51101u) % vec3<u32>(32u))), vec3<u32>(4294967295u, 42226u, 1u)), _wgslsmith_mod_vec3_u32(~(vec3<u32>(0u, var_1.a, 1u) ^ vec3<u32>(var_1.a, arg_0.a, var_1.a)), ~(vec3<u32>(arg_0.a, arg_0.a, var_1.a) | vec3<u32>(4294967295u, 2002u, arg_1.a)))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> vec2<f32> {
    var var_0 = 881f;
    let var_1 = _wgslsmith_add_vec3_u32(reverseBits(func_4(Struct_1(~arg_1, _wgslsmith_div_vec3_f32(vec3<f32>(1084f, -870f, -406f), vec3<f32>(614f, 390f, 690f)), 2147483647i, 215f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(308f, 710f)))), Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2854f, 2507f, -1626f), vec3<f32>(1630f, 764f, 293f), arg_0.x)), func_3(), _wgslsmith_f_op_f32(select(-1292f, -1184f, arg_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(273f, 2846f) - vec2<f32>(566f, -1410f))), vec2<f32>(_wgslsmith_f_op_f32(floor(1066f)), 785f), !vec4<bool>(true, false, arg_0.x, true))), vec3<u32>(func_4(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13292u, 0u, arg_1), vec4<u32>(15850u, arg_1, arg_1, 6394u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1595f, 473f, -409f)), _wgslsmith_mod_i32(u_input.c, u_input.a.x), _wgslsmith_div_f32(2261f, -2766f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1577f, -374f) - vec2<f32>(1740f, 1810f))), Struct_1(_wgslsmith_add_u32(1u, arg_1), vec3<f32>(-236f, 797f, 575f), func_3(), _wgslsmith_f_op_f32(max(335f, 402f)), vec2<f32>(-1213f, -453f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1776f, -1000f)))), !vec4<bool>(true, true, true, arg_0.x)).x, 14599u << (arg_1 % 32u), ~(~0u)));
    let var_2 = ~vec4<u32>(abs(arg_1), ~(~var_1.x << (arg_1 % 32u)), 22820u, ~countOneBits(_wgslsmith_div_u32(39220u, 1613u)));
    let var_3 = Struct_1(1u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1099f, -671f, 779f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1146f, 421f, 227f) * vec3<f32>(-726f, -1000f, 1167f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1233f, -267f, 640f) - vec3<f32>(-531f, 1000f, 262f))), select(!arg_0.yyz, select(vec3<bool>(true, arg_0.x, arg_0.x), arg_0.yzw, arg_0.ywy), true)))), _wgslsmith_mod_i32(2147483647i, 654i), _wgslsmith_f_op_f32(-1136f * _wgslsmith_f_op_f32(min(-312f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1025f * -1940f) + _wgslsmith_f_op_f32(-632f * 352f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-150f - -1479f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, -1906f))))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) - 279f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-1004f - -1000f))))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_3.b.yx * vec2<f32>(var_3.b.x, var_3.d)))))), var_3.b.yz, vec2<bool>(all(!arg_0.wx), false))), _wgslsmith_div_vec2_f32(var_3.b.yx, var_3.b.zx), true));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x)));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(arg_0.x, false, false, true), 1u)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1))) - arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(84673u, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-152f, -956f, -329f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2158f, 1000f, 1018f) - vec3<f32>(-230f, -209f, 320f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -228f), 190f, _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-547f, -1669f, -944f))))), abs(u_input.c), 1596f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2872f, 186f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(true, false, true), vec2<f32>(-1448f, -198f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1507f, -1032f)))))));
    let var_1 = Struct_1(~_wgslsmith_mult_u32(abs(firstTrailingBit(var_0.a)), _wgslsmith_sub_u32(var_0.a, var_0.a << (5054u % 32u))), var_0.b, func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + 537f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d))), var_0.b.x) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.e, vec2<f32>(var_0.e.x, -2345f)) - _wgslsmith_f_op_vec2_f32(-var_0.e))))));
    let var_2 = var_0;
    let var_3 = Struct_1(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * var_0.e.x), var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + var_0.b.x) * -675f)), var_0.e.x), -21370i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.d)), 277f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.e.x, -1935f)) - -447f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.d)), _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.b.zz + vec2<f32>(var_0.e.x, -419f)))))));
    let var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_2.b), ~((u_input.a ^ reverseBits(u_input.d)) ^ ~u_input.d), u_input.d, vec3<u32>(var_3.a, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.a, 1u, var_1.a), vec4<u32>(var_3.a, var_2.a, 4294967295u, var_0.a))), 4294967295u), var_2.a);
}

