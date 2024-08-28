struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> bool {
    var var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-505f, -1018f, -1391f, -269f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1650f, 1789f, -289f, 542f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(max(598f, -211f)), _wgslsmith_f_op_f32(f32(-1f) * -510f), -1442f)), vec4<f32>(337f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(863f * -1865f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-877f, 1491f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_1.zzx);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), vec3<u32>(~7656u, 4294967295u, select(~0u, 60146u, any(vec4<bool>(true, true, true, true)) & any(vec4<bool>(true, true, true, false)))));
    let var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(-var_1.a.xxz);
    return any(select(vec3<bool>(true, true, true), vec3<bool>(!all(vec4<bool>(true, true, false, true)), true, any(vec3<bool>(true, true, true))), vec3<bool>(_wgslsmith_f_op_f32(floor(982f)) <= 577f, true, false)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = firstTrailingBit(arg_1);
    var var_2 = Struct_1(vec4<f32>(518f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1331f), 857f), u_input.a);
    var var_3 = vec4<bool>(arg_0.x, false, any(!arg_0), any(vec2<bool>(var_2.a.x < _wgslsmith_div_f32(693f, 188f), true)));
    var var_4 = min(~(~_wgslsmith_sub_vec2_i32(vec2<i32>(42738i, 39136i), vec2<i32>(63609i, -40874i))), _wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -43101i, ~1i), select(vec2<i32>(1i, 1i), -_wgslsmith_add_vec2_i32(vec2<i32>(51562i, -17832i), vec2<i32>(-60459i, -45922i)), vec2<bool>(true, arg_0.x))));
    return Struct_1(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), -424f, func_3(_wgslsmith_clamp_i32(-2147483647i, var_4.x, var_4.x), ~vec4<u32>(70769u, u_input.a.x, 38996u, 0u)))), -514f, _wgslsmith_f_op_f32(808f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + -218f))), u_input.a);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -346f));
    let var_1 = -51338i;
    var var_2 = !(!(!select(vec4<bool>(true, arg_0, false, arg_0), !vec4<bool>(arg_0, false, arg_0, true), true)));
    let var_3 = ((_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.b.x, u_input.a.x), ~arg_1.b.x) >= 4294967295u) || false) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(525f, arg_1.a.x))) != var_0);
    var_2 = vec4<bool>(var_0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), false, !any(vec2<bool>(any(vec3<bool>(arg_0, var_2.x, var_3)), false && arg_0)), !func_3(1291i, ~(~vec4<u32>(arg_1.b.x, 4034u, u_input.a.x, 62127u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - arg_1.a.x) - -954f)) + var_0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1513f)))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> vec3<f32> {
    let var_0 = ~u_input.a.yx;
    var var_1 = ~20299i;
    let var_2 = vec2<u32>(u_input.b, abs(4294967295u));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_4(true, func_2(vec4<bool>(false, false, true, false), 1u), arg_0.x))) * _wgslsmith_f_op_f32(round(-414f)))));
    var_1 = reverseBits(abs(-7140i));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(f32(-1f) * -244f)), var_3)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(329f, -171f, var_3), vec3<f32>(var_3, -2295f, -213f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-216f, -1043f, var_3), vec3<f32>(var_3, var_3, var_3))))), vec3<f32>(-943f, _wgslsmith_f_op_f32(func_4(true, Struct_1(vec4<f32>(var_3, var_3, -731f, var_3), vec3<u32>(var_0.x, var_2.x, var_0.x)), 2147483647i)), -880f)) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_3)))), _wgslsmith_f_op_f32(floor(-995f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-451f)), -1019f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(591f + _wgslsmith_f_op_f32(abs(2153f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1646f) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(457f, -359f), -1049f, true)))));
    var_0 = 1269f;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1790f + 245f), _wgslsmith_div_f32(_wgslsmith_div_f32(-2480f, -1000f), 1f), 798f) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1580f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-836f, 944f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1739f - 1000f), _wgslsmith_f_op_f32(-128f - -370f)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1338f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1366f, _wgslsmith_f_op_f32(-var_1.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 1036i, -21097i), vec3<i32>(reverseBits(~(-1815i)), 0i, _wgslsmith_mult_i32(1i, 1i))), 21574i));
    let var_2 = vec2<u32>(4294967295u, 33894u) << (u_input.a.xx % vec2<u32>(32u));
    var_0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-445f - _wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(min(-377f, 668f)), 1f)));
}

