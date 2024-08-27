struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(46677u, vec4<bool>(false, true, false, false), false), Struct_3(4294967295u, vec4<bool>(false, false, true, true), true), Struct_3(0u, vec4<bool>(false, true, false, false), false), Struct_3(0u, vec4<bool>(false, true, true, true), false), Struct_3(1813u, vec4<bool>(true, false, false, true), true), Struct_3(1u, vec4<bool>(false, true, false, false), false), Struct_3(4171u, vec4<bool>(false, false, true, true), false), Struct_3(0u, vec4<bool>(true, true, false, false), false), Struct_3(4294967295u, vec4<bool>(true, true, true, false), true), Struct_3(65728u, vec4<bool>(false, true, true, true), false), Struct_3(34084u, vec4<bool>(true, false, false, false), false), Struct_3(0u, vec4<bool>(true, true, false, false), true), Struct_3(1u, vec4<bool>(false, true, true, true), false), Struct_3(55778u, vec4<bool>(true, false, false, false), false), Struct_3(1u, vec4<bool>(false, false, false, false), false), Struct_3(4294967295u, vec4<bool>(true, true, false, false), true), Struct_3(34508u, vec4<bool>(true, true, false, true), false), Struct_3(85137u, vec4<bool>(true, true, true, false), false), Struct_3(4294967295u, vec4<bool>(false, false, false, false), true));

var<private> global1: array<Struct_2, 17>;

var<private> global2: i32 = 0i;

