struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_mult_u32(~u_input.a.x, ~_wgslsmith_mult_u32(u_input.a.x, ~(~u_input.a.x)));
    global0 = false;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_1.b.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_0.b.x), vec2<i32>(var_1.b.x, arg_0.b.x))), vec2<i32>(1i, 51599i)), select(firstTrailingBit(-_wgslsmith_add_vec2_i32(var_1.b, var_1.a)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(var_1.a.x, arg_0.b.x), vec2<i32>(arg_0.a.x, arg_0.b.x), vec2<bool>(true, true)) << (~u_input.a % vec2<u32>(32u)), -(~vec2<i32>(56931i, 0i))), true));
    let var_3 = 1i | arg_0.a.x;
    return abs(abs(var_2));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_clamp_u32(u_input.a.x, 12046u, u_input.a.x), Struct_2(Struct_1(vec2<i32>(2147483647i, arg_0), func_3(Struct_1(vec2<i32>(0i, -10378i), vec2<i32>(arg_0, arg_0)))), Struct_1(select(vec2<i32>(arg_0, 2147483647i), vec2<i32>(-31841i, arg_0), any(vec2<bool>(arg_2.x, arg_2.x))), vec2<i32>(~arg_0, 2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2171f), _wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(511f + 539f), _wgslsmith_f_op_f32(475f + -1839f))), Struct_1(reverseBits(vec2<i32>(1i, 28446i)), min(-vec2<i32>(1i, 2147483647i), vec2<i32>(22497i, arg_0)))), vec3<u32>(_wgslsmith_div_u32(u_input.a.x >> (0u % 32u), _wgslsmith_mult_u32(4294967295u, u_input.a.x)), _wgslsmith_clamp_u32(29929u << (u_input.a.x % 32u), u_input.a.x, ~37704u), _wgslsmith_dot_vec2_u32(abs(u_input.a), ~vec2<u32>(4730u, u_input.a.x))) << (~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 3830u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))) % vec3<u32>(32u)), Struct_1(~vec2<i32>(arg_0, arg_0), vec2<i32>(abs(-2147483647i), i32(-1i) * -26187i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.c.x)));
    let var_2 = var_0.b.d;
    let var_3 = _wgslsmith_mult_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0 & 6017i, abs(-10031i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 10938i, -12796i, 39123i), vec4<i32>(var_0.b.b.b.x, 15308i, 2147483647i, 25016i))), abs(~vec3<i32>(-1i, 32653i, -2147483647i)))), vec3<i32>(-43291i, ~min(~1i, func_3(Struct_1(vec2<i32>(1i, var_0.d.b.x), var_0.b.a.a)).x), -1i));
    var var_4 = var_0.b;
    return var_0.b.b;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0.b.x;
    global0 = !all(vec4<bool>(true, true, true, true)) && any(vec4<bool>(false, true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))), any(vec2<bool>(true, true))));
    let var_1 = Struct_2(arg_0, arg_0, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(447f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1944f, 1000f))), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1395f, 220f)), _wgslsmith_f_op_f32(1467f + -1272f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1462f, -1000f, 1162f, 517f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1226f, 842f, 457f, 921f)))), !all(vec4<bool>(true, true, true, true)))), arg_0);
    let var_2 = 27566i;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c.x)));
    return select(!select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true)), true || select(true, false, true)), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), true);
}

