struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(920f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.c.x))))));
    let var_2 = arg_0.a.b;
    let var_3 = all(!select(vec4<bool>(true, arg_0.c, true, arg_0.c), vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), true)) | arg_0.c;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x), -670f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2345f, arg_1, arg_0.c)) + 959f)), _wgslsmith_f_op_f32(-arg_1))));
    return _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(max(~vec4<i32>(0i, -1i, arg_0.a.b.b, 27017i), ~vec4<i32>(-84451i, arg_0.a.b.a.x, 12245i, 1i)), vec4<i32>(select(arg_3.b.a.x, 0i, true), arg_3.b.b, firstLeadingBit(2147483647i), -31900i)), 15396i, select(arg_3.b.a.x, -2147483647i, u_input.a > 30122u));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-347f, -777f)) - 1831f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(267f, -826f, false)), _wgslsmith_f_op_f32(f32(-1f) * -568f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1128f, 678f)) + 996f), -1089f));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.x, arg_0.x, -42327i), -vec3<i32>(arg_0.x, 2449i, arg_0.x) & vec3<i32>(-37963i, 1i, -7719i)) | min(2100i, ~(0i >> (u_input.a % 32u))), func_3(Struct_3(Struct_2(vec4<f32>(-2298f, var_0, var_0, var_0), Struct_1(vec3<i32>(arg_0.x, -1i, arg_0.x), arg_0.x, vec3<f32>(var_0, var_0, 348f), 1u, arg_0.x)), ~vec3<u32>(0u, 0u, u_input.a), all(vec3<bool>(arg_1, false, false))), var_0, arg_0, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1091f, var_0, var_0)), Struct_1(vec3<i32>(arg_0.x, 0i, arg_0.x), -38260i, vec3<f32>(var_0, var_0, var_0), 48995u, arg_0.x))) | _wgslsmith_add_i32(-92309i, arg_0.x));
    let var_2 = true;
    let var_3 = Struct_1(~vec3<i32>(-13412i, 2147483647i, ~22259i), 1i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(667f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -917f, 1000f), vec3<f32>(135f, var_0, var_0))))), arg_1)), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a | 1u, u_input.a), 0u), 1u), _wgslsmith_add_i32(var_1, ~_wgslsmith_mult_i32(~var_1, _wgslsmith_sub_i32(1i, -25743i))));
    let var_4 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x - var_0) * _wgslsmith_f_op_f32(-var_0)), var_3.c.x, _wgslsmith_f_op_f32(1000f * 830f)), Struct_1(vec3<i32>(~var_1, var_1, arg_0.x), var_1, var_3.c, select(abs(var_3.d), var_3.d << (4294967295u % 32u), false), var_1)), ~vec3<u32>(_wgslsmith_mult_u32(var_3.d, ~u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, var_3.d, 74856u, var_3.d), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 0u, 45687u), vec4<u32>(0u, var_3.d, 8193u, u_input.a))), ~select(var_3.d, 4294967295u, false)), select(!arg_1, true, var_2));
    return var_4.a;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = arg_3;
    var var_1 = 0i;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(func_2(~vec2<i32>(arg_1.x, -5782i), true).b.c.x, arg_2.b.c.x))), _wgslsmith_f_op_f32(arg_0 + 1546f), arg_3.c.x, arg_2.a.x);
    let var_3 = false;
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-168f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-954f + -376f) - -1668f), -581f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), -1935f, false))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, var_0.c.x, arg_3.c.x)), _wgslsmith_f_op_vec4_f32(exp2(arg_2.a))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-362f, 1f))), _wgslsmith_f_op_f32(max(-539f, -668f))), vec2<i32>(-(~1i), -1i), func_2(vec2<i32>(-3344i, ~(~0i)), !(~u_input.a < 1u)), func_2(-(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 0i)), true).b));
    let var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(true, false))), (u_input.a << (68640u % 32u)) != u_input.a));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(921f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(-1316f, countOneBits(vec2<i32>(-14061i, -2147483647i)), func_2(vec2<i32>(-48500i, 0i), var_1.x), func_2(vec2<i32>(28416i, 0i), var_1.x).b)).x) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_4(var_0.x, vec2<i32>(-30272i, 7008i), Struct_2(vec4<f32>(721f, 922f, var_0.x, var_0.x), Struct_1(vec3<i32>(54008i, -2147483647i, 2147483647i), -69118i, vec3<f32>(-293f, var_0.x, 842f), 10349u, 2147483647i)), Struct_1(vec3<i32>(12779i, 2147483647i, -33698i), -1i, vec3<f32>(var_0.x, var_0.x, var_0.x), 40009u, 38355i))).x, -380f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(834f)), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(908f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(608f, var_0.x))) - var_0.x));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, -581f, 277f), vec4<f32>(1739f, var_0.x, var_0.x, var_0.x), var_1.x)) + vec4<f32>(var_0.x, var_0.x, 864f, 1507f)), vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), -1433f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 734f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-513f * -2749f), 1f, -250f, 591f) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(-661f)), _wgslsmith_f_op_f32(round(var_0.x)), var_0.x))), func_2(vec2<i32>(~68101i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-43552i, 2147483647i), vec2<i32>(10662i, -20012i)), abs(-31900i))), true).b);
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_2.a.x))), _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, -812f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(max(var_2.b.c.x, -1911f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_2.a.x, var_0.x)), _wgslsmith_f_op_f32(var_2.a.x + 739f), select(true, false, false))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b.c.x), _wgslsmith_f_op_f32(-var_2.b.c.x))))), var_2.b);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_0.x, var_3.a.x, var_3.a.x)), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-286f + -835f), _wgslsmith_f_op_f32(trunc(1000f))), 1f)));
    let var_1 = func_1();
    var var_2 = any(select(vec2<bool>(all(vec2<bool>(false, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), var_1.a.x >= -751f), vec2<bool>(any(vec2<bool>(true, false)), true)), !(all(vec3<bool>(false, false, false)) & true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-777f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1689f))))));
}

