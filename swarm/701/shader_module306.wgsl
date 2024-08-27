struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, arg_0.b), true), vec4<bool>(select((arg_0.c <= arg_0.c) || select(false, false, true), true, all(arg_0.a)), true != all(arg_0.a), true, 1u != abs(arg_1.x)), vec3<bool>(false, _wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)) <= arg_1.x, any(arg_0.a.wzx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1124f) + -111f), abs(~vec4<i32>(-arg_2.x, -16031i, u_input.a.x, 0i)));
    let var_1 = false;
    var_0 = Struct_3(!arg_0.a.xz, arg_0.a, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1825f)) * _wgslsmith_f_op_f32(floor(-176f))), ~select(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_2.x, 16588i, -1i, u_input.c.x), reverseBits(vec4<i32>(1i, arg_2.x, 0i, arg_2.x))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-23913i, 2147483647i, -14285i, var_0.e.x)), u_input.c >> (vec4<u32>(arg_1.x, 47415u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), reverseBits(arg_2)), false));
    let var_2 = _wgslsmith_mult_vec4_u32(~min(vec4<u32>(4294967295u, firstLeadingBit(u_input.b.x), u_input.b.x, u_input.b.x), vec4<u32>(45067u, 100712u, arg_1.x, u_input.b.x) | firstTrailingBit(vec4<u32>(0u, 4294967295u, 21635u, u_input.b.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, ~(~u_input.b)), _wgslsmith_clamp_u32(arg_1.x, 1u, reverseBits(44464u)), u_input.b.x, firstLeadingBit(u_input.b.x | firstTrailingBit(arg_1.x))));
    var_0 = Struct_3(vec2<bool>(all(!(!arg_0.a.wzy)), true), !(!select(select(arg_0.a, vec4<bool>(true, var_0.c.x, var_1, true), vec4<bool>(false, false, false, true)), var_0.b, !var_0.a.x)), vec3<bool>(!(!(var_2.x == 1u)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(var_0.e.x, arg_2.x, 2147483647i, -(35583i | arg_2.x))));
    return arg_0.a.xxy;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = Struct_2(!(!arg_2.b), !any(arg_2.b.xzy) == all(select(select(vec3<bool>(true, false, true), arg_2.c, false), vec3<bool>(arg_0.b, arg_0.b, arg_2.a.x), false)), arg_2.d);
    var var_1 = arg_0;
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.d.zw)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(327f, var_1.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a * var_1.d.yy)))), !arg_0.b == ((arg_0.c != arg_0.c) | true), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.e.x, -11722i, _wgslsmith_add_i32(u_input.c.x, u_input.a.x), i32(-1i) * -17990i), vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, 1i, -1i, 0i), u_input.a), 37739i, abs(u_input.c.x))) | _wgslsmith_dot_vec2_i32(u_input.a.wy, -vec2<i32>(arg_2.e.x, -9447i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.d)) + arg_0.d));
    var_2 = arg_0;
    var var_3 = u_input.b.zx;
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.d, 203f))))));
    let var_1 = !arg_0.b;
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.d, arg_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - _wgslsmith_div_f32(853f, arg_0.d)), var_1.x))) - _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))));
    let var_4 = -_wgslsmith_clamp_vec4_i32(arg_0.e, arg_0.e, arg_0.e);
    return _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_1.x, 31509u, abs(arg_1.x))) & ~_wgslsmith_mod_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.x), vec2<u32>(u_input.b.x, 0u)), ~arg_1.x), firstLeadingBit(4294967295u));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, 1765f, -1000f)))), func_5(Struct_3(select(arg_0, select(vec2<bool>(false, arg_0.x), vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, false)), arg_0), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), !(!vec3<bool>(false, arg_0.x, true)), 222f, -(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.c.x))), func_4(Struct_4(vec2<f32>(-1135f, 803f), true, u_input.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(686f, 1000f, 473f, -1783f) * vec4<f32>(-1294f, -138f, -1211f, -1000f))), ~vec2<u32>(0u, u_input.b.x), Struct_3(select(arg_0, arg_0, arg_0), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), func_3(Struct_2(vec4<bool>(false, true, true, arg_0.x), arg_0.x, -700f), vec2<u32>(1u, 6210u), vec4<i32>(u_input.c.x, 19781i, -2147483647i, 0i)), _wgslsmith_div_f32(-1023f, 1007f), u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(353f - -539f) * _wgslsmith_f_op_f32(834f - 260f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d, 1711f, var_0.b.x, 853f), vec4<f32>(1000f, 453f, var_0.d, var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 154f, var_0.d, var_0.b.x) * vec4<f32>(-523f, var_0.b.x, var_0.b.x, var_0.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1252f, var_0.b.x, -115f, var_0.b.x))) * vec4<f32>(-1671f, var_0.b.x, var_0.d, -2214f)), select(vec4<bool>(false, true, true, var_0.a), !vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(false, true, var_0.a, true))))) * vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-377f, _wgslsmith_f_op_f32(f32(-1f) * -240f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1135f + _wgslsmith_f_op_f32(-363f + var_0.b.x)) - _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(var_0.b.x * -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-871f))), 527f))));
    let var_2 = false;
    let var_3 = 27178i;
    let var_4 = any(vec4<bool>(var_0.a, all(vec4<bool>(any(arg_0), !var_2, any(arg_0), true)), var_0.a, any(vec3<bool>(u_input.a.x <= u_input.a.x, var_2, !arg_0.x))));
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(vec2<bool>(false, false), select(!(!select(vec4<bool>(true, false, arg_0.a, arg_0.a), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), select(!(!vec4<bool>(true, false, arg_0.a, false)), !(!vec4<bool>(true, arg_0.a, true, true)), vec4<bool>(!arg_0.a, arg_0.a, true, arg_0.a)), !select(vec4<bool>(false, false, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), true)), func_3(Struct_2(vec4<bool>(all(vec3<bool>(true, true, arg_0.a)), arg_0.a && false, arg_0.a & arg_0.a, arg_0.a || true), u_input.a.x < -u_input.a.x, arg_0.d), vec2<u32>(6071u, max(1u, 9033u) | _wgslsmith_mult_u32(4294967295u, arg_0.c)), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-917f, _wgslsmith_f_op_f32(-750f * arg_0.d)))), u_input.a);
    var var_1 = Struct_2(select(vec4<bool>(_wgslsmith_f_op_f32(-493f - arg_0.d) != var_0.d, arg_0.a, true, var_0.a.x), !var_0.b, var_0.b), var_0.a.x, _wgslsmith_f_op_f32(-var_0.d));
    let var_2 = vec3<bool>(true, !var_1.a.x, false);
    let var_3 = arg_0.a;
    var var_4 = var_0.e.x;
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = func_6(func_2(!(!vec2<bool>(arg_1.a, true))), u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(arg_1.c), arg_1.c, 15160u >> (0u % 32u)), ~(~0u), 8612u, ~(u_input.b.x >> (0u % 32u))), abs(vec4<u32>(arg_0.c >> (1u % 32u), ~arg_0.c, ~arg_1.c, u_input.b.x))));
    let var_1 = vec3<i32>(reverseBits(25909i), u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a.xww, vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x)), u_input.a.x) >> (~32097u % 32u), ~(-58085i & ~u_input.c.x)));
    var_0 = func_6(arg_0, abs(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -51197i, var_1.x, -2147483647i), u_input.c))), abs(vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, func_4(Struct_4(vec2<f32>(-728f, -131f), true, -5323i, vec4<f32>(var_0.d, var_0.b.x, arg_0.b.x, 109f)), vec2<u32>(5789u, 6031u), Struct_3(vec2<bool>(var_0.a, true), vec4<bool>(false, arg_1.a, arg_1.a, false), vec3<bool>(var_0.a, arg_0.a, arg_1.a), -1000f, u_input.a)).x, abs(var_0.c)), 1u, 1u, 0u)));
    var_0 = arg_1;
    var_0 = func_6(arg_1, max(firstLeadingBit(select(u_input.a, firstLeadingBit(vec4<i32>(var_1.x, 1i, 24918i, 19928i)), arg_1.a || true)), u_input.a), min(vec4<u32>(96392u, _wgslsmith_mult_u32(~0u, 1u), 55872u, _wgslsmith_div_u32(var_0.c, ~40527u)), vec4<u32>(~27852u, var_0.c, u_input.b.x, _wgslsmith_add_u32(arg_0.c, 84781u) & _wgslsmith_mult_u32(19654u, arg_1.c))));
    return select(vec4<bool>(!arg_1.a, all(select(!vec3<bool>(false, false, arg_1.a), !vec3<bool>(false, arg_0.a, arg_1.a), 129573u < u_input.b.x)), true, arg_0.a || true), vec4<bool>(select(any(!vec4<bool>(false, true, false, arg_1.a)), true, _wgslsmith_f_op_f32(-1263f * -985f) < var_0.b.x), true, arg_1.a, any(!vec2<bool>(var_0.a, false))), arg_0.a);
}

