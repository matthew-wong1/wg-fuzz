struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(4965u, 54029u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(20960u, 1u), vec2<u32>(43784u, 1u), vec2<u32>(1u, 5839u), vec2<u32>(5998u, 26447u), vec2<u32>(4294967295u, 3306u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(36172u, 107374u), vec2<u32>(1u, 32656u), vec2<u32>(51058u, 53803u), vec2<u32>(1u, 1u), vec2<u32>(0u, 41175u), vec2<u32>(81513u, 1u), vec2<u32>(1u, 2604u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 51722u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 9089u), vec2<u32>(0u, 1u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global0 = array<vec2<u32>, 21>();
    let var_0 = ~vec2<u32>(~countOneBits(18668u), ~u_input.b.x);
    var var_1 = arg_0.wz;
    var var_2 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, -1i, -28577i), vec3<i32>(-1i, 1i, -85030i), vec3<bool>(true, true, true)) & _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 0i, -45342i), vec3<i32>(-15307i, -1i, 1i)), vec3<i32>(-1i) * -vec3<i32>(1i, 0i, 4876i)), -13291i), ~_wgslsmith_mult_i32(~_wgslsmith_mod_i32(2147483647i, 36460i), ~1i));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, arg_1.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1981f + 619f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(trunc(-1021f))))));
}

fn func_2() -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1413f)), _wgslsmith_f_op_f32(func_3(vec4<f32>(316f, 2908f, -236f, 1087f), Struct_2(660f, u_input.b.x, u_input.a.zyy, u_input.b.x, u_input.a.x), Struct_2(-514f, 54888u, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), 0u, u_input.a.x))))))), 7986u, vec3<u32>(23510u, u_input.a.x, u_input.b.x), _wgslsmith_div_u32(~(~65740u), ~u_input.b.x), firstLeadingBit(u_input.b.x));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -660f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(110f, 560f)))), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b.x, 0u, u_input.a.x)), u_input.a.yyz), min(reverseBits(_wgslsmith_add_vec3_u32(var_0.c, vec3<u32>(50457u, u_input.a.x, var_0.c.x))), countOneBits(select(firstTrailingBit(var_0.c), u_input.a.yzw, true))), u_input.a.x, ~43408u);
    var var_2 = Struct_1(vec2<bool>(select(true, true, all(vec4<bool>(false, true, false, true)) && true), _wgslsmith_dot_vec4_i32(-vec4<i32>(1779i, -1i, -2147483647i, -1i), vec4<i32>(1i, 1i, 1i, 1i)) != ~(~(-15026i))), 2291i, abs(_wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, 1i), ~vec2<i32>(-44458i, 1i), vec2<bool>(true, true)), vec2<i32>(abs(-2147483647i), ~22982i))));
    var var_3 = Struct_2(-802f, 47268u, firstTrailingBit(u_input.a.wzy), firstTrailingBit(max(~var_0.d, 1u)), ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(var_0.a + var_1.a), var_1.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a, 1557f, var_0.a))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1870f, -1145f, var_0.a), vec3<f32>(-316f, 1000f, -121f), var_2.a.x))), var_2.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a)), 353f, _wgslsmith_f_op_f32(-var_3.a))), select(select(vec3<bool>(var_2.a.x, var_2.a.x, true), select(vec3<bool>(true, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, false, true), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), false), vec3<bool>(true, var_2.a.x, var_2.a.x), !select(vec3<bool>(true, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, var_2.a.x, false), var_2.a.x)))));
    return 1161f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -366f, -827f, -1000f)), Struct_2(var_0.a, 1u, ~var_1.c, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~4294967295u), Struct_2(_wgslsmith_f_op_f32(step(var_1.a, 1173f)), u_input.b.x, _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.e, var_3.d, 4294967295u), var_0.c), _wgslsmith_div_u32(u_input.a.x, var_3.d), 1u))));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_2 {
    let var_0 = vec2<bool>(true, true != ((arg_0 <= _wgslsmith_f_op_f32(max(arg_0, 1358f))) | !any(vec4<bool>(true, true, true, false))));
    let var_1 = vec4<u32>(31044u >> (1u % 32u), 39789u, ~(u_input.a.x << (((27596u << (u_input.a.x % 32u)) ^ 4294967295u) % 32u)), 42679u);
    let var_2 = vec4<bool>((~(~var_1.x) == _wgslsmith_mod_u32(_wgslsmith_add_u32(76659u, var_1.x), _wgslsmith_div_u32(20670u, var_1.x))) & true, func_2(), select(var_0.x, !all(vec3<bool>(var_0.x, true, true)), var_0.x), var_0.x == all(select(!vec2<bool>(var_0.x, var_0.x), var_0, !var_0)));
    let var_3 = (_wgslsmith_mod_vec2_u32(vec2<u32>(abs(u_input.a.x), var_1.x), _wgslsmith_mod_vec2_u32(var_1.wx << (u_input.b % vec2<u32>(32u)), u_input.b)) ^ abs(~(~vec2<u32>(u_input.a.x, 60309u)))) | var_1.xz;
    global0 = array<vec2<u32>, 21>();
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -388f))), ~(var_1.x & _wgslsmith_mult_u32(0u, u_input.a.x)), vec3<u32>(~(~103261u), 36666u, _wgslsmith_sub_u32(u_input.b.x, 33364u) & ~31805u) & (var_1.yxz ^ ((vec3<u32>(var_1.x, 0u, var_1.x) >> (vec3<u32>(var_1.x, 0u, 4294967295u) % vec3<u32>(32u))) | u_input.a.zyz)), 70609u, abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_3.x, u_input.b.x), u_input.a.x)) >> (~0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.xww;
    global0 = array<vec2<u32>, 21>();
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(525f)) - 1000f), _wgslsmith_f_op_f32(sign(-1810f)));
    var var_2 = ~(~(~vec4<i32>(1i, 1i, 1i, 1i) & vec4<i32>(~46950i, _wgslsmith_clamp_i32(11144i, -70313i, 2147483647i), ~(-38192i), firstTrailingBit(12757i))));
    var var_3 = true;
    var var_4 = select(vec2<bool>(true, true), select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), any(vec2<bool>(false, true))), select(all(vec3<bool>(false, false, false)), true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), false), false), all(vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true, any(vec3<bool>(true, true, true)), true)));
    global0 = array<vec2<u32>, 21>();
    var var_5 = vec2<i32>(var_2.x, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, ~var_0.x, var_0.x, var_1.c.x), ~vec4<u32>(1u, 11240u, 4294967295u, 34760u), u_input.a), ~u_input.a, 1197f, 1i, -7948i);
}

