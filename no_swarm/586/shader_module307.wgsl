struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(23346i, 0i, 10614i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    global0 = vec3<i32>(select(arg_2.c.b, 1i, arg_2.d), _wgslsmith_mult_i32(-(~global0.x), ~arg_2.c.d) >> (firstTrailingBit(14101u) % 32u), _wgslsmith_mod_i32((-1i & arg_2.c.d) ^ _wgslsmith_add_i32(-39551i, global0.x), arg_2.c.d) ^ arg_2.c.d);
    global0 = vec3<i32>(~1i, ~(-(~global0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-17054i, _wgslsmith_div_i32(-10280i, -20906i), _wgslsmith_dot_vec2_i32(global0.yy, vec2<i32>(global0.x, -2147483647i))), reverseBits(vec3<i32>(0i, global0.x, 59707i)))) ^ vec3<i32>(arg_2.c.d, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2817i, -30877i, 0i), vec3<i32>(28649i, global0.x, -1i)), countOneBits(vec3<i32>(arg_2.c.b, -24001i, arg_2.c.b))) ^ arg_2.c.b, ~arg_2.c.d);
    global0 = max(vec3<i32>(firstTrailingBit(arg_2.c.d) << (u_input.a.x % 32u), 3091i, _wgslsmith_div_i32(arg_2.c.d, _wgslsmith_mult_i32(arg_2.c.b, global0.x))), countOneBits(_wgslsmith_add_vec3_i32(~firstTrailingBit(vec3<i32>(1i, -10798i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, 10555i, arg_2.c.b), vec3<i32>(arg_2.c.b, 0i, arg_2.c.b), vec3<i32>(72919i, 1i, -37211i) << (vec3<u32>(0u, u_input.a.x, 47827u) % vec3<u32>(32u))))));
    let var_0 = Struct_1(arg_2.c.a, abs(-arg_2.c.d), arg_2.a, 1i);
    global0 = min(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(46633i, -58609i, var_0.d), vec3<i32>(var_0.d, 0i, 2147483647i)) | max(-2147483647i, var_0.d), _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, 1i), var_0.b), -2147483647i), (vec3<i32>(-1i) * -select(vec3<i32>(arg_2.c.b, -1i, var_0.b), vec3<i32>(-40273i, 37763i, -1i), vec3<bool>(true, false, false))) & ~(vec3<i32>(-1i) * -vec3<i32>(0i, -37360i, var_0.b)));
    return arg_2.c.d;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: u32, arg_3: i32) -> i32 {
    global0 = ~vec3<i32>(arg_0, arg_3, func_3(1f, u_input.a.x & 33405u, Struct_3(arg_1.x, -17108i <= global0.x, Struct_1(vec2<bool>(true, arg_1.x), arg_0, true, -33424i), true, true), Struct_2(select(vec4<u32>(1u, arg_2, 1u, 55872u), vec4<u32>(32003u, 1u, u_input.a.x, arg_2), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)))));
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -111f) + -685f);
    return _wgslsmith_mod_i32(arg_3, 68864i);
}

