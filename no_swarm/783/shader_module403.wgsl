struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(73644u, vec4<i32>(-32122i, 1i, -11986i, 1i), 1372f, vec2<f32>(-2599f, 1114f)), Struct_2(54064u, vec4<i32>(-1i, 2147483647i, -34460i, 9006i), 503f, vec2<f32>(-2021f, 693f)), Struct_2(113260u, vec4<i32>(i32(-2147483648), 8041i, 653i, -10052i), -2083f, vec2<f32>(527f, -202f)), Struct_2(34946u, vec4<i32>(-11944i, -49058i, 10309i, 27629i), 1046f, vec2<f32>(-693f, 485f)), Struct_2(0u, vec4<i32>(i32(-2147483648), 8198i, -1i, 18545i), 2116f, vec2<f32>(423f, -857f)), Struct_2(46566u, vec4<i32>(-1i, -67972i, 2147483647i, 39278i), -568f, vec2<f32>(-1619f, 490f)), Struct_2(0u, vec4<i32>(14310i, 2147483647i, 0i, 2147483647i), 642f, vec2<f32>(-1357f, 995f)), Struct_2(21394u, vec4<i32>(1i, -11806i, -18896i, -1i), -303f, vec2<f32>(680f, 265f)), Struct_2(31137u, vec4<i32>(29006i, 2147483647i, -16408i, -27988i), -113f, vec2<f32>(578f, 558f)), Struct_2(4294967295u, vec4<i32>(-10846i, 29268i, 0i, 16360i), 1198f, vec2<f32>(-720f, -179f)), Struct_2(1u, vec4<i32>(46967i, 26298i, -14300i, i32(-2147483648)), 218f, vec2<f32>(1628f, 848f)), Struct_2(0u, vec4<i32>(22473i, -1i, i32(-2147483648), 22738i), -190f, vec2<f32>(1278f, -771f)), Struct_2(4294967295u, vec4<i32>(-1i, 2147483647i, -9036i, -34861i), 1774f, vec2<f32>(540f, 543f)), Struct_2(1u, vec4<i32>(1i, -9107i, 25022i, -24130i), 1000f, vec2<f32>(-242f, 429f)), Struct_2(4294967295u, vec4<i32>(-16055i, 42318i, i32(-2147483648), 1i), 1073f, vec2<f32>(1000f, 891f)), Struct_2(0u, vec4<i32>(12565i, -24816i, 88821i, -27625i), -843f, vec2<f32>(-1217f, 447f)), Struct_2(0u, vec4<i32>(1i, -1i, 1211i, -1i), -158f, vec2<f32>(650f, 191f)), Struct_2(4294967295u, vec4<i32>(-23699i, 36808i, -41266i, -1i), 710f, vec2<f32>(397f, 461f)), Struct_2(4294967295u, vec4<i32>(i32(-2147483648), i32(-2147483648), -15311i, i32(-2147483648)), 1792f, vec2<f32>(1624f, 509f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<f32> {
    var var_0 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))));
    global0 = array<Struct_2, 19>();
    var var_1 = select(~(~firstLeadingBit(~u_input.e)), 33570u, true | any(vec3<bool>(true, true, true)));
    let var_2 = abs(~min(abs(vec4<u32>(u_input.e, 8376u, 9532u, u_input.e)), firstLeadingBit(vec4<u32>(u_input.c, u_input.d, 18413u, 0u))));
    var var_3 = Struct_2(0u, firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-2147483647i, 2147483647i, -35663i, u_input.b)), vec4<i32>(-2147483647i, 2147483647i, u_input.b, 8868i) << (vec4<u32>(24891u, u_input.d, 17000u, 4294967295u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2010f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(183f)), 690f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(825f)) + _wgslsmith_f_op_f32(min(-722f, 774f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(577f, 227f)) - _wgslsmith_f_op_f32(f32(-1f) * -2044f))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d.x, -864f, 710f) + vec3<f32>(1423f, -1000f, var_3.d.x)), _wgslsmith_div_vec3_f32(vec3<f32>(1044f, -1136f, -135f), vec3<f32>(1494f, -699f, -1342f)), vec3<bool>(true, false, false))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -829f), var_3.c, var_3.c))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, var_3.d.x, var_3.d.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d.x, 981f, var_3.c)) + vec3<f32>(var_3.c, 715f, -1415f)), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = ~arg_3.ww;
    var var_1 = arg_2.c;
    var var_2 = max(vec2<i32>(_wgslsmith_mod_i32(~max(-8134i, 39415i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-6665i, u_input.b, arg_2.b)), vec3<i32>(-29564i, u_input.b, 62245i))), ~(-arg_2.b)), vec2<i32>(u_input.b, arg_2.b >> (0u % 32u)));
    let var_3 = Struct_2(_wgslsmith_add_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), arg_3.wx), 4294967295u), var_0.x), vec4<i32>(~(-_wgslsmith_mod_i32(arg_2.b, var_2.x)), arg_2.b >> (abs(1u) % 32u), var_2.x, min(abs(1i), -24162i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3()).zy + _wgslsmith_f_op_vec2_f32(floor(arg_1.xz))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1224f, -1000f) * vec2<f32>(arg_1.x, arg_1.x))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_1, vec3<f32>(arg_1.x, -880f, 1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -208f, arg_2.d.a.x), var_1.a))))), vec2<bool>(true, !(!(arg_0 | arg_2.d.b.x))));
    return arg_3;
}

