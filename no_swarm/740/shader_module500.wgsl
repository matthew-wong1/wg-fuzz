struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> vec4<u32> {
    global0 = ~(~_wgslsmith_sub_vec2_u32(firstTrailingBit(arg_1.c.a.yy), arg_2.b.c.a.ww));
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(arg_1.c.a), vec4<u32>(min(~arg_2.b.b, arg_2.b.c.a.x | arg_2.b.c.a.x), ~u_input.b, 54282u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(13336u, 28395u, 31602u, arg_2.b.c.a.x), vec4<u32>(4294967295u, global0.x, 5784u, 0u)))), arg_2.b.c.a);
    global0 = vec2<u32>(18717u, ~(arg_2.b.c.a.x >> (~0u % 32u)));
    var var_1 = Struct_1(vec4<u32>(countOneBits(106627u), abs(~(~arg_1.c.a.x)), arg_1.c.a.x, arg_1.c.a.x), all(vec2<bool>(arg_2.b.a, all(vec4<bool>(arg_2.b.c.b, false, true, true)))) != (arg_2.a != 6618i));
    global0 = ~select(vec2<u32>(~u_input.b & min(var_1.a.x, 2573u), 23203u), var_1.a.zw << (vec2<u32>(max(0u, 0u), 0u) % vec2<u32>(32u)), true);
    return ~(~(~arg_1.c.a));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_3 {
    var var_0 = 32762u;
    let var_1 = Struct_2(4294967295u < u_input.b, ~(~(56283u >> ((u_input.b << (u_input.b % 32u)) % 32u))), Struct_1(_wgslsmith_add_vec4_u32(func_3(-2147483647i, Struct_2(true, 1u, Struct_1(vec4<u32>(global0.x, 94151u, global0.x, global0.x), true)), Struct_3(arg_0, Struct_2(false, 45144u, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), true)))), vec4<u32>(0u, max(global0.x, u_input.b), ~u_input.b, ~u_input.b)), all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)))));
    var_0 = _wgslsmith_mod_u32(28266u, u_input.b);
    let var_2 = var_1;
    global0 = ~vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(32474u, u_input.b, 4294967295u)) ^ _wgslsmith_sub_u32(1u, var_2.b), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.c.a.yx, var_2.c.a.zw), vec2<u32>(32131u, var_2.b) | vec2<u32>(u_input.b, 1u)), max(var_1.c.a.x, 26969u)));
    return Struct_3(_wgslsmith_div_i32(arg_0, 2147483647i), var_1);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    global0 = _wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.b, abs(11959u)), ~(~vec2<u32>(global0.x, 28653u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(1u, u_input.b, 0u)), _wgslsmith_div_vec2_u32(arg_1.b.c.a.xx, vec2<u32>(56520u, u_input.b)) << (vec2<u32>(88482u, 1u) % vec2<u32>(32u))));
    var var_0 = _wgslsmith_sub_vec4_u32(arg_1.b.c.a, _wgslsmith_sub_vec4_u32(~(~arg_1.b.c.a), func_3(_wgslsmith_div_i32(arg_0, arg_1.a), Struct_2(false, u_input.b, arg_1.b.c), func_2(arg_1.a, 327f)) | (arg_1.b.c.a | ~arg_1.b.c.a)));
    let var_1 = select(select(!vec4<bool>(true, select(true, true, arg_1.b.a), select(arg_1.b.c.b, arg_1.b.a, false), arg_0 >= -23125i), select(select(vec4<bool>(arg_1.b.a, arg_1.b.c.b, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, arg_1.b.c.b, arg_1.b.a, arg_1.b.a), vec4<bool>(arg_1.b.c.b, true, arg_1.b.a, false), vec4<bool>(arg_1.b.c.b, arg_1.b.a, true, false))), !(!vec4<bool>(arg_1.b.a, true, false, true)), select(true, true, arg_1.b.c.b)), vec4<bool>(select(false, true, true), any(vec3<bool>(arg_1.b.c.b, arg_1.b.c.b, true)), arg_1.b.a, all(!vec2<bool>(arg_1.b.c.b, true)))), select(select(select(vec4<bool>(arg_1.b.c.b, true, arg_1.b.c.b, arg_1.b.a), !vec4<bool>(false, false, arg_1.b.c.b, arg_1.b.c.b), select(vec4<bool>(arg_1.b.a, arg_1.b.c.b, false, false), vec4<bool>(arg_1.b.a, true, arg_1.b.a, false), false)), vec4<bool>(arg_1.b.c.b, arg_1.b.a && true, arg_1.b.a & true, !arg_1.b.a), !select(vec4<bool>(false, arg_1.b.c.b, false, false), vec4<bool>(arg_1.b.c.b, arg_1.b.a, arg_1.b.c.b, false), arg_1.b.c.b)), vec4<bool>(any(vec3<bool>(arg_1.b.a, arg_1.b.c.b, true)), false, true, arg_1.b.c.b), !select(vec4<bool>(arg_1.b.c.b, arg_1.b.c.b, false, arg_1.b.c.b), vec4<bool>(arg_1.b.c.b, arg_1.b.c.b, arg_1.b.c.b, true), true)), select(select(!(!vec4<bool>(false, arg_1.b.c.b, arg_1.b.c.b, true)), !vec4<bool>(arg_1.b.c.b, true, arg_1.b.c.b, arg_1.b.a), vec4<bool>(any(vec4<bool>(arg_1.b.a, arg_1.b.a, false, arg_1.b.a)), arg_1.b.c.b, true, arg_1.b.a && arg_1.b.a)), select(!select(vec4<bool>(true, arg_1.b.a, true, true), vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a, false), vec4<bool>(true, arg_1.b.a, arg_1.b.c.b, arg_1.b.c.b)), !vec4<bool>(true, arg_1.b.c.b, true, true), vec4<bool>(all(vec4<bool>(true, arg_1.b.a, true, true)), all(vec3<bool>(arg_1.b.c.b, arg_1.b.a, arg_1.b.c.b)), arg_1.b.a, arg_1.b.c.b)), true));
    var_0 = firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(41814u, ~1u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.x, arg_1.b.b), abs(59631u), arg_1.b.c.a.x), ~global0.x & ~var_0.x, 1u), ~vec4<u32>(4294967295u, global0.x << (1u % 32u), 50514u, 0u)));
    var var_2 = any(!select(!var_1.zwx, vec3<bool>(true, any(var_1.ywx), false), select(var_1.zyx, !vec3<bool>(var_1.x, false, false), true)));
    return arg_1.b;
}