fn func_2() -> vec2<bool> {
    global0 = countOneBits(max(~(vec3<i32>(-2147483647i, -13558i, 27719i) | _wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(2147483647i, 1i, global0.x))), -(~vec3<i32>(0i, -5559i, global0.x)) >> (firstTrailingBit(u_input.a) % vec3<u32>(32u))));
    global0 = _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_clamp_i32(9462i, abs(-2147483647i), -2147483647i)), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -22575i), vec2<i32>(global0.x, 0i))), func_4(~52i, vec2<bool>(true, true), u_input.a.x, func_3(_wgslsmith_f_op_f32(select(-2648f, 2247f, false)), ~u_input.a.x, Struct_3(true, false, Struct_1(vec2<bool>(false, true), global0.x, true, global0.x), true, false), Struct_2(vec4<u32>(59707u, 1u, 1u, u_input.a.x))))), vec3<i32>(global0.x, countOneBits(global0.x), countOneBits(global0.x)));
    let var_0 = all(vec3<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true)), !any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-376f)), 1722f) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(2224f))))));
    let var_1 = -1i ^ _wgslsmith_sub_i32(global0.x, global0.x);
    var var_2 = Struct_5(Struct_3(var_0 & all(vec4<bool>(true, var_0, false, true)), all(vec4<bool>(1i >= var_1, true, true, !var_0)), Struct_1(select(!vec2<bool>(var_0, var_0), select(vec2<bool>(true, false), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0)), true), global0.x, true, _wgslsmith_clamp_i32(~43778i, 1i, -global0.x)), var_0 != var_0, true), !vec3<bool>(select(any(vec3<bool>(false, true, false)), !var_0, true), !any(vec2<bool>(false, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-450f, _wgslsmith_f_op_f32(trunc(1543f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1421f - -629f))))), firstLeadingBit(0i));
    return vec2<bool>(true | !var_0, any(select(var_2.b, select(select(vec3<bool>(var_0, var_2.a.c.c, var_2.a.b), var_2.b, vec3<bool>(var_0, false, true)), !var_2.b, var_2.b), !var_0)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = !vec4<bool>(arg_0.x, arg_0.x, all(!vec3<bool>(false, arg_0.x, false)), arg_0.x);
    let var_1 = Struct_1(func_2(), countOneBits(~(~(-2147483647i))), !(~_wgslsmith_dot_vec4_u32(vec4<u32>(17547u, 13814u, 29254u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 1u, 1u)) < ~min(1u, 46449u)), ~(-1i));
    var var_2 = Struct_5(Struct_3(arg_0.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, var_1.d, var_1.b), vec3<i32>(global0.x, 38329i, -11248i)), -1i) == 17317i, var_1, false, !(u_input.a.x < (0u >> (1u % 32u)))), vec3<bool>(all(vec4<bool>(func_2().x, false, arg_0.x, var_0.x | var_0.x)), !all(vec2<bool>(false, false)) | (all(vec4<bool>(var_1.a.x, var_0.x, var_0.x, var_1.c)) | false), all(vec2<bool>(true, true))), -843f, (func_4(-6277i, !var_0.yz, min(u_input.a.x, u_input.a.x), countOneBits(var_1.d)) >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 32016u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), false), ~vec4<u32>(10799u, 56733u, u_input.a.x, u_input.a.x)) % 32u)) << (u_input.a.x % 32u));
    var var_3 = arg_0.x;
    var_3 = any(select(vec3<bool>(~var_1.d > _wgslsmith_mod_i32(var_1.b, 30759i), var_2.b.x, any(vec4<bool>(arg_0.x, true, false, false))), select(!select(vec3<bool>(true, var_2.a.b, false), vec3<bool>(var_1.c, false, var_2.a.a), var_0.x), select(var_0.wzy, vec3<bool>(var_2.b.x, false, true), true), arg_0.x), (arg_0.x && true) | var_2.a.e));
    return Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, 32419u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 67544u, u_input.a.x, u_input.a.x), vec4<u32>(29307u, 15229u, 4294967295u, u_input.a.x))), u_input.a.x, u_input.a.x ^ ~u_input.a.x, ~(~u_input.a.x)), firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 24549u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 41378u, u_input.a.x, u_input.a.x)), vec4<u32>(0u, 44089u, u_input.a.x, 39057u)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: f32, arg_3: u32) -> Struct_4 {
    let var_0 = select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1542f) * arg_1.c) >= 522f, _wgslsmith_f_op_f32(-arg_2) <= _wgslsmith_f_op_f32(268f * _wgslsmith_f_op_f32(arg_2 + -1000f)), func_3(-824f, 21917u, Struct_3(false, true, arg_1.a.c, arg_1.a.a, arg_1.a.b), Struct_2(arg_0.a.a)) < func_3(1f, 0u, Struct_3(true, arg_1.a.b, Struct_1(arg_1.b.zx, -19212i, arg_1.b.x, global0.x), false, false), Struct_2(arg_0.c.a))), !select(!select(vec3<bool>(true, false, arg_1.b.x), vec3<bool>(true, arg_1.a.b, true), arg_1.b), !(!vec3<bool>(true, false, arg_1.b.x)), arg_1.a.b), arg_1.b);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -190f);
    var var_2 = vec4<u32>(0u, _wgslsmith_dot_vec3_u32(max(abs(vec3<u32>(arg_3, u_input.a.x, arg_0.a.a.x)), ~vec3<u32>(0u, arg_3, 4294967295u)), ~select(u_input.a, vec3<u32>(arg_0.c.a.x, arg_0.c.a.x, 33231u), false)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, arg_0.b), ~vec3<u32>(arg_3, 0u, u_input.a.x) | _wgslsmith_sub_vec3_u32(u_input.a, u_input.a)) % 32u), ~(~_wgslsmith_dot_vec4_u32(arg_0.c.a | arg_0.a.a, vec4<u32>(1u, arg_0.a.a.x, arg_0.a.a.x, 4294967295u) >> (arg_0.a.a % vec4<u32>(32u)))), ~reverseBits(12976u));
    let var_3 = ~(arg_0.a.a.x | func_1(vec3<bool>(select(arg_1.a.b, true, var_0.x), select(var_0.x, true, arg_1.a.e), arg_1.a.c.d < arg_1.d)).a.x);
    var var_4 = ~(~u_input.a) | ~firstLeadingBit(u_input.a);
    return Struct_4(func_1(!select(!arg_1.b, vec3<bool>(var_0.x, true, false), true)), u_input.a.x, func_1(vec3<bool>(var_0.x, all(vec3<bool>(true, true, var_0.x)), 2147483647i > _wgslsmith_mod_i32(global0.x, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1351f - 1951f) + 255f)) * 1000f), -519f);
    let var_1 = func_5(Struct_4(func_1(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), ~_wgslsmith_mult_u32(u_input.a.x, 1u), Struct_2(vec4<u32>(u_input.a.x ^ u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 16983u ^ u_input.a.x))), Struct_5(Struct_3(true, select(select(false, true, false), true, true), Struct_1(vec2<bool>(true, true), -63773i, any(vec4<bool>(true, true, true, true)), _wgslsmith_mult_i32(793i, global0.x)), false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -688f), global0.x), 406f, 4294967295u);
    var var_2 = var_1.a;
    var var_3 = Struct_3(true, true, Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), firstLeadingBit(firstLeadingBit(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), ~(-2147483647i)), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), func_2().x);
    let var_4 = -25944i;
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1426f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -539f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 326f, var_0.x) - _wgslsmith_div_vec4_f32(vec4<f32>(-914f, -670f, -610f, -960f), vec4<f32>(var_0.x, var_0.x, 140f, 551f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(119f, var_0.x, -1210f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -668f, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-840f, -1280f, 1000f, var_0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1309f, var_5.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)))), var_5.x);
}