fn func_2() -> vec2<bool> {
    global0 = array<Struct_2, 19>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_4(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1013f, -414f, -261f), vec3<f32>(783f, 200f, -1000f), false))), Struct_3(vec2<bool>(true, true), -u_input.b, Struct_1(vec3<f32>(-467f, 615f, -1200f), vec2<bool>(false, false)), Struct_1(vec3<f32>(-1000f, 2230f, 1264f), vec2<bool>(true, false))), select(~vec4<u32>(71816u, u_input.c, u_input.a, 118127u), vec4<u32>(1u, u_input.c, 27659u, 21225u), vec4<bool>(true, true, true, true))) | vec4<u32>(_wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(u_input.d, u_input.d)), 0u, func_4(true, vec3<f32>(-602f, -233f, -1051f), Struct_3(vec2<bool>(true, false), u_input.b, Struct_1(vec3<f32>(168f, 950f, 526f), vec2<bool>(false, false)), Struct_1(vec3<f32>(163f, 179f, 1000f), vec2<bool>(false, true))), ~vec4<u32>(4294967295u, u_input.d, 1u, u_input.a)).x, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(1u << (1u % 32u), ~u_input.a, 1u, func_4(true, vec3<f32>(-986f, 1028f, -984f), Struct_3(vec2<bool>(true, true), -51113i, Struct_1(vec3<f32>(1597f, -2910f, 754f), vec2<bool>(true, true)), Struct_1(vec3<f32>(306f, 498f, -1000f), vec2<bool>(false, false))), vec4<u32>(0u, 1u, 4294967295u, u_input.d)).x) >> (func_4(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1326f, -1000f, -229f) * vec3<f32>(1000f, -1517f, 403f)), Struct_3(vec2<bool>(false, true), 1i, Struct_1(vec3<f32>(1211f, -747f, 930f), vec2<bool>(false, true)), Struct_1(vec3<f32>(-164f, 1021f, 573f), vec2<bool>(false, true))), vec4<u32>(4294967295u, u_input.a, u_input.c, 118816u)) % vec4<u32>(32u)), vec4<u32>(~firstLeadingBit(u_input.a), 15801u, ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(26718u, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(u_input.e, 40343u, u_input.c, 1u))))), 19u)];
    global0 = array<Struct_2, 19>();
    var var_1 = !any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true))));
    var_1 = any(!select(vec3<bool>(true, false, select(true, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), true), false));
    return vec2<bool>((abs(u_input.b) | -countOneBits(-2147483647i)) <= var_0.b.x, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))));
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_2, 19>();
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-599f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-484f * -615f) - _wgslsmith_f_op_f32(f32(-1f) * -557f)), -514f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1498f, 820f, -1318f) - vec3<f32>(1000f, -163f, -340f)) + vec3<f32>(1694f, -1000f, 2782f)))), select(vec2<bool>(select(true, true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), func_2(), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), true), any(vec3<bool>(false, false, true)) != true)));
    var var_1 = -418f;
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    return _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(31141u, u_input.d) | firstTrailingBit(vec2<u32>(81771u, u_input.a))), ~func_4(true, _wgslsmith_f_op_vec3_f32(-var_0.a), Struct_3(var_0.b, 2147483647i, var_0, Struct_1(vec3<f32>(-240f, var_0.a.x, 695f), var_0.b)), select(vec4<u32>(4294967295u, 33727u, u_input.e, u_input.e), vec4<u32>(9377u, u_input.c, 1u, 1u), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))).yy) >> (func_4(var_0.a.x <= _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_vec3_f32(var_0.a - var_0.a), Struct_3(vec2<bool>(var_0.b.x, select(var_0.b.x, var_0.b.x, true)), -1i, Struct_1(vec3<f32>(var_0.a.x, -810f, var_0.a.x), select(vec2<bool>(var_0.b.x, true), var_0.b, vec2<bool>(var_0.b.x, false))), Struct_1(var_0.a, !vec2<bool>(var_0.b.x, false))), min(~reverseBits(vec4<u32>(u_input.c, 77695u, 28713u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.a, 0u), select(vec4<u32>(u_input.c, 18127u, u_input.c, u_input.d), vec4<u32>(1u, 0u, u_input.c, 1u), true)))).xz % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec2<u32>(~(~u_input.d), _wgslsmith_add_u32(min(48047u, u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.e, 33013u), vec4<u32>(4294967295u, u_input.d, 11786u, 4294967295u)))) >> (abs(_wgslsmith_mod_vec2_u32(vec2<u32>(75176u, 97182u) >> (vec2<u32>(u_input.d, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, 68496u))) % vec2<u32>(32u)));
    var_0 = ~(~(~(~vec2<u32>(u_input.a, 4294967295u)))) | ~countOneBits(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d, var_0.x), _wgslsmith_add_vec2_u32(vec2<u32>(15020u, u_input.c), vec2<u32>(69387u, 6620u))));
    var_0 = countOneBits(~_wgslsmith_sub_vec2_u32(min(func_1(), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(28964u, var_0.x))), vec2<u32>(20740u, 4294967295u)));
    global0 = array<Struct_2, 19>();
    var_0 = vec2<u32>(~(~(~5817u)), ~(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, var_0.x), u_input.a ^ 4294967295u) >> (var_0.x % 32u)));
    let var_1 = global0[_wgslsmith_index_u32(12535u, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(23254u, _wgslsmith_add_u32(u_input.a, 53308u), var_1.a)), select(_wgslsmith_sub_vec3_i32(select(var_1.b.zww, vec3<i32>(var_1.b.x, 75226i, 2147483647i), vec3<bool>(false, false, true)), min(vec3<i32>(-1i, var_1.b.x, 2147483647i), var_1.b.zxx)) & var_1.b.zzx, -min(~var_1.b.wxx, var_1.b.yyx << (vec3<u32>(var_0.x, var_1.a, 4294967295u) % vec3<u32>(32u))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(abs(var_1.c)), vec4<i32>(firstLeadingBit(-1i & u_input.b), reverseBits(3326i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, var_1.b.x, 0i, 7671i), vec4<i32>(-8039i, var_1.b.x, -18632i, 37311i)), u_input.b, u_input.b >> (var_1.a % 32u)), var_1.b.x), func_1().x);
}

