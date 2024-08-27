struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -902f))), -407f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1093f, -1241f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1620f, 906f)))))));
    var_0 = !(!((u_input.e > u_input.c) & (-1223f <= _wgslsmith_f_op_f32(var_1.x + var_1.x))));
    var var_2 = Struct_4(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) << (~vec4<u32>(8957u, 1u, 10719u, u_input.e) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), ~1u, Struct_1(~_wgslsmith_div_u32(40746u, u_input.b.x) << (u_input.a.x % 32u), (select(vec2<i32>(333i, -1i), vec2<i32>(21703i, 4050i), false) & (vec2<i32>(-2147483647i, -2147483647i) << (u_input.b % vec2<u32>(32u)))) | _wgslsmith_div_vec2_i32(vec2<i32>(4062i, 2147483647i), ~vec2<i32>(2147483647i, 0i)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1952f + var_1.x), _wgslsmith_f_op_f32(round(var_1.x)), arg_0.x))), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 0i), vec3<i32>(25918i, -2147483647i, 48603i)), _wgslsmith_clamp_i32(23302i, -1i, -1i)) & _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(-2147483647i, -1i))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f) + _wgslsmith_f_op_f32(trunc(var_1.x))), 725f, _wgslsmith_f_op_f32(round(927f)), -366f), _wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 26418i), vec3<i32>(-38749i, -8328i, -1i))) >> (firstTrailingBit(vec2<u32>(u_input.d.x, 13136u) >> (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(max(34723i, -1i), 1i)));
    let var_3 = Struct_3(all(arg_0), false, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(1650f, 816f))), _wgslsmith_f_op_vec2_f32(var_2.d.yz + _wgslsmith_div_vec2_f32(var_1.yz, _wgslsmith_f_op_vec2_f32(-var_1.xy)))));
    return var_2.d;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = ~(~u_input.d);
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = reverseBits(vec2<i32>(select(0i, -11099i, false), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, -27612i), vec3<i32>(47611i, 23295i, 51117i))) & 1i));
    let var_4 = _wgslsmith_f_op_vec4_f32(func_2(select(vec3<bool>(all(!vec3<bool>(var_2.x, var_2.x, var_2.x)), all(!var_2.zx), (var_0 >= var_0) & (var_1.x < var_1.x)), vec3<bool>(!var_2.x, true, var_2.x), var_2)));
    return !(var_3.x > -countOneBits(2147483647i));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_3(select(all(vec2<bool>(true, true)), !any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false)), true), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 803f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(682f, 1034f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1841f, -554f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(true, false, true))).x, _wgslsmith_f_op_f32(f32(-1f) * -271f)))), any(vec2<bool>(true, false)))));
    let var_1 = _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(1i, 1i, 1i)), select(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-31575i, 2147483647i, -28462i)), vec3<i32>(31731i, 1i, 1i), -vec3<i32>(-2147483647i, -2669i, -8399i)), any(vec3<bool>(var_0.a, false, false))) ^ vec3<i32>(-firstLeadingBit(-1i), -1i, -25431i));
    var var_2 = !select(!vec3<bool>(select(true, var_0.b, var_0.b), true, true), select(select(!vec3<bool>(var_0.a, true, true), vec3<bool>(false, var_0.a, false), var_0.a), vec3<bool>(var_1.x < var_1.x, var_0.b, u_input.a.x != 25438u), true), true);
    var var_3 = var_0;
    let var_4 = ~firstLeadingBit(select(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(0u, u_input.c), false | var_3.a) | vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.e, u_input.c)));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x + -1735f), 2091f, _wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.c.x, var_3.c.x, -746f), vec3<f32>(var_0.c.x, var_3.c.x, 1261f)) - vec3<f32>(var_0.c.x, -843f, var_3.c.x))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.c.x, var_0.c.x))), var_3.c.x, var_3.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(-1i));
    var var_1 = ~(~(-(~var_0)));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~var_0, var_0, -var_0), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -71704i, var_0), vec3<i32>(-1i, var_0, var_0))) >> (~u_input.d.xxz % vec3<u32>(32u))), -_wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, var_0) & 1i, var_0), _wgslsmith_div_i32(10775i >> ((min(4294967295u, u_input.b.x) ^ 4294967295u) % 32u), var_0 ^ var_0), 2147483647i);
    let var_3 = select(vec4<bool>(all(vec3<bool>(false, true, all(vec2<bool>(false, false)))), any(vec4<bool>(true, true, true, true)), true, func_1()), select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, any(vec3<bool>(true, false, true)), false), vec4<bool>(true, true, true, any(vec2<bool>(false, false)))), vec4<bool>(select(false, true, true), !any(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, false)), true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, false, all(vec2<bool>(true, false))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))), !vec4<bool>(true, abs(-1i) >= _wgslsmith_mod_i32(var_2.x, var_0), true, false));
    var_1 = _wgslsmith_dot_vec2_i32(~(~vec2<i32>(abs(-2147483647i), 10698i)), vec2<i32>(var_0, 45654i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1013f, -1023f, 700f), vec3<f32>(-1470f, 413f, -854f)) + _wgslsmith_div_vec3_f32(vec3<f32>(845f, 1176f, 1078f), vec3<f32>(1188f, 1071f, -2262f))) + _wgslsmith_f_op_vec3_f32(func_3())))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(true, true, true))).x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f - _wgslsmith_f_op_f32(f32(-1f) * -1624f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-961f)), _wgslsmith_f_op_f32(sign(-1776f)), _wgslsmith_f_op_f32(3859f - -694f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(553f, _wgslsmith_f_op_f32(sign(488f)), _wgslsmith_f_op_f32(ceil(-1092f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1987f, 274f, -1659f), vec3<f32>(-1180f, -1224f, 565f)))))));
}

