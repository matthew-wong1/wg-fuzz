struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(-103f, _wgslsmith_f_op_f32(f32(-1f) * -1198f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c.e.x), -471f, all(arg_3.xy))) - global1.x), _wgslsmith_div_f32(-412f, _wgslsmith_f_op_f32(f32(-1f) * -1413f)), arg_0.c.e.x);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(-960f, _wgslsmith_f_op_f32(var_0.x - -261f)), arg_2.xx);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1024f, _wgslsmith_f_op_f32(f32(-1f) * -643f), true))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, arg_2.x))) - -2056f));
    var_1 = arg_1;
    return arg_0.b;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = vec2<bool>(arg_0.x, !(!((arg_0.x & arg_0.x) || any(vec2<bool>(arg_0.x, arg_0.x)))));
    let var_1 = vec4<bool>(!arg_0.x, countOneBits(func_3(Struct_3(44300u, 4294967295u, Struct_1(322f, 1559u, true, 1i, vec2<f32>(916f, global1.x)), vec3<u32>(17566u, 28638u, 1u), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -45i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 1752f)), select(vec4<bool>(true, arg_0.x, var_0.x, arg_0.x), vec4<bool>(var_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, var_0.x, var_0.x, false)))) <= ~1u, true, all(!(!vec3<bool>(false, arg_0.x, true))));
    var var_2 = global1.yx;
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.xz))), vec2<f32>(_wgslsmith_f_op_f32(141f + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1513f, global1.x))))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_3))), vec2<f32>(var_3.x, var_2.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, global1.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_3.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(313f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(531f + 505f)))) - var_3));
    return Struct_1(var_2.x, ~max(42692u, 1u ^ firstTrailingBit(4294967295u)), false, firstLeadingBit(0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 230f) + _wgslsmith_f_op_vec2_f32(-global1.xx))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-747f + -318f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2781f))))))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~arg_2.b, arg_2.d.x), ~vec3<u32>(arg_0.c.b, arg_2.a, 1u) << (arg_2.d % vec3<u32>(32u))), true, abs(-21762i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.e))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = vec2<u32>(firstTrailingBit(~(~1u) | _wgslsmith_mod_u32(73172u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 11956u, 2314u), vec4<u32>(4294967295u, 43977u, 4294967295u, 0u)))), ~(select(~102333u, 59285u, arg_0) << (_wgslsmith_add_u32(1u, ~14931u) % 32u)));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, -544f, global1.x), vec3<f32>(-420f, 1705f, -623f))), _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, 982f), vec3<f32>(-1000f, global1.x, global1.x))), !vec3<bool>(arg_0, arg_0, false))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - 314f), _wgslsmith_f_op_f32(-global1.x)), -406f, 431f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, global1.x, 607f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(global1.x, 958f, global1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1368f, 1171f, 1647f) - vec3<f32>(global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, -582f, -1383f))))))));
    let var_1 = Struct_2(vec4<bool>((reverseBits(u_input.a) > _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 14339i), vec2<i32>(28580i, 6439i))) && arg_0, true, ((var_0.x | var_0.x) << (var_0.x % 32u)) == _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(11435u, var_0.x, 315u, 0u)), vec4<u32>(var_0.x, 18972u, var_0.x, 1u)), true), 1i, func_4(Struct_2(!select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0), -u_input.a >> (firstTrailingBit(18062u) % 32u), func_2(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), arg_0)), func_2(vec2<bool>(true, true)), arg_0), countOneBits(vec2<i32>(-u_input.a, u_input.a)), Struct_3(var_0.x, var_0.x, func_2(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), true)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(2248u, 4294967295u, var_0.x), vec3<u32>(1u, 38797u, var_0.x)), abs(vec3<u32>(var_0.x, 1u, 1u)), max(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(4294967295u, var_0.x, 10733u))), select(vec2<i32>(u_input.a, 92148i), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(71296i, 0i), arg_0))), Struct_1(global1.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 70577u, 1u), vec3<u32>(var_0.x, 28573u, var_0.x))), arg_0, u_input.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.zz)))), true || arg_0);
    global1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(-func_4(var_1, vec2<i32>(var_1.b, -2147483647i), Struct_3(19463u, var_1.c.b, Struct_1(global1.x, var_0.x, true, var_1.d.d, vec2<f32>(-623f, var_1.c.e.x)), vec3<u32>(1u, 4294967295u, var_1.d.b), vec2<i32>(-1i, 55776i))).e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-1203f + global1.x)))))));
    global0 = global1.x;
    return func_4(var_1, abs(-(~vec2<i32>(13990i, 1i))), Struct_3(~firstLeadingBit(var_1.c.b | var_0.x), _wgslsmith_clamp_u32(~3035u, func_2(var_1.a.zy).b, max(var_1.d.b, var_0.x)) ^ 0u, Struct_1(func_2(vec2<bool>(false, false)).a, func_3(Struct_3(0u, var_0.x, Struct_1(223f, 1u, var_1.d.c, u_input.a, var_1.c.e), vec3<u32>(52986u, var_0.x, var_1.d.b), vec2<i32>(-42043i, var_1.b)), -vec2<i32>(var_1.c.d, u_input.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.e.x, -202f, global1.x), vec3<f32>(568f, global1.x, 1298f), arg_0)), vec4<bool>(var_1.e, true, false, true)), true, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, 32626i), 0i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(global1.xz))))), vec3<u32>(var_1.d.b, func_2(vec2<bool>(true, arg_0)).b, _wgslsmith_add_u32(var_1.c.b, var_1.d.b) ^ _wgslsmith_div_u32(var_0.x, var_1.c.b)), -(vec2<i32>(u_input.a, 0i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(func_2(vec2<bool>(false, arg_2.c.c)).e.x)), arg_2.c.a, true));
    let var_0 = -1i;
    var var_1 = arg_1;
    global0 = -1923f;
    let var_2 = Struct_2(!(!vec4<bool>(var_1.c, func_4(Struct_2(vec4<bool>(false, true, true, arg_2.c.c), -1i, Struct_1(1993f, arg_1.b, arg_2.c.c, -30597i, arg_2.c.e), Struct_1(var_1.a, 4294967295u, arg_1.c, u_input.a, vec2<f32>(global1.x, arg_2.c.a)), false), arg_2.e, Struct_3(var_1.b, var_1.b, Struct_1(-414f, 57680u, arg_1.c, -2147483647i, vec2<f32>(global1.x, 826f)), vec3<u32>(var_1.b, arg_1.b, arg_2.c.b), arg_2.e)).c, true, arg_2.c.c)), min(func_2(select(vec2<bool>(true, true), vec2<bool>(arg_2.c.c, false), true)).d << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1.b, 7444u), arg_0.x) % 32u), ~var_0), Struct_1(arg_1.a, ~21043u, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 2147483647i, var_0, -983i), ~vec4<i32>(-23412i, -27774i, -65436i, -2147483647i)) != 1i, 9794i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c.e))), arg_1, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-361f)))) - _wgslsmith_div_f32(344f, 410f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(~vec3<u32>(1u, ~33741u, reverseBits(79891u)), func_1(true), Struct_3(func_4(Struct_2(vec4<bool>(false, false, true, false), u_input.a, Struct_1(var_0, 1u, true, -2147483647i, vec2<f32>(1362f, global1.x)), Struct_1(-1877f, 4294967295u, true, u_input.a, global1.xz), false), -vec2<i32>(2147483647i, 0i), Struct_3(7436u, 0u, Struct_1(932f, 15394u, true, 12786i, vec2<f32>(global1.x, global1.x)), vec3<u32>(4294967295u, 4294967295u, 1u), vec2<i32>(u_input.a, 1i))).b, ~(~37752u), func_1(all(vec4<bool>(false, false, false, true))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), firstLeadingBit(vec2<i32>(2034i, u_input.a) ^ vec2<i32>(u_input.a, 0i))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-973f, _wgslsmith_f_op_f32(exp2(var_0)))) - 1873f), global1.x)));
    let var_1 = firstTrailingBit(min(countOneBits(u_input.a), u_input.a));
    var var_2 = global1.x;
    var_2 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(f32(-1f) * -576f));
    let x = u_input.a;
    s_output = StorageBuffer(146408u, vec3<u32>(0u, 0u, select(1u, abs(4294967295u), true)));
}