var<private> global3: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(4294967295u, 7066u, 1u), vec3<u32>(20611u, 4294967295u, 1u), vec3<u32>(23891u, 67850u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 24853u), vec3<u32>(28929u, 8717u, 0u), vec3<u32>(4615u, 4294967295u, 53813u), vec3<u32>(0u, 12902u, 1u), vec3<u32>(0u, 14945u, 4294967295u), vec3<u32>(1u, 100442u, 1u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>) -> f32 {
    global1 = array<Struct_2, 17>();
    var var_0 = Struct_4(-2147483647i | (arg_0.b.a >> (39063u % 32u)), arg_0.b.b, arg_0.b.d.ywx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0.b.d))));
    var var_1 = arg_0.c.c.yzy;
    var_1 = vec3<i32>(-_wgslsmith_mult_i32(var_0.a, _wgslsmith_dot_vec4_i32(abs(arg_0.c.c), ~arg_0.c.c)), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, min(var_0.a, -2147483647i)), 1i), -firstLeadingBit(var_0.a));
    let var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1825f), var_0.c.x))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c.b))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1646f);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f - -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(686f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-510f * 889f), _wgslsmith_f_op_f32(func_3(Struct_5(u_input.a.x, Struct_4(0i, Struct_3(1u, vec4<bool>(false, true, false, false), false), vec3<f32>(-1000f, 1019f, 719f), vec4<f32>(-287f, -1707f, -136f, -1193f)), Struct_2(u_input.a, -663f, vec4<i32>(2147483647i, 15427i, 2147483647i, -2147483647i))), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 20021u)))))), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), any(vec3<bool>(true, false, true))), !any(vec3<bool>(true, true, true))), vec3<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))), true, true), all(vec4<bool>(false, true, true, true)) & false));
    var var_1 = !(!all(var_0.b));
    let var_2 = Struct_3(u_input.a.x, vec4<bool>(all(!vec2<bool>(var_0.b.x, var_0.b.x)), true, !var_0.b.x || true, false), any(vec2<bool>(true | !var_0.b.x, var_0.b.x)));
    let var_3 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 0i), select(vec2<i32>(20443i, 0i), vec2<i32>(-17016i, 42299i), var_2.b.x) >> (u_input.b % vec2<u32>(32u))) & ~_wgslsmith_sub_vec2_i32(-abs(vec2<i32>(0i, 2147483647i)), abs(vec2<i32>(1i, 1i)));
    global2 = i32(-1i) * -2147483647i;
    return _wgslsmith_clamp_i32(var_3.x, -824i, -1i);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_5(23782u, Struct_4(firstLeadingBit(abs(~24106i)), Struct_3(~4294967295u, vec4<bool>(all(vec4<bool>(arg_1.x, true, arg_0.b.c, true)), arg_1.x, false, true), any(vec3<bool>(false, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec3_f32(-arg_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(abs(arg_0.c.x)), _wgslsmith_f_op_f32(1152f * arg_0.d.x), 773f))), global1[_wgslsmith_index_u32(~(~u_input.b.x) << (_wgslsmith_add_u32(arg_0.b.a, 52487u) % 32u), 17u)]);
    var var_1 = var_0.b.b.b;
    var var_2 = max(~var_0.c.c, vec4<i32>(-9196i, _wgslsmith_sub_i32(firstLeadingBit(-var_0.c.c.x), firstLeadingBit(~1i)), var_0.b.a, var_0.c.c.x));
    return var_0.b.b;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: i32) -> vec4<bool> {
    global2 = abs(_wgslsmith_mult_i32(~11429i, -54704i));
    let var_0 = func_4(Struct_4(func_2(), Struct_3(_wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, u_input.b.x) & u_input.a.x, arg_1, arg_1.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1646f, 159f, -304f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(610f, 1001f, 1192f) * vec3<f32>(-1701f, 1000f, -1000f))), vec3<f32>(2131f, _wgslsmith_f_op_f32(349f * 1000f), -1640f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-959f, 738f, 385f, 857f), vec4<f32>(1814f, -1325f, 264f, -1261f))), vec4<f32>(-1006f, -233f, -722f, 343f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1837f, 264f, -238f, -1088f) + vec4<f32>(-1667f, -1011f, -256f, -487f))))), select(arg_1, !(!arg_1), select(vec4<bool>(arg_0, true, true, true), select(arg_1, !arg_1, arg_1.x), !(!vec4<bool>(arg_1.x, arg_1.x, false, true)))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~u_input.b.x, countOneBits(abs(51564u)), ~u_input.a.x), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 1u), vec4<u32>(0u, u_input.a.x, 30582u, 0u)), abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.b.x)))));
    let var_1 = vec3<u32>(8514u, 4294967295u & (max(~4294967295u, 72542u) << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(46721u, 4294967295u), u_input.b), _wgslsmith_div_vec2_u32(u_input.a.zy, u_input.a.xx)) % 32u)), var_0.a);
    var var_2 = _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_clamp_i32(arg_2, _wgslsmith_mult_i32(~arg_2, -arg_2), -10830i)), 49365i);
    global0 = array<Struct_3, 19>();
    return vec4<bool>(arg_1.x, true, true, true | arg_0);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32) -> vec3<bool> {
    global3 = array<vec3<u32>, 10>();
    return vec3<bool>(((arg_2 > arg_2) | any(!vec4<bool>(arg_0.x, arg_1.c, false, false))) & any(vec2<bool>(all(vec4<bool>(arg_0.x, true, true, false)), true)), arg_0.x, any(arg_1.b));
}