fn func_1() -> Struct_2 {
    var var_0 = !func_4(func_2(~_wgslsmith_mult_i32(0i, 1i), 1006f, vec2<bool>(true, all(vec2<bool>(true, true)))));
    var var_1 = reverseBits(func_2(-_wgslsmith_div_i32(-22953i, -1493i), 173f, select(var_0.xz, !vec2<bool>(var_0.x, var_0.x), var_0.x)).a | vec2<i32>(1i, 1i));
    var_1 = ~vec2<i32>(-21065i, 26178i) | ~firstTrailingBit(_wgslsmith_mult_vec2_i32(select(vec2<i32>(var_1.x, 1i), vec2<i32>(2147483647i, var_1.x), false), vec2<i32>(var_1.x, var_1.x) | vec2<i32>(var_1.x, var_1.x)));
    global0 = !select(false, false, any(var_0.xwy));
    global0 = !(!select(var_0.x, var_0.x, var_0.x));
    return Struct_2(func_2(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-491f, -111f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(625f * -1497f))), !select(select(var_0.yz, vec2<bool>(true, var_0.x), var_0.xz), vec2<bool>(true, true), !var_0.x)), Struct_1(_wgslsmith_div_vec2_i32(min(vec2<i32>(var_1.x, 2147483647i), ~vec2<i32>(7910i, 26134i)), ~vec2<i32>(17979i, -380i)), -(abs(vec2<i32>(0i, 1i)) & func_2(var_1.x, -118f, vec2<bool>(true, var_0.x)).a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(517f, 654f, _wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(trunc(-1366f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1199f, 185f, 784f, -118f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1176f, 844f, 477f, 1000f) - vec4<f32>(133f, -985f, 575f, 712f))))), var_0.x | (-1i >= func_2(-1i, -1000f, vec2<bool>(false, var_0.x)).b.x))), func_2(func_3(func_2(_wgslsmith_sub_i32(var_1.x, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -991f), !var_0.zw)).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1799f * -846f), _wgslsmith_f_op_f32(-398f - -414f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1597f, -581f), _wgslsmith_f_op_f32(-827f * 1014f)))), !var_0.xw));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<f32> {
    global0 = any(vec3<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true))), select(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true)), true, true), arg_0.d.a.x <= 18011i));
    let var_0 = _wgslsmith_div_f32(arg_3.b.c.x, arg_3.b.c.x);
    global0 = all(!select(vec4<bool>(true, all(vec2<bool>(true, false)), func_4(arg_3.d).x, false), vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true), vec4<bool>(true, true, true, true)));
    global0 = false;
    global0 = all(select(vec3<bool>(true, false, false), vec3<bool>(_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x) == -1512f, false, _wgslsmith_sub_u32(51765u, arg_3.c.x) != max(0u, 23397u)), vec3<bool>(true, select(all(vec3<bool>(false, false, false)), true, true), u_input.a.x > 0u)));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c.yzw * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-386f, arg_3.b.c.x, -826f)), _wgslsmith_f_op_vec3_f32(-arg_0.c.yxy), false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(283f, _wgslsmith_f_op_f32(1f * 1f), -920f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_5(func_1(), vec4<i32>(17416i, 2147483647i, -4992i, -2147483647i), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_3(u_input.a.x, Struct_2(Struct_1(vec2<i32>(63352i, -45554i), vec2<i32>(-71874i, 28347i)), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-7310i, 1i)), vec4<f32>(1134f, -1233f, 937f, -631f), Struct_1(vec2<i32>(9085i, 45423i), vec2<i32>(25706i, -1i))), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(vec2<i32>(1i, 36475i), vec2<i32>(21540i, -10045i))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1178f), -1776f, -178f))) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(130f + -1540f), _wgslsmith_f_op_f32(round(1277f)))), 894f, _wgslsmith_f_op_f32(623f - _wgslsmith_div_f32(898f, -469f)))));
    let var_1 = u_input.a.x;
    global0 = any(select(vec2<bool>(true, true), vec2<bool>(!all(vec3<bool>(true, false, false)), true), true));
    global0 = false;
    global0 = any(vec3<bool>(true, !(!any(vec4<bool>(false, true, false, false))), true));
    var var_2 = var_0.xy;
    var var_3 = countOneBits(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-240f, 372f, var_2.x, 1070f), vec4<f32>(var_2.x, -1532f, -500f, var_0.x)))))), ~vec4<u32>(u_input.a.x, _wgslsmith_div_u32(abs(var_1), ~0u), abs(0u) ^ _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), var_1), ~(-_wgslsmith_div_i32(1i, -1907i) >> ((var_1 ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1, 1u, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, 15996u, 1u))) % 32u)));
}

