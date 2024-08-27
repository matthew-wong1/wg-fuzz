struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = vec4<i32>(-491i, ~u_input.a, 48510i, -3339i);
    let var_1 = _wgslsmith_div_u32(_wgslsmith_mod_u32(64372u, ~firstTrailingBit(countOneBits(4294967295u))), _wgslsmith_mult_u32(1u, 1u));
    let var_2 = vec4<bool>(true, true, min(-var_0.x, -2147483647i) != 6792i, all(vec3<bool>(all(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, true)))));
    let var_3 = -1i;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, 1859f))))))), select(select(!(!vec2<bool>(var_2.x, true)), vec2<bool>(true, !var_2.x), var_2.xz), var_2.zz, false), _wgslsmith_clamp_i32(-1i, reverseBits(u_input.a | firstLeadingBit(var_0.x)), u_input.a), var_1, 4294967295u);
    return var_4.a;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> f32 {
    let var_0 = arg_3.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-561f, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1076f), 900f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_2, 1799f, arg_2), vec4<f32>(-795f, 1428f, arg_1, arg_1))))))), arg_0);
    let var_2 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_0 < var_1.b, all(vec3<bool>(true, false, true)), true, true), all(vec2<bool>(true, true))));
    let var_3 = Struct_4(vec3<i32>(~countOneBits(0i), -4210i, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.a), vec2<i32>(1i, -1i))), Struct_1(_wgslsmith_f_op_vec4_f32(max(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)))), arg_0), var_2.x);
    var_1 = var_3.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -547f);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: f32) -> bool {
    var var_0 = Struct_2(-242f, !arg_1.wy, firstLeadingBit(max(-33218i, _wgslsmith_mod_i32(u_input.a << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0.x), vec2<i32>(589i, arg_0.x))))), _wgslsmith_div_u32(abs(countOneBits(~0u)), firstTrailingBit(1u)), _wgslsmith_div_u32(~6072u, 1u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_4(~_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.e, 4294967295u), 1u | var_0.e), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1785f))), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(func_3()), Struct_3(~(~vec3<u32>(var_0.e, 31687u, 80564u))))), select(vec2<bool>(true, any(vec2<bool>(true, true))), !(!arg_1.zx), arg_1.x), ~_wgslsmith_mod_i32(var_0.c, ~var_0.c >> (_wgslsmith_clamp_u32(var_0.e, var_0.d, 1u) % 32u)), _wgslsmith_dot_vec3_u32(max(~(vec3<u32>(var_0.e, 4294967295u, var_0.e) | vec3<u32>(4294967295u, var_0.d, var_0.d)), countOneBits(~vec3<u32>(var_0.d, var_0.e, var_0.e))), vec3<u32>(var_0.e, 4294967295u, ~115790u) | vec3<u32>(17208u, firstTrailingBit(11680u), ~0u)), 1u);
    return all(select(arg_1.wxz, vec3<bool>(var_1.b.x | (var_0.b.x != true), true, false), var_1.b.x));
}