fn func_7(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    let var_0 = vec2<bool>(all(arg_2), true);
    var var_1 = ~func_5(Struct_3(!var_0, !arg_2, !vec3<bool>(arg_3, arg_2.x, arg_3), _wgslsmith_f_op_f32(f32(-1f) * -110f), firstLeadingBit(vec4<i32>(-1i, 1i, 0i, -1i))), u_input.b.yy & _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 36075u), u_input.b.zz)) ^ abs(~(0u ^ _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.b.x)));
    let var_2 = Struct_2(vec4<bool>(true, all(arg_0), func_6(Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1692f, -942f, 1000f)), arg_1 >> (u_input.b.x % 32u), _wgslsmith_f_op_f32(step(1046f, 550f))), vec4<i32>(u_input.a.x, u_input.c.x, -105164i, 7871i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, 1u, 419u, arg_1), vec4<u32>(u_input.b.x, u_input.b.x, arg_1, arg_1)) % vec4<u32>(32u)), ~vec4<u32>(0u, 88034u, 0u, u_input.b.x)).a, var_0.x), (u_input.c.x >> (u_input.b.x % 32u)) >= _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, u_input.a.x)), _wgslsmith_add_vec2_i32(-u_input.a.xz, u_input.a.zw)), -1489f);
    var var_3 = false;
    var_3 = true;
    return func_6(func_2(!arg_2.wz), _wgslsmith_div_vec4_i32(~reverseBits(u_input.a), u_input.c), ~vec4<u32>(abs(0u), ~(~u_input.b.x), ~(51760u >> (arg_1 % 32u)), ~1u)).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~reverseBits(max(abs(u_input.b.x), _wgslsmith_div_u32(45611u, u_input.b.x))), ~0u);
    var var_1 = Struct_1(select(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(602f)), -351f)), 111f, _wgslsmith_f_op_f32(func_7(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), var_0.x, func_1(Struct_1(true, vec3<f32>(1000f, 1385f, -651f), 0u, 123f), Struct_1(true, vec3<f32>(1025f, 1307f, -1760f), 22435u, -369f)), true)))), var_0.x, _wgslsmith_f_op_f32(func_7(vec3<bool>(false, any(vec2<bool>(true, true)), false), ~(~1u), func_1(func_6(func_6(Struct_1(false, vec3<f32>(-272f, -362f, -1097f), u_input.b.x, 565f), vec4<i32>(52116i, u_input.a.x, u_input.c.x, -30636i), vec4<u32>(var_0.x, 1u, 9826u, 34069u)), select(u_input.a, vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, -2147483647i), true), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1658u), vec4<u32>(var_0.x, 3350u, 0u, u_input.b.x))), Struct_1(true, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(465f, 677f, -1722f))), ~u_input.b.x, _wgslsmith_div_f32(-771f, 883f))), true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.zx));
    var var_3 = 2147483647i;
    var var_4 = Struct_2(vec4<bool>(!var_1.a, false, func_2(!(!vec2<bool>(var_1.a, var_1.a))).a, var_1.a), true == (-1i >= u_input.a.x), 109f);
    var var_5 = ~(~(~_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_add_u32(1u, 26970u))));
    var_4 = Struct_2(select(vec4<bool>(true, var_4.a.x, var_1.a, any(!vec4<bool>(var_1.a, false, true, var_1.a))), var_4.a, var_1.a), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))));
    var_4 = Struct_2(select(vec4<bool>(!(true & var_1.a), var_4.a.x, true, var_4.b), !vec4<bool>(var_4.a.x, !var_1.a, var_4.a.x, func_6(Struct_1(var_4.a.x, var_1.b, 36839u, -132f), vec4<i32>(u_input.a.x, 30917i, 83066i, -2147483647i), vec4<u32>(2119u, var_1.c, var_0.x, 55379u)).a), (i32(-1i) * -u_input.c.x) < u_input.c.x), var_1.a || false, 167f);
    var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a.x, -(~2147483647i), 103883i, u_input.a.x), -u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(12720i), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.c, var_0.x, 4294967295u, 1u) >> (vec4<u32>(56561u, 56243u, var_1.c, var_1.c) % vec4<u32>(32u)), countOneBits(vec4<u32>(var_0.x, 4294967295u, 72354u, 4294967295u) << (vec4<u32>(var_0.x, var_1.c, u_input.b.x, var_1.c) % vec4<u32>(32u)))), max(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 0u, u_input.b.x, var_0.x), abs(vec4<u32>(u_input.b.x, u_input.b.x, var_1.c, 84982u))), min(vec4<u32>(u_input.b.x, u_input.b.x, 7476u, var_1.c) ^ vec4<u32>(var_0.x, var_0.x, 0u, var_1.c), abs(vec4<u32>(var_1.c, u_input.b.x, var_0.x, u_input.b.x))))), -(i32(-1i) * -2147483647i), 4294967295u);
}

