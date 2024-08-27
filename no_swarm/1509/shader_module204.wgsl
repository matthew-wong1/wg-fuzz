struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<i32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = -1622f;
    var var_1 = Struct_4(Struct_1(1u), Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1711f, -1112f, 1521f, var_0))))))), vec2<u32>(_wgslsmith_add_u32(reverseBits(0u), 13037u), _wgslsmith_mult_u32(4294967295u, min(4294967295u, 0u))), Struct_1(abs(~1u))), vec2<i32>(0i, _wgslsmith_dot_vec3_i32(u_input.b & u_input.b, _wgslsmith_sub_vec3_i32(vec3<i32>(8860i, 1i, -6488i), vec3<i32>(10772i, arg_0, 1i))) | ~u_input.a), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1023f, var_0), vec2<f32>(-147f, -1795f), vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(abs(var_0)) >= -1000f), !all(vec3<bool>(-1i >= u_input.b.x, true, true)));
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    var_1 = Struct_4(Struct_1(~(~var_1.b.b.x)), Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.a) - var_1.b.a))), ~var_1.b.b, Struct_1(_wgslsmith_mult_u32(~var_1.b.c.a, var_1.b.c.a))), var_1.c, var_1.d, !all(!(!vec4<bool>(var_1.e, var_1.e, false, true))));
    let var_3 = ~(~var_1.b.b.x);
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3) -> i32 {
    let var_0 = vec4<i32>(arg_1 & 1i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_clamp_i32(-2147483647i, arg_1, arg_1), 2147483647i << (arg_2.c.a % 32u), arg_1 >> (_wgslsmith_mod_u32(4294967295u, arg_2.b.x) % 32u)), u_input.b), arg_1);
    var var_1 = select(vec4<i32>(u_input.a, 1i, 19801i, arg_1), vec4<i32>(-93361i, -(~arg_1) | 0i, 2147483647i, -(i32(-1i) * -1i)), any(!vec4<bool>(false, func_3(24045i), select(false, true, false), true)));
    var_1 = var_0;
    let var_2 = select(vec3<bool>(true, !(!any(vec3<bool>(true, true, true))), ~(-10438i) < max(abs(39166i), _wgslsmith_add_i32(2147483647i, u_input.b.x))), !vec3<bool>(true, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), _wgslsmith_div_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, arg_2.b.x), vec3<u32>(arg_2.c.a, 0u, arg_2.c.a)), 85867u), firstLeadingBit(1u)) > arg_2.b.x);
    let var_3 = u_input.b;
    return _wgslsmith_mod_i32(23843i, 611i);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a, arg_1.a, 2175u, arg_1.a), vec4<u32>(4294967295u, arg_1.a, arg_1.a, arg_1.a)), vec4<u32>(arg_1.a, arg_1.a, arg_1.a, 77740u) ^ vec4<u32>(arg_1.a, 1u, 1u, 43658u)), (vec4<u32>(arg_1.a, 3753u, arg_1.a, 4294967295u) ^ vec4<u32>(10687u, 23334u, 0u, arg_1.a)) | vec4<u32>(4294967295u, arg_1.a, 0u, arg_1.a)), ~_wgslsmith_add_vec4_u32(min(vec4<u32>(85013u, arg_1.a, arg_1.a, arg_1.a), vec4<u32>(4294967295u, 6354u, arg_1.a, arg_1.a)), vec4<u32>(arg_1.a, arg_1.a, 4294967295u, 66810u)));
    let var_1 = u_input.a;
    let var_2 = arg_1;
    var var_3 = -(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, -1i, -2147483647i, 21522i), vec4<i32>(u_input.a, -36676i, -3768i, -1202i))) | vec4<i32>((arg_2 ^ u_input.a) & 30930i, _wgslsmith_mult_i32(-2147483647i, arg_0) << ((arg_1.a << (var_0.x % 32u)) % 32u), 0i, func_2(vec3<f32>(-1359f, 183f, -931f), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -2147483647i, 0i, u_input.b.x), vec4<i32>(var_1, 0i, var_1, var_1)), Struct_3(vec4<f32>(1977f, 1577f, 1277f, 299f), vec2<u32>(4294967295u, arg_1.a), var_2))));
    var_3 = _wgslsmith_div_vec4_i32(abs(~countOneBits(select(vec4<i32>(var_3.x, 8046i, var_3.x, -11116i), vec4<i32>(-1i, 319i, arg_2, arg_2), true))), countOneBits(_wgslsmith_add_vec4_i32((vec4<i32>(1i, var_1, u_input.b.x, 0i) << (var_0 % vec4<u32>(32u))) ^ vec4<i32>(-2147483647i, -1i, arg_2, 0i), vec4<i32>(max(arg_0, var_1), u_input.a, u_input.a, var_1))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1693f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(206f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1363f)))))) - _wgslsmith_f_op_f32(step(-1120f, _wgslsmith_f_op_f32(floor(-1441f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = Struct_4(Struct_1(1u), Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, -1022f, -1176f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -1000f, arg_0.x, -1502f), vec4<f32>(258f, 589f, 188f, 122f)))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), Struct_1(abs(_wgslsmith_add_u32(16338u, 15322u)))), -vec2<i32>(~(-51016i), _wgslsmith_sub_i32(arg_1.x, reverseBits(-84640i))), Struct_2(arg_0.yy, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, arg_1.x), -42978i, func_2(arg_0, -28187i, Struct_3(vec4<f32>(arg_0.x, -1127f, arg_0.x, -1118f), vec2<u32>(26236u, 4294967295u), Struct_1(1u)))) > (-31808i & u_input.b.x)), any(vec4<bool>(u_input.a < u_input.a, true || arg_2.x, arg_2.x || arg_2.x, select(arg_2.x, true, false))) & any(arg_2));
    var_0 = Struct_4(Struct_1(_wgslsmith_mult_u32(1u, ~var_0.a.a)), var_0.b, vec2<i32>(var_0.c.x, firstLeadingBit(-62883i)), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.a.ww, vec2<f32>(var_0.b.a.x, -1472f)), vec2<f32>(1747f, -950f)))), var_0.e), arg_2.x);
    var var_1 = countOneBits(-2147483647i);
    var_1 = -(~arg_1.x);
    var var_2 = _wgslsmith_sub_u32(var_0.a.a, _wgslsmith_mod_u32(4294967295u, var_0.a.a));
    return vec2<f32>(-2047f, _wgslsmith_div_f32(-341f, var_0.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1758f, _wgslsmith_f_op_f32(func_1(u_input.b.x, Struct_1(4294967295u), 24874i)), _wgslsmith_f_op_f32(step(2270f, -902f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(661f, 509f, 610f))))), select(u_input.b << (~(~vec3<u32>(61958u, 4294967295u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~(vec3<i32>(u_input.b.x, u_input.a, -2147483647i) & vec3<i32>(15963i, u_input.a, -26589i)), -u_input.b | vec3<i32>(u_input.a, 2147483647i, u_input.b.x)), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, select(true, false, true))))));
    var var_1 = u_input.a;
    var var_2 = vec4<bool>(!any(vec3<bool>(true, true, false)), !all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)) && (1577i > ~u_input.a), true && all(vec3<bool>(true, true, true)), false);
    var var_3 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(~vec3<u32>(0u, 4294967295u, 40039u))), ~(_wgslsmith_sub_u32(1u, 1u) >> (1u % 32u)));
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(73192i, u_input.a), u_input.b.xz, _wgslsmith_mod_vec2_i32(u_input.b.yz, u_input.b.yy)), firstLeadingBit(u_input.b.xy));
    var_3 = 16955u;
    let var_5 = ~(-u_input.b) << (~(~vec3<u32>(_wgslsmith_div_u32(33367u, 4294967295u), ~4294967295u, ~49756u)) % vec3<u32>(32u));
    var var_6 = Struct_2(_wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), (func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1187f)), ~var_5.x, Struct_3(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec2<u32>(0u, 4294967295u), Struct_1(1u))) < -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, var_5.x), vec3<i32>(-1i, 6193i, u_input.b.x))) != var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.a, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1620f, 514f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.a.x, 342f))))))), ~(~select(~vec4<u32>(105202u, 1u, 1u, 4294967295u), ~vec4<u32>(329u, 35922u, 48573u, 0u), vec4<bool>(var_2.x, var_6.b, var_6.b, var_2.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(7704u, 1u, _wgslsmith_mult_u32(0u, 17409u), ~70599u), min(countOneBits(vec4<u32>(0u, 0u, 49748u, 0u)), vec4<u32>(1u, 1u, 1u, 1u))));
}

