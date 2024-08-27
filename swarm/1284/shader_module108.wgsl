struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1090f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)));
    var var_2 = vec3<u32>(39291u, ~arg_0.e.a.a.x, 1u);
    var_2 = countOneBits(select(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_2.x, arg_0.e.a.a.x, 47527u)), firstTrailingBit(vec3<u32>(arg_0.c.a.x, 0u, var_2.x))), vec3<u32>(arg_0.c.a.x, ~(~var_2.x), firstTrailingBit(0u) ^ _wgslsmith_div_u32(arg_0.c.a.x, 37414u)), all(vec3<bool>(true, true, any(vec2<bool>(false, false))))));
    return !(!vec2<bool>(any(vec2<bool>(true, true)) && (660f > var_0.x), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: i32) -> vec3<bool> {
    global0 = arg_0.x;
    return vec3<bool>(any(vec3<bool>(true, any(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), any(vec2<bool>(true, arg_0.x)))), !(arg_1.e.a.a.x >= _wgslsmith_sub_u32(1u, arg_1.c.a.x)) & (arg_1.b.x < -1022f), (!arg_0.x | all(!vec4<bool>(arg_0.x, false, arg_0.x, false))) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.d)) * arg_1.b.x) >= _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(arg_1.d - arg_1.d))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = Struct_3(Struct_1(max(countOneBits(~vec2<u32>(30677u, 0u)), ~vec2<u32>(1u, 4294967295u)), min(38247i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.b, u_input.a), vec4<i32>(u_input.a, u_input.c, 2147483647i, u_input.d.x)))), vec4<bool>(_wgslsmith_f_op_f32(select(arg_0, 930f, any(vec4<bool>(false, false, true, false)))) > _wgslsmith_f_op_f32(arg_0 + -1001f), u_input.e.x < _wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, -46061i, -2147483647i)), -vec3<i32>(u_input.e.x, -1i, -2147483647i)), all(vec3<bool>(true, true, true)), all(func_4(func_3(Struct_4(u_input.c, vec3<f32>(1066f, 440f, -275f), Struct_1(vec2<u32>(10558u, 50310u), u_input.c), 224f, Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), 2147483647i))), vec4<f32>(arg_0, arg_0, -1861f, arg_0)), Struct_4(u_input.b, vec3<f32>(arg_0, arg_0, -1000f), Struct_1(vec2<u32>(18339u, 4294967295u), u_input.d.x), arg_0, Struct_2(Struct_1(vec2<u32>(7460u, 77803u), -20279i))), 1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 + -540f), _wgslsmith_f_op_f32(-arg_0)), vec2<f32>(-2797f, arg_0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-730f, arg_0))))), abs(~(-vec3<i32>(u_input.e.x, u_input.a, -2147483647i))));
    global0 = false;
    global0 = var_0.b.x;
    global0 = var_0.b.x;
    let var_1 = Struct_2(Struct_1(~vec2<u32>(_wgslsmith_sub_u32(90140u, var_0.a.a.x), var_0.a.a.x), max(u_input.a, _wgslsmith_add_i32(u_input.c, ~0i))));
    return ((65953u >> ((_wgslsmith_sub_u32(var_1.a.a.x, var_0.a.a.x) | 9853u) % 32u)) & 4294967295u) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(select(0u, 3517u, true), abs(4294967295u), 9294u, 1u), vec4<u32>(max(48895u & var_1.a.a.x, var_1.a.a.x), 45440u, var_1.a.a.x, var_1.a.a.x)) % 32u);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: u32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-919f))));
    var_0 = arg_1.x;
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(72443i, u_input.e.x, u_input.c, firstTrailingBit(50573i));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1.x))));
    var_0 = _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-1111f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(f32(-1f) * -721f)))), all(!vec3<bool>(true, true, !arg_0.x))));
    return Struct_5(abs(vec3<u32>(~36855u, _wgslsmith_div_u32(~arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 37780u, arg_2, 4294967295u), vec4<u32>(1u, arg_2, 60363u, 0u))), arg_2)), Struct_4(i32(-1i) * -(i32(-1i) * -1i), _wgslsmith_f_op_vec3_f32(-arg_1), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2, arg_2) | vec2<u32>(55261u, 4294967295u), vec2<u32>(17694u, arg_2)), var_1.x), _wgslsmith_f_op_f32(-510f + _wgslsmith_f_op_f32(round(-591f))), Struct_2(Struct_1(~vec2<u32>(arg_2, 4988u), ~1i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 2247f) * _wgslsmith_div_f32(arg_1.x, arg_1.x)))), arg_1.x, Struct_1(countOneBits(select(vec2<u32>(4294967295u, arg_2), vec2<u32>(0u, arg_2), vec2<bool>(false, arg_0.x))) >> ((vec2<u32>(4294967295u, arg_2) | countOneBits(vec2<u32>(arg_2, 4294967295u))) % vec2<u32>(32u)), ~max(u_input.d.x << (arg_2 % 32u), var_1.x)));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_4) -> vec3<u32> {
    var var_0 = -24292i >> (arg_1.e.a.a.x % 32u);
    return arg_0.a;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = ~reverseBits(func_6(func_5(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(943f, -523f, 114f) * vec3<f32>(-1021f, -262f, 2796f)), func_2(-1031f)), func_5(vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-350f, -1038f, 908f), vec3<f32>(-636f, -1462f, -781f), false)), func_2(1086f)).b));
    global0 = -1i >= u_input.d.x;
    var var_1 = u_input.a;
    let var_2 = Struct_5(~vec3<u32>(~_wgslsmith_sub_u32(var_0.x, var_0.x), ~(~1u), arg_0.x), func_5(vec2<bool>(true, true), vec3<f32>(950f, 241f, -523f), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(52192u, var_0.x, 0u), var_0), vec3<u32>(48748u, var_0.x, 0u) & var_0, _wgslsmith_add_vec3_u32(vec3<u32>(59875u, 92473u, arg_0.x), vec3<u32>(arg_0.x, var_0.x, arg_0.x))), firstLeadingBit(vec3<u32>(arg_0.x, 41274u, 4294967295u)) ^ vec3<u32>(var_0.x, arg_0.x, 1u))).b, -1364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)) - 233f)), Struct_1(_wgslsmith_mod_vec2_u32(arg_0, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 43655u), _wgslsmith_add_vec2_u32(arg_0, vec2<u32>(55820u, var_0.x)))), u_input.c));
    var var_3 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, false, select(!(-1945f != _wgslsmith_f_op_f32(round(-496f))), false, false));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-765f))))) != 831f;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(385f - -202f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) + 806f), 230f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(848f)), _wgslsmith_f_op_f32(f32(-1f) * -505f), -755f, _wgslsmith_f_op_f32(func_1(vec2<u32>(22758u, 1u)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1135f, 887f, -457f, -182f))))))));
    let var_2 = Struct_4(firstTrailingBit(~(-9587i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.ywx))), _wgslsmith_f_op_vec3_f32(exp2(var_1.www)))), func_5(select(var_0.zy, !(!vec2<bool>(var_0.x, false)), !var_0.zy), var_1.wyy, 61393u).e, 270f, func_5(vec2<bool>(-21275i < abs(u_input.c), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-959f, 1303f, var_1.x)), firstLeadingBit(func_2(_wgslsmith_f_op_f32(floor(-791f))))).b.e);
    let var_3 = var_2.e.a;
    global0 = !var_0.x;
    let var_4 = abs(-max(_wgslsmith_mult_vec4_i32(vec4<i32>(19173i, u_input.d.x, 0i, var_2.c.b), vec4<i32>(var_2.c.b, 54966i, 4208i, u_input.a)), vec4<i32>(u_input.c, var_2.e.a.b, -1i, -18609i)) | (vec4<i32>(~var_2.e.a.b, ~u_input.c, firstTrailingBit(-2147483647i), 9228i) >> (vec4<u32>(1u, _wgslsmith_mod_u32(var_2.c.a.x, var_3.a.x), ~7558u, var_3.a.x << (4294967295u % 32u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 291f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(var_2.b.xy, var_1.xy)))))), _wgslsmith_clamp_u32(26988u, var_3.a.x, ~1u), 0u);
}

