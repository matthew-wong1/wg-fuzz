struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = ~firstLeadingBit(_wgslsmith_div_vec2_u32(max(~u_input.b.xy, _wgslsmith_mod_vec2_u32(vec2<u32>(13112u, 31797u), u_input.b.zy)), ~reverseBits(u_input.a.ww)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-769f, 1039f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1897f - 660f) - _wgslsmith_f_op_f32(f32(-1f) * -380f)) + 2275f)) * 516f);
    var_1 = -922f;
    var var_2 = true;
    return select(select(vec4<bool>(!any(arg_1.yz), (0u >= var_0.x) && any(arg_1), !arg_2.a.x, !(!arg_1.x)), select(vec4<bool>(!arg_0, !arg_2.a.x, !arg_0, select(arg_2.a.x, arg_1.x, false)), !(!vec4<bool>(true, arg_0, true, arg_0)), true), false), !(!(!vec4<bool>(arg_0, arg_2.a.x, arg_0, true))), select(!select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_2.a.x, false, true, false), vec4<bool>(true, true, true, true)), select(select(!vec4<bool>(true, arg_0, true, true), vec4<bool>(true, arg_1.x, false, arg_1.x), arg_0), !select(vec4<bool>(arg_0, arg_2.a.x, arg_1.x, arg_0), vec4<bool>(arg_1.x, false, arg_2.a.x, arg_2.a.x), vec4<bool>(false, true, arg_1.x, false)), all(select(vec4<bool>(false, arg_2.a.x, arg_2.a.x, true), vec4<bool>(arg_1.x, false, arg_0, false), vec4<bool>(false, true, arg_2.a.x, arg_2.a.x)))), vec4<bool>(true, select(!arg_0, !arg_1.x, select(true, arg_1.x, arg_2.a.x)), true, !any(vec3<bool>(arg_0, false, true)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -943f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-403f, arg_0.b, -1164f, 226f) - vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.b, arg_0.a.x))))));
    let var_1 = false;
    let var_2 = vec2<bool>(!all(vec2<bool>(!var_1, false)), var_0.x >= _wgslsmith_f_op_f32(-arg_0.a.x));
    var var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-7167i, 2147483647i, 30005i, -19385i), vec4<i32>(~(-2147483647i), ~(-29362i), -33903i, 34729i)), select(abs(firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, 0i, -1i))), select(vec4<i32>(1i, 17043i, -2147483647i, 1i), vec4<i32>(56180i, -4155i, 41691i, 1i), vec4<bool>(var_1, var_1, var_1, true)) >> (vec4<u32>(32154u, 1u, 4294967295u, 74426u) % vec4<u32>(32u)), !func_3(var_2.x, vec3<bool>(true, true, var_2.x), Struct_1(vec2<bool>(var_1, var_2.x))))), max(-_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-12702i, 0i, -2147483647i, -2147483647i)), vec4<i32>(-2147483647i, -2147483647i, -1i, -10197i)), max(countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, 1i, min(-49920i, -15604i), 2648i))));
    var_3 = ~(_wgslsmith_sub_vec4_i32(-vec4<i32>(-41508i, -41813i, -22898i, 1i), ~vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x) | vec4<i32>(-2147483647i, var_3.x, 0i, var_3.x)) ^ min(reverseBits(countOneBits(vec4<i32>(var_3.x, var_3.x, var_3.x, 32003i))), -reverseBits(vec4<i32>(-15381i, var_3.x, -11385i, var_3.x))));
    return var_0.x;
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1486f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-623f)) + -206f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1210f, -590f)), _wgslsmith_f_op_f32(func_2(Struct_2(vec2<f32>(-1000f, -428f), 1000f), u_input.b))) * -227f))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0 - var_0))))), _wgslsmith_f_op_f32(-var_0.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1586f - var_0.x))), !all(vec4<bool>(false, true, false, false)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-342f - var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1537f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1012f, _wgslsmith_f_op_f32(func_1(vec4<i32>(1i, 1i, 1i, 1i) ^ (vec4<i32>(-2147483647i, 0i, 1224i, 0i) << (u_input.a % vec4<u32>(32u)))))), vec2<f32>(690f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -821f) + 216f)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(abs(-322f))))), _wgslsmith_f_op_f32(min(var_0.x, -355f)));
    var var_2 = _wgslsmith_mod_vec4_u32(u_input.a, u_input.a << (~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 38667u), ~u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)));
    let var_3 = ~u_input.b.x;
    var var_4 = Struct_1(vec2<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))), !all(vec2<bool>(true, true))));
    var var_5 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1654f, _wgslsmith_f_op_f32(-1f))));
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(182f, vec4<f32>(1974f, _wgslsmith_f_op_f32(ceil(var_5.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, -1164f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(657f, _wgslsmith_f_op_f32(-var_5.x), var_4.a.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i), min(1i, abs(-1i))), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 18498i), vec3<i32>(-1i, -11837i, 1i)), -45247i)), ~countOneBits(firstLeadingBit(3742i) >> (var_2.x % 32u)));
}

