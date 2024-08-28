struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 66893u;

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(arg_1.b, Struct_1(arg_1.e.a, select(arg_1.a.b, !arg_1.b.b, !(!arg_1.c.b)), u_input.a.zz, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(min(0i, 1i), 0i << (arg_1.e.a.x % 32u), _wgslsmith_add_i32(arg_1.e.d, 3961i), arg_0)), _wgslsmith_mult_u32(max(u_input.c, 1u), ~_wgslsmith_dot_vec2_u32(arg_1.c.a.yx, arg_1.c.a.zy))), Struct_1(firstTrailingBit(firstLeadingBit(~vec4<u32>(arg_1.b.a.x, arg_1.a.a.x, u_input.c, 60947u))), arg_1.c.b, -arg_1.e.c, 81i << (arg_1.c.a.x % 32u), ~max(27118u, 4294967295u) & u_input.c), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, ~2147483647i, 1i, reverseBits(u_input.a.x)), abs(min(vec4<i32>(-2225i, u_input.a.x, arg_1.b.d, arg_1.e.c.x), u_input.a))), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(u_input.b.x), u_input.b.x, ~4294967295u, _wgslsmith_mod_u32(92396u, u_input.b.x)), _wgslsmith_mult_vec4_u32(arg_1.c.a, ~vec4<u32>(arg_1.c.a.x, u_input.c, 1u, 1u))), !arg_1.b.b, -vec2<i32>(arg_0 << (u_input.c % 32u), firstLeadingBit(10320i)), -12977i, _wgslsmith_div_u32(_wgslsmith_add_u32(4638u, u_input.c) >> (reverseBits(33458u) % 32u), ~arg_1.b.e)));
    global0 = u_input.c;
    global1 = array<Struct_2, 3>();
    var var_1 = 53566u;
    var var_2 = -2147483647i;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-417f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(min(1000f, -1000f)))))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_4) -> bool {
    global1 = array<Struct_2, 3>();
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-arg_2.yx), Struct_3(0i, firstTrailingBit(arg_3.b.b)), _wgslsmith_f_op_f32(-868f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x * -1000f) - _wgslsmith_f_op_f32(func_3(~2147483647i, Struct_2(Struct_1(vec4<u32>(4294967295u, arg_1, u_input.b.x, 1u), vec2<bool>(false, true), arg_3.b.b, 12408i, 23046u), Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, arg_1, arg_1), vec2<bool>(false, true), vec2<i32>(0i, -39739i), 1i, arg_1), Struct_1(vec4<u32>(u_input.c, arg_1, u_input.b.x, 12804u), vec2<bool>(false, false), vec2<i32>(arg_0.b.x, 2147483647i), u_input.a.x, 34594u), 1954i, Struct_1(vec4<u32>(arg_1, 17971u, u_input.c, 567u), vec2<bool>(false, false), vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.x, arg_1)))))));
    global0 = abs(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.b.x, u_input.b.x, arg_1, arg_1) ^ countOneBits(vec4<u32>(u_input.b.x, 0u, 54123u, 0u)), ~max(vec4<u32>(arg_1, arg_1, arg_1, u_input.b.x), vec4<u32>(arg_1, 0u, 44390u, u_input.c)), vec4<bool>(false, true, true, false)), ~vec4<u32>(arg_1, ~u_input.c, ~arg_1, u_input.b.x & 17172u)));
    global0 = ~(~countOneBits(~select(55843u, 0u, false)));
    let var_1 = var_0;
    return true;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(~u_input.b, ~(~u_input.b));
    var var_1 = arg_2.x;
    var var_2 = u_input.a.x;
    let var_3 = Struct_3(~(-(_wgslsmith_clamp_i32(arg_0, -17026i, -39093i) ^ -arg_1)), -vec2<i32>(arg_0, select(_wgslsmith_sub_i32(-2147483647i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(11135i, arg_1), u_input.a.xz), true)));
    var_1 = arg_2.x;
    return Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, u_input.c, 0u)), countOneBits(var_0.x), u_input.c << (1u % 32u)), ~vec4<u32>(~0u, 1u, var_0.x, abs(u_input.b.x))), select(!select(!arg_2.xz, vec2<bool>(arg_3, false), any(arg_2)), vec2<bool>(arg_2.x, _wgslsmith_f_op_f32(func_3(arg_1, Struct_2(Struct_1(vec4<u32>(u_input.b.x, 0u, 35296u, var_0.x), arg_2.zy, vec2<i32>(0i, -15487i), 4429i, 4294967295u), Struct_1(vec4<u32>(u_input.b.x, u_input.c, 10080u, var_0.x), vec2<bool>(false, arg_2.x), var_3.b, -91i, 28844u), Struct_1(vec4<u32>(u_input.c, 33445u, 1u, u_input.c), arg_2.xy, var_3.b, -15030i, 3433u), u_input.a.x, Struct_1(vec4<u32>(1u, 0u, u_input.b.x, 0u), arg_2.xy, vec2<i32>(-1i, arg_1), arg_1, 1u)))) != _wgslsmith_f_op_f32(trunc(-1415f))), !(!vec2<bool>(arg_2.x, arg_2.x))), var_3.b, reverseBits(i32(-1i) * -(~var_3.a)), 4294967295u);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = -1891f;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(var_0)))) + var_0) - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-225f, _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(func_3(-27280i, arg_2)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 1628f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -708f) + _wgslsmith_f_op_f32(select(-1064f, arg_1, true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), -922f)))))));
    let var_2 = 14571u & arg_2.c.a.x;
    global0 = ~41584u;
    var var_3 = Struct_3(arg_2.d, min(u_input.a.yw, u_input.a.yw | u_input.a.xx) | firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(19525i, u_input.a.x), arg_2.c.d)));
    return Struct_2(Struct_1(arg_2.e.a, select(vec2<bool>(all(vec3<bool>(false, arg_2.b.b.x, false)), !arg_2.b.b.x), vec2<bool>(!arg_2.e.b.x, true), var_2 <= 25898u), ~(~(~vec2<i32>(-40805i, var_3.a))), -15399i, arg_2.b.e), arg_2.e, func_4(~var_3.a, i32(-1i) * -firstTrailingBit(-27175i), !select(select(vec3<bool>(true, arg_2.b.b.x, true), vec3<bool>(false, arg_2.b.b.x, arg_2.a.b.x), vec3<bool>(false, arg_2.c.b.x, false)), !vec3<bool>(false, arg_2.e.b.x, arg_2.e.b.x), !vec3<bool>(arg_2.c.b.x, arg_2.b.b.x, false)), arg_2.a.b.x), -2147483647i, func_4(1i, firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.x, 1590i, 2147483647i), u_input.a.yxx)), vec3<bool>((0i ^ arg_2.e.d) <= -2147483647i, any(vec3<bool>(false, false, true)), any(!vec4<bool>(arg_2.b.b.x, arg_2.a.b.x, true, arg_2.e.b.x))), arg_2.b.b.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>) -> u32 {
    var var_0 = func_5(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(109f, 177f, true)) - -242f)))), Struct_2(func_4(_wgslsmith_mod_i32(8669i, arg_0.x) | 1i, _wgslsmith_mult_i32(arg_0.x ^ 0i, 0i), vec3<bool>(true, arg_1.x, func_2(Struct_3(arg_0.x, vec2<i32>(arg_0.x, -18205i)), u_input.b.x, vec3<f32>(378f, 1065f, -1702f), Struct_4(vec2<f32>(-2562f, 452f), Struct_3(arg_0.x, u_input.a.wz), -1510f))), true), func_4(u_input.a.x, u_input.a.x, !(!arg_1.yzy), true), func_4(-68702i, u_input.a.x, select(vec3<bool>(false, true, arg_1.x), select(vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, true), arg_1.xyz), func_4(10551i, -1i, arg_1.wwy, false).b.x), false), -572i, func_4(u_input.a.x | ~u_input.a.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 1i), -arg_0.xz), !(!arg_1.yxz), !(!arg_1.x))));
    let var_1 = _wgslsmith_mult_u32(~(~(var_0.b.e ^ var_0.e.e) << (~(~4168u) % 32u)), _wgslsmith_div_u32(~2882u, ~1u));
    global0 = ~22135u;
    global1 = array<Struct_2, 3>();
    var var_2 = Struct_2(func_4(reverseBits(0i), abs(1i), select(vec3<bool>(arg_1.x, true, 4676i < var_0.b.d), select(arg_1.xxx, select(vec3<bool>(true, var_0.e.b.x, true), arg_1.yyx, false), var_0.c.b.x), all(vec4<bool>(false, true, arg_1.x, false))), true), Struct_1(select(firstTrailingBit(vec4<u32>(var_1, u_input.c, 4294967295u, var_1)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1, 24462u, u_input.b.x), func_5(46561u, 688f, global1[_wgslsmith_index_u32(var_0.e.a.x, 3u)]).e.a), !(arg_0.x >= -2147483647i)), select(!vec2<bool>(false, arg_1.x), arg_1.zy, arg_1.yz), func_5(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1i, Struct_2(Struct_1(var_0.a.a, vec2<bool>(arg_1.x, false), vec2<i32>(u_input.a.x, arg_0.x), 1i, u_input.c), Struct_1(vec4<u32>(44327u, 1u, var_1, 0u), var_0.c.b, vec2<i32>(-2147483647i, u_input.a.x), -1i, 1u), var_0.e, var_0.b.d, var_0.c)))), func_5(~u_input.b.x, _wgslsmith_f_op_f32(-634f - 899f), Struct_2(var_0.b, Struct_1(vec4<u32>(var_1, 0u, var_0.a.a.x, var_0.b.a.x), arg_1.yz, vec2<i32>(0i, arg_0.x), 1i, u_input.b.x), Struct_1(vec4<u32>(39489u, u_input.c, var_1, 47311u), vec2<bool>(arg_1.x, var_0.a.b.x), vec2<i32>(var_0.a.d, u_input.a.x), var_0.a.d, var_0.b.a.x), -1i, var_0.e))).b.c, ~u_input.a.x, min(var_1, u_input.b.x)), var_0.b, -1i, var_0.b);
    return abs(58199u);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(619f, -670f)), Struct_3(2147483647i, ~(-vec2<i32>(arg_0.d, 1i))), _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(arg_0.c.x), 50684i), vec2<i32>(-10226i, -arg_2.b.x)), global1[_wgslsmith_index_u32(1u, 3u)])));
    var var_1 = -arg_0.c.x;
    let var_2 = ~func_5(1u, 1253f, Struct_2(arg_3, func_4(u_input.a.x, func_5(4294967295u, 220f, global1[_wgslsmith_index_u32(u_input.b.x, 3u)]).d, vec3<bool>(true, true, arg_0.b.x), true), Struct_1(vec4<u32>(31605u, u_input.c, 8209u, 23587u), arg_0.b, u_input.a.wx << (arg_0.a.wz % vec2<u32>(32u)), _wgslsmith_div_i32(u_input.a.x, 2147483647i), arg_1), 45710i, Struct_1(vec4<u32>(arg_3.e, 1u, 4294967295u, arg_1), vec2<bool>(true, arg_3.b.x), abs(vec2<i32>(47213i, -32247i)), -2147483647i, func_1(u_input.a.xwz, vec4<bool>(true, false, false, arg_0.b.x))))).b.c.x;
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-517f, var_0.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-741f + var_0.a.x) - _wgslsmith_f_op_f32(531f - 424f))), 888f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(arg_3.d, Struct_2(arg_0, arg_3, arg_0, var_2, arg_3)))))) + var_0.a.x)));
    var var_4 = -1000f;
    return Struct_3(abs(36602i), arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global1 = array<Struct_2, 3>();
    let var_1 = func_6(Struct_1(vec4<u32>(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x, u_input.c, min(u_input.c, u_input.b.x)), vec2<bool>(all(vec4<bool>(true, true, true, true)), false), u_input.a.wy, -_wgslsmith_mult_i32(i32(-1i) * -1i, 1i), _wgslsmith_mult_u32(_wgslsmith_mod_u32(func_1(u_input.a.yxw, vec4<bool>(false, true, false, true)), ~0u), 1u)), min(55487u, func_5(abs(~20342u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1272f, 292f)) + -964f), global1[_wgslsmith_index_u32(abs(~0u), 3u)]).b.a.x), Struct_3((u_input.a.x >> (max(u_input.b.x, u_input.b.x) % 32u)) | u_input.a.x, ~u_input.a.zw | min(vec2<i32>(16355i, 0i), u_input.a.ww | vec2<i32>(2147483647i, var_0))), func_4(59914i, u_input.a.x, !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-658f * -1004f)) < _wgslsmith_f_op_f32(floor(577f))));
    global1 = array<Struct_2, 3>();
    let var_2 = Struct_2(func_5(_wgslsmith_mult_u32(u_input.c, ~50062u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f - -1000f))), Struct_2(func_5(~u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -1244f), global1[_wgslsmith_index_u32(min(u_input.c, 0u), 3u)]).e, Struct_1(~vec4<u32>(4294967295u, u_input.b.x, 88227u, u_input.c), vec2<bool>(true, true), ~u_input.a.wy, -2147483647i & u_input.a.x, 51713u), func_5(u_input.c, -1149f, Struct_2(Struct_1(vec4<u32>(0u, u_input.c, u_input.c, 4294967295u), vec2<bool>(true, false), u_input.a.yx, u_input.a.x, u_input.c), Struct_1(vec4<u32>(43482u, 64439u, 31277u, 51289u), vec2<bool>(true, false), vec2<i32>(0i, 2147483647i), -1i, u_input.b.x), Struct_1(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u), vec2<bool>(true, false), u_input.a.ww, 18109i, u_input.b.x), -49312i, Struct_1(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), vec2<bool>(false, false), vec2<i32>(1i, -1i), 24635i, u_input.b.x))).a, var_0 >> (u_input.c % 32u), Struct_1(vec4<u32>(0u, 56009u, u_input.b.x, u_input.c) ^ vec4<u32>(7295u, 4294967295u, 49743u, u_input.b.x), func_4(-20990i, u_input.a.x, vec3<bool>(true, true, true), false).b, -vec2<i32>(-2147483647i, var_1.b.x), _wgslsmith_dot_vec3_i32(u_input.a.zyx, u_input.a.zyx), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)))).c, func_4(_wgslsmith_mod_i32(_wgslsmith_sub_i32(i32(-1i) * -7460i, ~var_1.a), func_5(40810u, 867f, func_5(u_input.b.x, 281f, global1[_wgslsmith_index_u32(0u, 3u)])).d), ~u_input.a.x, vec3<bool>(true, true, true), !any(vec3<bool>(true, true, true))), func_4(-_wgslsmith_clamp_i32(81481i, 1i, 1i), _wgslsmith_dot_vec3_i32(u_input.a.wxy, vec3<i32>(var_1.b.x, i32(-1i) * -1i, -23677i)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), 2147483647i, func_5(u_input.b.x, _wgslsmith_f_op_f32(func_3(u_input.a.x, func_5(_wgslsmith_mult_u32(u_input.c, u_input.b.x), 1f, global1[_wgslsmith_index_u32(countOneBits(u_input.c), 3u)]))), func_5(_wgslsmith_div_u32(4294967295u, 100571u), -3059f, global1[_wgslsmith_index_u32(u_input.c, 3u)])).b);
    var var_3 = vec3<u32>(func_4(1i, ~firstLeadingBit(2147483647i) ^ abs(_wgslsmith_div_i32(var_2.d, 1i)), !vec3<bool>(true, var_2.b.b.x, var_2.b.b.x), func_5(~0u, -2025f, Struct_2(var_2.a, Struct_1(vec4<u32>(var_2.b.a.x, var_2.b.a.x, 32306u, 35095u), var_2.a.b, vec2<i32>(var_1.b.x, var_0), u_input.a.x, 33059u), var_2.a, -2147483647i, Struct_1(var_2.a.a, var_2.a.b, var_2.a.c, 2400i, 34856u))).e.b.x && any(var_2.e.b)).e, 15875u, u_input.c);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -958f)) + 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -324f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1171f, 1000f)) + -1016f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(265f)), _wgslsmith_f_op_f32(select(-335f, -1000f, false)), true))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1173f, _wgslsmith_f_op_f32(min(1030f, 229f))) * _wgslsmith_div_f32(836f, -251f)));
    var_4 = !(!(!var_2.a.b.x) == true);
    global1 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i), var_0, var_2.a.a.yzw, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(820f)) * -261f)))));
}