fn func_1() -> vec2<f32> {
    var var_0 = func_4(u_input.a.x, func_2(-56902i, _wgslsmith_f_op_f32(f32(-1f) * -1345f)));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(floor(346f));
    let var_3 = -1i;
    var var_4 = _wgslsmith_f_op_f32(sign(-251f));
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_2, 193f)))), var_2), _wgslsmith_f_op_f32(trunc(1f)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> u32 {
    let var_0 = Struct_2(false, max(_wgslsmith_div_u32(func_4(u_input.a.x, Struct_3(1447i, Struct_2(true, 0u, Struct_1(vec4<u32>(1u, 7965u, global0.x, 1u), false)))).b, ~u_input.b), u_input.b) << (19844u % 32u), func_4(_wgslsmith_sub_i32(firstTrailingBit(~u_input.d), -1i), func_2(-1i, _wgslsmith_f_op_vec2_f32(func_1()).x)).c);
    let var_1 = func_2(-(~u_input.d), arg_0.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 219f, -1095f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1008f, arg_0.x, arg_0.x, -1523f), vec4<f32>(835f, 1746f, arg_2.x, arg_0.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -905f, -1601f, arg_2.x) * vec4<f32>(arg_2.x, arg_0.x, arg_0.x, 2798f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))));
    global0 = firstTrailingBit(vec2<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, global0.x, 0u), vec4<u32>(1u, global0.x, 1u, arg_1.x)) ^ _wgslsmith_add_u32(u_input.b, 1u)), _wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.b.c.a.yx), vec2<u32>(92112u, max(41039u, 1u)))));
    let var_3 = !vec3<bool>(false && !(var_1.a >= u_input.d), !(_wgslsmith_f_op_vec2_f32(func_1()).x == _wgslsmith_f_op_f32(f32(-1f) * -1300f)), var_1.b.c.b);
    return _wgslsmith_mult_u32(~(~abs(func_3(var_1.a, var_0, var_1).x)), u_input.b << (func_2(2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1379f)).b.c.a.x % 32u));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = func_4(firstLeadingBit(~(-1i)), Struct_3(_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, -8268i, ~u_input.d), -min(-41950i, arg_1.x)), Struct_2(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true)), func_2(-arg_1.x, -455f).b.b, Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, 26744u, arg_2.x, 4294967295u), vec4<u32>(u_input.b, arg_0.x, u_input.b, arg_0.x)), any(vec2<bool>(true, true)))))).c;
    var_0 = func_2(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 971f) * _wgslsmith_div_f32(984f, -177f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f))))).b.c;
    var_0 = Struct_1(countOneBits(~_wgslsmith_add_vec4_u32(var_0.a << (vec4<u32>(u_input.b, arg_2.x, arg_0.x, 93107u) % vec4<u32>(32u)), select(vec4<u32>(var_0.a.x, arg_0.x, global0.x, global0.x), var_0.a, vec4<bool>(var_0.b, var_0.b, false, var_0.b)))), all(vec4<bool>(true, !(var_0.b | var_0.b), var_0.b, true)));
    let var_1 = !(!vec3<bool>(any(select(vec3<bool>(true, true, var_0.b), vec3<bool>(true, false, true), vec3<bool>(var_0.b, true, var_0.b))), any(!vec4<bool>(var_0.b, false, true, var_0.b)), true));
    return func_2(u_input.a.x, 347f).b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<u32>(func_5(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-169f, 516f) * vec2<f32>(-319f, -381f)))), ~(vec2<u32>(0u, u_input.b) ^ vec2<u32>(1u, global0.x)), _wgslsmith_f_op_vec2_f32(func_1())), ~1u, u_input.b), u_input.a, func_2(firstLeadingBit(u_input.a.x) << (func_4(-1i, func_2(u_input.c, 800f)).b % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(632f)), _wgslsmith_f_op_f32(-167f + 1f)))).b.c.a.wyy);
    var var_1 = vec4<i32>(u_input.d, select(u_input.d, _wgslsmith_mult_i32(u_input.d >> (global0.x % 32u), -1i), var_0.b) >> (_wgslsmith_add_u32(45667u, 1u >> (global0.x % 32u)) % 32u), _wgslsmith_mod_i32(func_2(abs(i32(-1i) * -49141i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(937f * 542f) - -1078f)).a, -2147483647i), _wgslsmith_div_i32(u_input.c, -_wgslsmith_add_i32(u_input.a.x, max(u_input.a.x, 10631i))));
    let x = u_input.a;
    s_output = StorageBuffer(21616i | _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.c, u_input.c), u_input.c, -92262i), vec3<i32>(-var_1.x, func_2(10418i, 2358f).a, ~(-1i))), ~(vec3<u32>(~4294967295u, 0u, ~var_0.a.x) >> ((_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, global0.x, 83971u), var_0.a.zzy) << (countOneBits(var_0.a.www) % vec3<u32>(32u))) % vec3<u32>(32u))), 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-682f, -675f, 710f), vec3<f32>(474f, 217f, 274f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2432f, 2301f, 1419f)))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(403f, -247f, 1419f)))))));
}

