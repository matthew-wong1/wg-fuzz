struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> f32 {
    var var_0 = u_input.a;
    let var_1 = vec2<u32>(~countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 34852u, 35550u), vec4<u32>(4294967295u, 4291u, 1u, 98810u))), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(50839u, 0u, 48132u, 19433u), ~vec4<u32>(0u, 0u, 1u, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 13837u, 2403u, 11223u), vec4<u32>(1u, 4294967295u, 22867u, 1u)))));
    var_0 = max(u_input.a, u_input.a);
    var_0 = reverseBits(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(u_input.a, select(u_input.a, vec2<i32>(-23721i, -1i), true)));
    let var_2 = u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1283f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-729f, -347f)))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_5(10388i, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(697f, arg_1)), u_input.a, true));
    var_0 = Struct_5(_wgslsmith_dot_vec4_i32(-(~(-vec4<i32>(0i, u_input.a.x, 13586i, 1i))), ~firstTrailingBit(min(vec4<i32>(var_0.a, u_input.a.x, var_0.a, 49558i), vec4<i32>(14377i, 19860i, 2147483647i, u_input.a.x)))), var_0.b);
    var var_1 = Struct_5(-28368i, var_0.b);
    let var_2 = var_0.b.b;
    var_0 = Struct_5(_wgslsmith_div_i32(var_0.b.b.x, -(~(-58677i | var_1.b.b.x))), var_1.b);
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.b.a, -946f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.b.a)), _wgslsmith_f_op_f32(-var_1.b.a))))), arg_1, _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_vec4_f32(-arg_0.a));
}

fn func_2(arg_0: bool, arg_1: u32) -> bool {
    var var_0 = Struct_2(Struct_1(vec2<bool>(arg_0, false), false, max(countOneBits(arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, arg_1), vec3<u32>(10999u, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(517f, -358f, 1009f, -1139f))) * _wgslsmith_div_vec4_f32(vec4<f32>(277f, -2573f, 1618f, -158f), vec4<f32>(219f, -1000f, -1035f, -1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(-223f, -829f, -966f, 263f), _wgslsmith_f_op_vec4_f32(vec4<f32>(305f, 306f, 703f, 885f) - vec4<f32>(549f, 169f, 163f, 252f))), vec4<bool>(arg_0 | arg_0, arg_1 >= 47578u, true, !arg_0)))), u_input.a.x, u_input.a.x, Struct_1(select(vec2<bool>(false, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), select(vec2<bool>(arg_0, true), vec2<bool>(false, true), true)), true), any(vec4<bool>(!arg_0, true || arg_0, any(vec4<bool>(arg_0, arg_0, true, true)), any(vec2<bool>(true, arg_0)))), ~1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec4<f32>(373f, -353f, -1361f, 713f), 944f, vec3<u32>(0u, arg_1, arg_1), vec2<u32>(arg_1, 8358u)), _wgslsmith_f_op_f32(1212f * 1000f), !vec4<bool>(true, true, arg_0, true), firstLeadingBit(vec3<u32>(arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), vec3<i32>(u_input.a.x, -1i, countOneBits(-2147483647i)));
    var var_1 = select(~max(vec4<u32>(var_0.d.c, var_0.d.c, var_0.a.c, var_0.a.c) & vec4<u32>(arg_1, arg_1, 4294967295u, arg_1), select(vec4<u32>(var_0.a.c, 34135u, 57052u, arg_1), vec4<u32>(14093u, 3062u, arg_1, var_0.a.c), vec4<bool>(var_0.d.a.x, arg_0, false, true))) & ~(~(~vec4<u32>(var_0.d.c, 28285u, arg_1, 59161u))), ~firstTrailingBit(vec4<u32>(39016u, 12014u, 4294967295u, arg_1)), select(select(select(!vec4<bool>(var_0.a.a.x, var_0.d.b, false, arg_0), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(false, arg_0, var_0.d.b, true)), select(select(vec4<bool>(var_0.a.a.x, arg_0, var_0.d.a.x, arg_0), vec4<bool>(var_0.d.a.x, arg_0, true, var_0.d.b), arg_0), !vec4<bool>(true, arg_0, false, false), var_0.d.a.x), vec4<bool>(var_0.a.d.x > -908f, false, arg_1 != 48280u, true)), vec4<bool>(!arg_0, any(select(vec3<bool>(var_0.d.b, false, arg_0), vec3<bool>(false, var_0.d.a.x, false), vec3<bool>(true, true, true))), !(arg_0 | true), !select(true, arg_0, false)), var_0.d.a.x));
    var_0 = Struct_2(Struct_1(!vec2<bool>(any(vec2<bool>(true, false)), true), true, var_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-765f, -1645f, -415f, -1017f), vec4<f32>(-1179f, 632f, -724f, var_0.a.d.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(742f, var_0.d.d.x, var_0.d.d.x, -486f), var_0.d.d)))), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(var_0.b, var_0.b, 6373i, -1i)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.b), vec4<i32>(-6215i, var_0.b, var_0.b, var_0.e.x) >> (vec4<u32>(38081u, 1u, 20460u, var_1.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(var_0.c, 13008i, -12273i, var_0.c), vec4<i32>(var_0.b, u_input.a.x, -2426i, u_input.a.x), vec4<bool>(true, true, false, arg_0)), abs(vec4<i32>(-5135i, u_input.a.x, 2147483647i, u_input.a.x))))), -var_0.c, Struct_1(!(!(!vec2<bool>(arg_0, arg_0))), arg_0, arg_1, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1282f + 227f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(select(-841f, 644f, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.x) * 721f), -1336f)), _wgslsmith_div_vec3_i32(var_0.e, vec3<i32>(~(-2147483647i), abs(_wgslsmith_mod_i32(var_0.c, -1i)), _wgslsmith_mult_i32(-31928i, -1i))));
    var_1 = abs(select(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(var_1.zw, vec2<u32>(arg_1, var_0.a.c))), var_0.d.c, 1u, 119312u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.c, 39866u, var_1.x), abs(var_1.xyy)), 81673u, 11103u, 28140u), vec4<bool>(true, all(select(var_0.a.a, vec2<bool>(var_0.d.a.x, arg_0), var_0.d.a)), false, !(!var_0.d.a.x))));
    let var_2 = true;
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.c, 1i), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 40290i, -1i) << (vec4<u32>(var_0.d.c, 4294967295u, 4294967295u, 108323u) % vec4<u32>(32u)), vec4<i32>(2147483647i, u_input.a.x, -2147483647i, 1i)))) < firstLeadingBit(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -239f);
    let var_1 = !vec4<bool>(true | (_wgslsmith_f_op_f32(func_1()) > -142f), !func_2(true, ~33873u), true, true);
    var var_2 = (true & !(!var_1.x)) != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1719f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -640f));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-838f, _wgslsmith_f_op_f32(ceil(-437f)))))))));
    var_3 = _wgslsmith_div_f32(380f, -691f);
    var_2 = var_1.x;
    let var_4 = abs(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & (u_input.a ^ vec2<i32>(~u_input.a.x, 65543i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(760f, 180f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1303f, var_0))))))));
}