fn func_6(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_add_vec3_u32(~u_input.a, ~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 1u))) >> (~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, arg_2.x, u_input.b.x), abs(global3[_wgslsmith_index_u32(29740u, 10u)]), vec3<u32>(1u, u_input.b.x, u_input.b.x))) % vec3<u32>(32u));
    global2 = -2147483647i;
    global3 = array<vec3<u32>, 10>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1336f, 768f, arg_1, -127f)), vec4<f32>(293f, -828f, -320f, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_1, arg_1, -1513f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1336f, -1519f, 782f) * vec4<f32>(426f, 211f, -1494f, arg_1))))))));
    global3 = array<vec3<u32>, 10>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(177f)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_6(!func_5(func_1(true, vec4<bool>(true, true, false, false), 1i), func_4(Struct_4(-1i, Struct_3(u_input.a.x, vec4<bool>(true, false, false, false), true), vec3<f32>(159f, -1329f, -656f), vec4<f32>(689f, 833f, -495f, 215f)), func_1(false, vec4<bool>(true, false, false, true), -2147483647i), u_input.b.x), _wgslsmith_div_i32(1i, 36076i)), -458f, firstTrailingBit(firstLeadingBit(vec4<u32>(~83231u, firstLeadingBit(4294967295u), 2541u, min(u_input.b.x, u_input.b.x))))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2339f) - 950f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f) - _wgslsmith_f_op_f32(func_3(Struct_5(u_input.a.x, Struct_4(-16160i, Struct_3(69050u, vec4<bool>(false, true, true, true), true), vec3<f32>(-1410f, -837f, -258f), vec4<f32>(-670f, -858f, -256f, -1051f)), Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], 370f, vec4<i32>(0i, -1i, 2147483647i, 9753i))), vec4<u32>(u_input.b.x, 50172u, u_input.a.x, 13545u)))) - _wgslsmith_f_op_f32(1471f + -781f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1110f))), true));
    global1 = array<Struct_2, 17>();
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>((12912i << (0u % 32u)) ^ _wgslsmith_mult_i32(func_2(), 0i), -firstLeadingBit(25788i), _wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -12617i, 1i, -44649i), vec4<i32>(1i, 0i, -41567i, 5744i)), 2147483647i), -(16624i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-29203i, 75725i, -1i), vec3<i32>(34445i, 14810i, 0i)))), reverseBits(min(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), countOneBits(vec4<i32>(-66239i, 26911i, 77752i, -2147483647i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-990f, _wgslsmith_f_op_f32(f32(-1f) * -1423f)), vec2<f32>(716f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(606f, -429f))) - _wgslsmith_f_op_f32(abs(-230f))))));
    let var_3 = vec3<bool>(-var_1.x >= _wgslsmith_div_i32(firstLeadingBit(i32(-1i) * -2147483647i), 1i), _wgslsmith_mod_u32(_wgslsmith_div_u32(~0u, 4294967295u | u_input.b.x), 59447u) < 0u, !(_wgslsmith_f_op_f32(470f + -1000f) == _wgslsmith_f_op_f32(var_2.x * -1707f)));
    var var_4 = var_3.x;
    let var_5 = Struct_5(~9140u ^ _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(u_input.b.x, u_input.a.x)), Struct_4(var_1.x, func_4(Struct_4(select(var_1.x, 0i, var_3.x), func_4(Struct_4(var_1.x, Struct_3(22224u, vec4<bool>(false, false, var_3.x, var_3.x), var_3.x), vec3<f32>(1230f, 1293f, 334f), vec4<f32>(var_2.x, -1000f, var_2.x, 393f)), vec4<bool>(var_3.x, var_3.x, false, false), u_input.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<f32>(var_2.x, 1657f, var_2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-804f, 996f, var_2.x, var_2.x), vec4<f32>(1575f, var_2.x, 860f, var_2.x))), !(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)), abs(0u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(339f, 2213f, var_2.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(517f, 1000f, var_2.x)), vec3<f32>(1000f, -435f, var_2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -664f, 134f, 342f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_2.x, var_2.x, 576f), vec4<f32>(-982f, var_2.x, var_2.x, var_2.x), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, -231f) - vec4<f32>(826f, 176f, 1803f, var_2.x))))), Struct_2(_wgslsmith_add_vec3_u32(u_input.a, ~abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, var_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x))), select(~vec4<i32>(var_1.x, 1i, var_1.x, -50679i), min(-vec4<i32>(-1i, var_1.x, var_1.x, var_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 1i, var_1.x, -1i), vec4<i32>(-2147483647i, 6944i, -1i, var_1.x))), vec4<bool>(false, var_3.x & false, var_3.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x);
}

