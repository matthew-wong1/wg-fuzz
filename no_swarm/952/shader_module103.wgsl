struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = -2147483647i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(887f, -1793f, arg_0, 243f), vec4<f32>(210f, arg_0, arg_0, -775f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(842f, arg_0, -1270f, arg_0))), vec4<f32>(arg_0, 1000f, 314f, arg_0), all(vec4<bool>(false, true, true, false)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(-1466f, -770f, 1102f, arg_0), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(704f, arg_0, arg_0, -125f)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true))))));
    var var_2 = vec4<i32>(firstTrailingBit(var_0), _wgslsmith_mod_i32(var_0 | -52442i, var_0), -2147483647i, firstLeadingBit(min(firstTrailingBit(2147483647i) << (_wgslsmith_sub_u32(u_input.a.x, u_input.b.x) % 32u), _wgslsmith_sub_i32(1i, 1i))));
    var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(max(var_0, var_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -5802i, -1242i, var_2.x), vec4<i32>(var_0, 2147483647i, var_0, -78643i))), var_0, var_0, -(-2147483647i << (u_input.b.x % 32u))), vec4<i32>(_wgslsmith_mult_i32(-3989i, -var_2.x), 86967i | (var_2.x | 1156i), _wgslsmith_mult_i32(1i, 1i), var_0), vec4<i32>(countOneBits(var_2.x) | -2147483647i, i32(-1i) * -var_2.x, var_2.x, _wgslsmith_sub_i32(var_2.x, 2147483647i))) ^ vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(var_2.zzy, ~vec3<i32>(var_2.x, 36277i, 1i) >> (vec3<u32>(31559u, 4294967295u, u_input.a.x) % vec3<u32>(32u))), i32(-1i) * -1i, var_2.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1202f) - arg_0);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(860f, arg_1.x, -116f, 317f) + vec4<f32>(arg_1.x, -671f, arg_1.x, arg_1.x)) * vec4<f32>(arg_1.x, arg_1.x, 505f, -1910f)), vec4<f32>(959f, _wgslsmith_f_op_f32(f32(-1f) * -736f), 1f, arg_1.x))))));
    let var_1 = var_0;
    let var_2 = u_input.a.x;
    let var_3 = false;
    let var_4 = reverseBits(firstTrailingBit(select(~vec4<u32>(329u, u_input.a.x, var_2, 1u), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_2, var_2, 73906u, 17735u), max(vec4<u32>(9427u, 77728u, 4294967295u, u_input.b.x), vec4<u32>(var_2, var_2, u_input.b.x, 750u))), true)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.xyz)) * _wgslsmith_f_op_vec3_f32(-var_0.a.zyz)), vec3<f32>(_wgslsmith_f_op_f32(-202f * arg_1.x), 247f, _wgslsmith_f_op_f32(f32(-1f) * -1769f)))));
}

fn func_2(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-483f, -128f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1730f, -282f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1725f), vec2<f32>(-1000f, -917f)), true))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-713f, -550f))), vec2<f32>(-561f, 294f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1595f, -592f)), !any(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1081f, _wgslsmith_f_op_f32(ceil(581f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(i32(-1i) * -_wgslsmith_dot_vec2_i32(max(vec2<i32>(2147483647i, 21904i), vec2<i32>(0i, -2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-25357i, 10587i), vec2<i32>(0i, 3116i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(577f))), var_0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-946f + 604f))), _wgslsmith_f_op_f32(round(-390f)), 888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1530f))))));
    var_1 = var_2.a.zxw;
    var var_3 = Struct_1(var_2.a);
    return var_3.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    var var_0 = -9575i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(arg_2)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-301f, arg_0.x, arg_2.x, arg_2.x), arg_2, vec4<bool>(false, false, true, false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, arg_2.x, 610f, arg_2.x))) + _wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(arg_2.x, arg_0.x, 1718f, var_1.a.x))))));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1285f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -944f, -391f, arg_2.x));
    var_1 = var_3;
    return _wgslsmith_f_op_f32(round(-1445f));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = -countOneBits(vec4<i32>(-(i32(-1i) * -25924i), ~523i >> (firstTrailingBit(1u) % 32u), _wgslsmith_add_i32(_wgslsmith_mod_i32(-17458i, 2147483647i), -38062i), -58249i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(346f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(216f)) * _wgslsmith_div_f32(1000f, -199f))) * 1798f) - _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-712f, 1158f)))))), var_0.x, _wgslsmith_f_op_vec4_f32(func_2((vec3<u32>(arg_0, 106654u, u_input.b.x) & vec3<u32>(7297u, 0u, u_input.b.x)) ^ vec3<u32>(arg_0, u_input.b.x, u_input.a.x))), -12224i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_4(-90946i, vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))).zx * vec2<f32>(var_1, var_1));
    let var_3 = false;
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(879f, _wgslsmith_f_op_f32(269f + _wgslsmith_f_op_f32(min(-168f, _wgslsmith_f_op_f32(-607f + var_1))))) + vec2<f32>(760f, var_1));
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_2.x, var_2.x, -1381f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b.x);
    var var_1 = func_1(_wgslsmith_mult_u32(~(u_input.a.x & _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.b.x)), _wgslsmith_div_u32(~abs(u_input.b.x), select(~4294967295u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u), true))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1473f))), _wgslsmith_f_op_f32(-1648f - 1f), var_1.a.x, -1218f))));
    var var_2 = _wgslsmith_div_vec2_f32(var_0.a.xy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.a.ww + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.x, -317f)))), _wgslsmith_f_op_vec2_f32(-var_1.a.yw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(var_0.a.yz)), vec2<f32>(var_1.a.x, -723f)))))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-1985f - var_1.a.x))), _wgslsmith_f_op_f32(func_5(vec2<f32>(-1254f, 1734f), 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2003f, var_0.a.x, var_2.x, var_0.a.x)), _wgslsmith_mod_i32(2147483647i, -12212i))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + -210f) - 370f))), _wgslsmith_f_op_f32(-var_2.x)));
    let var_4 = 4294967295u;
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(204f, -530f, 233f, _wgslsmith_f_op_f32(var_2.x + -282f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a - var_0.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_1.a)) * vec4<f32>(-1020f, -1935f, var_1.a.x, var_1.a.x)))));
    var var_5 = all(select(!vec4<bool>(false, any(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, false))), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, true, true)), all(vec4<bool>(true, all(vec2<bool>(false, true)), select(true, false, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1151f), select(vec4<i32>(-1i) * -vec4<i32>(1i, 0i, 34714i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true)) | ~(-(vec4<i32>(2147483647i, 1i, -2147483647i, -44958i) << (vec4<u32>(var_4, 24137u, 1u, u_input.b.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(1u, u_input.b.x, 34682u))).x))));
}