fn func_1() -> Struct_3 {
    var var_0 = 4294967295u;
    let var_1 = Struct_2(-377f, select(vec2<bool>(all(vec4<bool>(true, true, false, true)), !any(vec2<bool>(false, true))), vec2<bool>(any(vec3<bool>(true, true, true)), false), true), u_input.a, ~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(11774u, 4294967295u), vec2<u32>(98379u, 4294967295u)))), 4294967295u);
    var var_2 = Struct_3(_wgslsmith_mod_vec3_u32(select(vec3<u32>(~55172u, var_1.d, _wgslsmith_sub_u32(4294967295u, 7254u)), ~vec3<u32>(4294967295u, 1u, 66429u) >> (~vec3<u32>(var_1.e, 61944u, 1u) % vec3<u32>(32u)), func_2(vec3<i32>(-2147483647i, var_1.c, var_1.c), vec4<bool>(var_1.b.x, var_1.b.x, true, false), vec4<f32>(873f, var_1.a, -644f, var_1.a), var_1.a) && all(vec4<bool>(var_1.b.x, var_1.b.x, false, true))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.d, var_1.d, var_1.d), vec3<u32>(var_1.d, 1u, var_1.e)), countOneBits(vec3<u32>(var_1.e, 22395u, var_1.e)))));
    var var_3 = max(_wgslsmith_sub_vec3_u32(~(~var_2.a), var_2.a), var_2.a);
    var_2 = Struct_3(firstTrailingBit(var_2.a));
    return Struct_3(vec3<u32>(var_2.a.x, ~firstTrailingBit(90047u) << (~60553u % 32u), 4294967295u));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> vec3<u32> {
    let var_0 = Struct_4(vec3<i32>(_wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, arg_2), -vec3<i32>(-7206i, -14967i, u_input.a))), -41310i, u_input.a), Struct_1(vec4<f32>(412f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x + -121f))), -2176f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(624f, 1770f))), arg_0.a.x), true);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.b.a.wxz, vec3<f32>(_wgslsmith_f_op_f32(var_0.b.a.x * arg_1.x), _wgslsmith_f_op_f32(var_0.b.a.x - var_0.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -600f))), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.a.x + _wgslsmith_f_op_f32(abs(869f))), _wgslsmith_f_op_f32(round(-183f)), _wgslsmith_f_op_f32(-arg_1.x)), -709f <= _wgslsmith_div_f32(var_0.b.a.x, _wgslsmith_f_op_f32(trunc(var_0.b.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - -279f), _wgslsmith_f_op_f32(-292f + -126f), -807f))));
    return ~vec3<u32>(22713u, 3020u, arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(19012u, 15083u << (1u % 32u), ~4325u), ~(~countOneBits(vec3<u32>(90629u, 1u, 1u))));
    var var_1 = Struct_3(func_5(func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(608f, -982f, -1917f, -345f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(996f, -1400f, -1000f, 128f) + vec4<f32>(397f, 3192f, -2652f, -478f))) * vec4<f32>(1f, 1f, 1f, 1f)), -u_input.a));
    let var_2 = (select(_wgslsmith_sub_vec4_i32(vec4<i32>(13106i, -2147483647i, u_input.a, 1i), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)) >> (max(vec4<u32>(1124u, var_1.a.x, 37237u, 1u), vec4<u32>(var_1.a.x, var_1.a.x, 0u, 1u)) % vec4<u32>(32u)), vec4<i32>(1i, firstLeadingBit(u_input.a), select(1i, u_input.a, false), abs(u_input.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false))) & firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-40351i, 33309i, u_input.a, u_input.a), abs(vec4<i32>(u_input.a, 51296i, u_input.a, u_input.a)), max(vec4<i32>(u_input.a, -1409i, 16685i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -38161i))))) | min(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 23945i, 1i, 0i), select(vec4<i32>(4837i, 0i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<bool>(false, true, false, false)), select(vec4<i32>(u_input.a, 10840i, 2147483647i, u_input.a), vec4<i32>(u_input.a, 76227i, -25141i, u_input.a), true)) ^ select(vec4<i32>(u_input.a, u_input.a, -21186i, 18734i), vec4<i32>(-60993i, u_input.a, 8352i, -1i) ^ vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), any(vec3<bool>(false, false, false))), select(vec4<i32>(u_input.a, u_input.a, 27125i, u_input.a), -vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false)) | ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(-894i, -2147483647i, -53000i, u_input.a)));
    var var_3 = vec4<i32>(-31271i, var_2.x & firstLeadingBit(_wgslsmith_add_i32(~(-53920i), 48337i)), u_input.a, _wgslsmith_add_i32(var_2.x, 1i));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1252f), -1323f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f - 242f)), _wgslsmith_f_op_f32(-728f * _wgslsmith_div_f32(-291f, -1035f)))), _wgslsmith_div_u32(~min(49742u, firstTrailingBit(var_1.a.x)), 31774u));
    let var_5 = false;
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.a.x))), _wgslsmith_f_op_f32(1395f - _wgslsmith_f_op_f32(func_4(var_4.b, var_4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.a.x, var_4.a.x))), Struct_3(firstTrailingBit(vec3<u32>(var_4.b, 4294967295u, var_1.a.x)))))), -543f, _wgslsmith_f_op_f32(var_4.a.x * var_4.a.x));
    var_3 = var_2;
    var_3 = ~(~(-_wgslsmith_mult_vec4_i32(var_2 | var_2, var_2 << (vec4<u32>(var_4.b, 20316u, var_4.b, 25450u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(var_4.a.yz, vec2<f32>(var_4.a.x, 435f), true))))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(300f, var_4.a.x), _wgslsmith_f_op_f32(trunc(var_4.a.x))), var_4.a.yw))), abs(~33226u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(108055u, 4294967295u, abs(var_1.a.x), var_4.b), vec4<u32>(abs(var_1.a.x), ~49220u, _wgslsmith_dot_vec3_u32(vec3<u32>(31262u, var_1.a.x, 37828u), vec3<u32>(4709u, 69342u, 46122u)), 0u & var_1.a.x)));
}

