struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    global0 = array<vec4<u32>, 9>();
    global0 = array<vec4<u32>, 9>();
    var var_0 = !arg_0.x;
    var var_1 = -37478i;
    let var_2 = -_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, 2147483647i) | _wgslsmith_dot_vec3_i32(vec3<i32>(-13290i, 2147483647i, -1i), vec3<i32>(-13878i, 0i, -33541i)), _wgslsmith_sub_i32(~(-2147483647i), ~0i)) ^ _wgslsmith_mult_i32(~(-1i), _wgslsmith_clamp_i32(-22752i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-12289i, -21830i, 2147483647i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i)), 37532i));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1001f)), 1000f));
}

fn func_2() -> f32 {
    global0 = array<vec4<u32>, 9>();
    global0 = array<vec4<u32>, 9>();
    return _wgslsmith_f_op_f32(func_3(!vec4<bool>(true, !any(vec4<bool>(false, true, false, true)), true, false), abs(u_input.a.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32) -> Struct_2 {
    let var_0 = vec2<f32>(arg_1, -120f);
    global0 = array<vec4<u32>, 9>();
    var var_1 = Struct_4(_wgslsmith_clamp_vec4_u32(abs(firstTrailingBit(max(global0[_wgslsmith_index_u32(17433u, 9u)], vec4<u32>(60168u, 13972u, arg_0.x, 1u)))), vec4<u32>(select(arg_0.x, 1u, true), 75616u, min(2695u, u_input.e.x), abs(39865u)) & vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(63012u, 0u, 18817u), u_input.a.wxx), 23493u, ~41657u, abs(0u)), u_input.a), select(!(any(vec4<bool>(true, false, true, true)) && true), arg_1 <= _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x * -1029f)), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(max(arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -747f, arg_1))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_1, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, var_0.x, 920f), vec3<f32>(arg_1, var_0.x, 694f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -349f, 483f) - vec3<f32>(arg_1, arg_1, arg_1))))), all(vec3<bool>(false, true, arg_0.x < u_input.c.x)))), Struct_2(vec2<i32>(1i, min(abs(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(24816i, 0i, -77552i), vec3<i32>(0i, 35278i, 12593i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1223f, _wgslsmith_f_op_f32(select(arg_1, -2206f, true)), -818f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -846f, -932f), vec3<f32>(-870f, -701f, arg_1)))), vec2<u32>(1u, u_input.b.x), any(vec3<bool>(false, all(vec3<bool>(true, true, true)), false))));
    var var_2 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.d.a.x, _wgslsmith_div_i32(firstTrailingBit(var_1.d.a.x), -2147483647i)), ~firstTrailingBit(select(var_1.d.a, vec2<i32>(-71638i, var_1.d.a.x), false))), var_1.d.b, _wgslsmith_clamp_vec2_u32(~(~u_input.a.xx >> (_wgslsmith_div_vec2_u32(arg_0, arg_0) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x << (u_input.e.x % 32u), ~0u), abs(var_1.a.wy)), _wgslsmith_mult_vec2_u32(vec2<u32>(65962u, 0u ^ u_input.b.x), ~(~vec2<u32>(8357u, 64644u)))), !var_1.b);
    let var_3 = Struct_5(200f, Struct_1(vec2<i32>((i32(-1i) * -6024i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(86147u, 11317u, 2962u), vec3<u32>(66359u, u_input.e.x, 77834u)) % 32u), var_2.a.x), var_2.d));
    return Struct_2(var_2.a, vec3<f32>(-1430f, _wgslsmith_f_op_f32(arg_1 * var_0.x), -1702f), var_2.c, any(vec4<bool>(any(vec3<bool>(false, var_1.d.d, var_2.d)), var_2.d, !all(vec4<bool>(false, true, var_2.d, var_3.b.b)), !(false | var_1.d.d))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec4<u32>, 9>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return Struct_2(-vec2<i32>(arg_0.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 2147483647i, arg_0.a.x), vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)), arg_0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, 188f, arg_0.b.x))), all(vec4<bool>(arg_0.d, arg_0.d, true, arg_0.d))))), vec2<u32>(_wgslsmith_mod_u32(abs(1u), ~(38711u | arg_0.c.x)), ~_wgslsmith_sub_u32(61863u, 1u)), -_wgslsmith_dot_vec2_i32(arg_0.a >> (vec2<u32>(13631u, arg_0.c.x) % vec2<u32>(32u)), ~arg_0.a) >= ~select(~(-21600i), -10061i, arg_0.d));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.b.yx);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-374f))) - _wgslsmith_f_op_f32(f32(-1f) * -821f)));
    let var_1 = func_5(arg_3).c.x;
    let var_2 = !(!(!(arg_3.d & !arg_3.d)));
    let var_3 = firstTrailingBit(~(-(_wgslsmith_clamp_i32(-87355i, 2147483647i, arg_3.a.x) >> (u_input.d % 32u))));
    return Struct_2(abs((vec2<i32>(-1i) * -vec2<i32>(47389i, 1i)) & arg_1.a), _wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_f_op_vec3_f32(abs(arg_3.b))), vec2<u32>(~23480u, abs((var_1 << (arg_1.c.x % 32u)) >> (select(u_input.e.x, 0u, false) % 32u))), abs(var_1) > 1u);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = func_6(-(_wgslsmith_mod_i32(23910i, -1i) >> ((u_input.d >> (u_input.c.x % 32u)) % 32u)) << (~48709u % 32u), func_5(func_4(_wgslsmith_mult_vec2_u32(u_input.a.wx, ~vec2<u32>(u_input.d, 48260u)), _wgslsmith_f_op_f32(func_2()))), select(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -566f) < _wgslsmith_f_op_f32(-1080f - arg_0.x)), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)), Struct_2(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-54782i, 2147483647i, 43925i)), ~_wgslsmith_sub_i32(0i, 0i)), _wgslsmith_f_op_vec3_f32(-arg_0.wxz), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d, u_input.e.x), ~u_input.c.x), _wgslsmith_dot_vec4_u32(select(global0[_wgslsmith_index_u32(u_input.e.x, 9u)], vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), true), ~u_input.a)), true));
    global0 = array<vec4<u32>, 9>();
    global0 = array<vec4<u32>, 9>();
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * var_0.b.x))), Struct_1(var_0.a, !var_0.d));
    var var_2 = !select(!(!(!vec3<bool>(var_1.b.b, false, var_1.b.b))), vec3<bool>(_wgslsmith_f_op_f32(-arg_0.x) >= var_1.a, true, all(!vec2<bool>(var_0.d, var_1.b.b))), true);
    return _wgslsmith_mult_u32(8180u, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.e.x);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1028f), min(vec2<i32>((25367i << (u_input.c.x % 32u)) >> (func_1(vec4<f32>(311f, -607f, -1000f, -1000f)) % 32u), i32(-1i) * -1i), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(1i, 39398i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-33597i, -25273i) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - var_1.a)) + _wgslsmith_f_op_f32(select(-1229f, -245f, true))), var_1.b);
    let var_3 = Struct_3(637f, var_2.b);
    var_0 = _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_add_u32(~90595u, 32544u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(77959u, 11092u, u_input.d, u_input.d) << (vec4<u32>(~59876u, _wgslsmith_div_u32(4294967295u, 1u), u_input.e.x, u_input.b.x << (10027u % 32u)) % vec4<u32>(32u))), var_3.a, func_4(func_6(var_3.b.x ^ 1i, func_6(var_3.b.x, Struct_2(vec2<i32>(var_3.b.x, var_1.b.x), vec3<f32>(-583f, -1666f, -1429f), u_input.a.ww, false), vec2<bool>(false, false), Struct_2(var_1.b, vec3<f32>(468f, -186f, 366f), vec2<u32>(u_input.c.x, 11421u), false)), vec2<bool>(true, true), func_4(u_input.b, var_1.a)).c, var_1.a).c.x | _wgslsmith_mult_u32(u_input.d, func_4(vec2<u32>(u_input.c.x, u_input.c.x), var_2.a).c.x), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~7250u, _wgslsmith_div_u32(111934u, 11222u), 59626u), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), vec3<u32>(u_input.a.x, 0u, u_input.b.x) ^ u_input.c)), u_input.a.x, ~func_6(firstLeadingBit(-20710i), Struct_2(vec2<i32>(var_1.b.x, var_2.b.x), vec3<f32>(var_2.a, var_1.a, 1000f), u_input.e, true), vec2<bool>(true, true), Struct_2(var_3.b, vec3<f32>(366f, -598f, var_2.a), vec2<u32>(u_input.d, 34349u), false)).c.x));
}

