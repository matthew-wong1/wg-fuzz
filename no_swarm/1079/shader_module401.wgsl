struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_2(Struct_1(4294967295u), vec2<u32>(4294967295u, 26035u), Struct_1(4294967295u)), Struct_2(Struct_1(37575u), vec2<u32>(4294967295u, 1u), Struct_1(60517u))), Struct_4(Struct_2(Struct_1(4294967295u), vec2<u32>(1u, 73713u), Struct_1(4294967295u)), Struct_2(Struct_1(46764u), vec2<u32>(61725u, 0u), Struct_1(0u))), Struct_4(Struct_2(Struct_1(14750u), vec2<u32>(48797u, 45169u), Struct_1(7792u)), Struct_2(Struct_1(11915u), vec2<u32>(21989u, 32035u), Struct_1(4294967295u))), Struct_4(Struct_2(Struct_1(0u), vec2<u32>(1u, 4294967295u), Struct_1(49239u)), Struct_2(Struct_1(14512u), vec2<u32>(39154u, 0u), Struct_1(4294967295u))), Struct_4(Struct_2(Struct_1(1u), vec2<u32>(106800u, 1u), Struct_1(97543u)), Struct_2(Struct_1(19879u), vec2<u32>(28472u, 30098u), Struct_1(0u))), Struct_4(Struct_2(Struct_1(19007u), vec2<u32>(4294967295u, 42325u), Struct_1(21044u)), Struct_2(Struct_1(1u), vec2<u32>(39373u, 0u), Struct_1(1u))), Struct_4(Struct_2(Struct_1(19197u), vec2<u32>(6362u, 4294967295u), Struct_1(4294967295u)), Struct_2(Struct_1(0u), vec2<u32>(0u, 0u), Struct_1(1u))), Struct_4(Struct_2(Struct_1(0u), vec2<u32>(6389u, 12948u), Struct_1(45211u)), Struct_2(Struct_1(19573u), vec2<u32>(4294967295u, 4294967295u), Struct_1(0u))), Struct_4(Struct_2(Struct_1(76427u), vec2<u32>(4294967295u, 27952u), Struct_1(4294967295u)), Struct_2(Struct_1(88709u), vec2<u32>(0u, 0u), Struct_1(4294967295u))), Struct_4(Struct_2(Struct_1(1u), vec2<u32>(40740u, 0u), Struct_1(9591u)), Struct_2(Struct_1(1u), vec2<u32>(16601u, 47403u), Struct_1(19531u))), Struct_4(Struct_2(Struct_1(4294967295u), vec2<u32>(9521u, 1660u), Struct_1(46173u)), Struct_2(Struct_1(17701u), vec2<u32>(99144u, 1u), Struct_1(32758u))), Struct_4(Struct_2(Struct_1(24412u), vec2<u32>(54106u, 0u), Struct_1(51157u)), Struct_2(Struct_1(1u), vec2<u32>(0u, 40101u), Struct_1(1u))), Struct_4(Struct_2(Struct_1(6999u), vec2<u32>(0u, 61341u), Struct_1(0u)), Struct_2(Struct_1(0u), vec2<u32>(61929u, 1u), Struct_1(4294967295u))), Struct_4(Struct_2(Struct_1(12904u), vec2<u32>(0u, 0u), Struct_1(1u)), Struct_2(Struct_1(4294967295u), vec2<u32>(4294967295u, 1u), Struct_1(44062u))), Struct_4(Struct_2(Struct_1(56486u), vec2<u32>(40179u, 4294967295u), Struct_1(14088u)), Struct_2(Struct_1(0u), vec2<u32>(0u, 61797u), Struct_1(48878u))), Struct_4(Struct_2(Struct_1(0u), vec2<u32>(24509u, 47718u), Struct_1(4294967295u)), Struct_2(Struct_1(25056u), vec2<u32>(14229u, 32095u), Struct_1(81411u))), Struct_4(Struct_2(Struct_1(77079u), vec2<u32>(51972u, 1u), Struct_1(1u)), Struct_2(Struct_1(0u), vec2<u32>(0u, 13225u), Struct_1(23670u))), Struct_4(Struct_2(Struct_1(19348u), vec2<u32>(23081u, 52938u), Struct_1(27693u)), Struct_2(Struct_1(1u), vec2<u32>(63098u, 4294967295u), Struct_1(23445u))), Struct_4(Struct_2(Struct_1(4294967295u), vec2<u32>(98u, 4294967295u), Struct_1(9357u)), Struct_2(Struct_1(1u), vec2<u32>(1u, 0u), Struct_1(4294967295u))), Struct_4(Struct_2(Struct_1(0u), vec2<u32>(16642u, 0u), Struct_1(1u)), Struct_2(Struct_1(0u), vec2<u32>(4294967295u, 1u), Struct_1(1u))), Struct_4(Struct_2(Struct_1(44035u), vec2<u32>(4294967295u, 27711u), Struct_1(4294967295u)), Struct_2(Struct_1(79057u), vec2<u32>(4294967295u, 1372u), Struct_1(4294967295u))), Struct_4(Struct_2(Struct_1(22026u), vec2<u32>(1u, 1u), Struct_1(36687u)), Struct_2(Struct_1(22273u), vec2<u32>(19064u, 22958u), Struct_1(1u))), Struct_4(Struct_2(Struct_1(51058u), vec2<u32>(0u, 0u), Struct_1(0u)), Struct_2(Struct_1(4294967295u), vec2<u32>(3909u, 1u), Struct_1(1u))), Struct_4(Struct_2(Struct_1(93073u), vec2<u32>(1u, 37010u), Struct_1(4294967295u)), Struct_2(Struct_1(32738u), vec2<u32>(52410u, 0u), Struct_1(6503u))), Struct_4(Struct_2(Struct_1(33462u), vec2<u32>(28692u, 1u), Struct_1(53732u)), Struct_2(Struct_1(1u), vec2<u32>(1u, 48434u), Struct_1(83421u))), Struct_4(Struct_2(Struct_1(1u), vec2<u32>(4294967295u, 1u), Struct_1(70860u)), Struct_2(Struct_1(12630u), vec2<u32>(0u, 57320u), Struct_1(4294967295u))), Struct_4(Struct_2(Struct_1(34931u), vec2<u32>(8686u, 0u), Struct_1(1u)), Struct_2(Struct_1(73678u), vec2<u32>(1u, 4294967295u), Struct_1(43812u))));

var<private> global1: array<Struct_1, 13>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    global1 = array<Struct_1, 13>();
    var var_0 = arg_0.a;
    let var_1 = arg_1.x;
    global0 = array<Struct_4, 27>();
    var var_2 = 4294967295u;
    return !(_wgslsmith_sub_i32(-17780i >> (~var_0.a % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.b, 1i, 34980i), vec4<i32>(26777i, u_input.b, -46405i, u_input.b)), select(vec4<i32>(u_input.a, -28427i, 1i, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b), false))) == (-_wgslsmith_div_i32(u_input.a, -2147483647i) ^ _wgslsmith_mod_i32(~(-6164i), abs(u_input.a))));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    let var_0 = vec4<bool>(false, arg_0.a.b, !(!all(vec4<bool>(true, arg_2.x, arg_0.a.b, arg_0.a.b)) | arg_0.a.b), !any(!(!vec4<bool>(true, arg_1, true, true))));
    let var_1 = false;
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a.a.c.a, reverseBits(~arg_0.b.b.a.a)), reverseBits(countOneBits(arg_0.b.a.b))), vec2<u32>(arg_0.b.a.b.x, ~(~arg_0.b.b.a.a) >> (1u % 32u)));
    return arg_3;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2588f, 313f))), _wgslsmith_f_op_f32(sign(703f)))) - -472f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-462f, -143f)))));
    global0 = array<Struct_4, 27>();
    return Struct_2(global1[_wgslsmith_index_u32(min(func_4(Struct_5(Struct_3(Struct_2(Struct_1(6425u), vec2<u32>(5783u, 41071u), Struct_1(0u)), false, -20438i), global0[_wgslsmith_index_u32(~4294967295u, 27u)]), func_3(Struct_2(Struct_1(0u), vec2<u32>(4294967295u, 112042u), Struct_1(4294967295u)), ~vec3<u32>(0u, 65155u, 58795u)), vec3<bool>(true, true, true), 1u), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(1u, 16278u), _wgslsmith_dot_vec2_u32(vec2<u32>(20359u, 4294967295u), vec2<u32>(1u, 1u)))), 13u)], vec2<u32>(1u, abs(_wgslsmith_mod_u32(~4294967295u, 1396u))), Struct_1(1u));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_1 = ~(0u & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x ^ 4294967295u, _wgslsmith_clamp_u32(arg_0.c.a, 4294967295u, 3707u), firstLeadingBit(4294967295u), 31696u), abs(~vec4<u32>(0u, 51787u, arg_0.b.x, 22491u))));
    global1 = array<Struct_1, 13>();
    var_0 = 1000f;
    global0 = array<Struct_4, 27>();
    return select(true, !all(vec3<bool>(false || arg_1, 0u > var_1, all(vec3<bool>(arg_1, true, arg_1)))), all(vec2<bool>(true, true)));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<u32>) -> StorageBuffer {
    let var_0 = false;
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(311f, -1000f, -923f, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, -778f, 1227f, -526f) - vec4<f32>(-1174f, -682f, 700f, -1480f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1026f), 1794f, _wgslsmith_f_op_f32(-286f * 1000f), 789f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2048f, 309f, 880f, 1545f) + vec4<f32>(421f, 165f, 1665f, 451f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 733f, 488f, -889f)), vec4<bool>(var_0, true, arg_1.b, var_0))), vec4<f32>(_wgslsmith_div_f32(-254f, -494f), -695f, -1413f, _wgslsmith_f_op_f32(round(235f))), arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(655f, -345f, -1037f, -182f), vec4<f32>(1506f, -932f, -1000f, 422f))) - vec4<f32>(-1333f, _wgslsmith_f_op_f32(step(193f, -1000f)), _wgslsmith_f_op_f32(abs(-477f)), _wgslsmith_f_op_f32(-764f * -509f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1048f), _wgslsmith_f_op_f32(f32(-1f) * -1200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2295f - -1358f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1330f, -1000f, true)) + _wgslsmith_f_op_f32(-1000f - 1018f)))), arg_1.b));
    var var_2 = select(arg_0, select(arg_0, !select(vec4<bool>(arg_0.x, var_0, var_0, arg_1.b), select(arg_0, arg_0, true), arg_0), var_1.x <= var_1.x), !select(select(!vec4<bool>(true, true, false, arg_0.x), arg_0, all(arg_0.zw)), select(select(arg_0, vec4<bool>(arg_1.b, false, true, true), vec4<bool>(true, var_0, false, arg_0.x)), select(arg_0, vec4<bool>(true, arg_1.b, var_0, true), vec4<bool>(true, arg_0.x, true, false)), vec4<bool>(arg_0.x, var_0, arg_1.b, false)), !arg_0));
    return StorageBuffer(abs(_wgslsmith_mult_vec3_u32(arg_3.yzw, ~_wgslsmith_div_vec3_u32(vec3<u32>(2542u, 4294967295u, arg_3.x), vec3<u32>(arg_3.x, arg_1.a.b.x, 5468u)))), vec4<u32>(~63264u | ~(~arg_3.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_3, arg_3 << (vec4<u32>(arg_1.a.c.a, 62578u, arg_3.x, arg_1.a.b.x) % vec4<u32>(32u)))), _wgslsmith_add_u32(firstLeadingBit(~arg_1.a.a.a), ~32275u), _wgslsmith_add_u32(_wgslsmith_div_u32(arg_1.a.b.x, 1u), 5402u)), ~(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(5320u, 1u, 4294967295u, arg_1.a.c.a), vec4<u32>(33613u, arg_1.a.c.a, 1u, 0u)), ~arg_3)), u_input.a);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> StorageBuffer {
    let var_0 = arg_1;
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let var_1 = 36066i;
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 316f) * _wgslsmith_f_op_f32(arg_0 - arg_1)) + _wgslsmith_f_op_f32(-502f - _wgslsmith_div_f32(var_0, arg_0))) == _wgslsmith_f_op_f32(trunc(var_0)), true);
    return func_6(select(vec4<bool>(true, !(!var_2.x), false, !any(vec2<bool>(var_2.x, true))), vec4<bool>(func_5(func_2(), !var_2.x, _wgslsmith_add_vec4_i32(vec4<i32>(var_1, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 11983i, var_1, var_1)), i32(-1i) * -66020i), var_2.x, var_2.x, !var_2.x & any(vec4<bool>(true, true, var_2.x, var_2.x))), !any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), Struct_3(func_2(), var_2.x, arg_2.x), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1, arg_2.x), min(2147483647i, var_1)), arg_2.x, reverseBits(_wgslsmith_add_i32(45881i, -2147483647i)), 1i ^ _wgslsmith_mult_i32(-12028i, u_input.b)) << ((vec4<u32>(abs(42443u), 1u, 4294967295u, ~1u) | firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u)), ~select(~vec4<u32>(4294967295u, 32475u, 4294967295u, 66261u), firstLeadingBit(vec4<u32>(0u, 34662u, 1u, 98879u)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(var_2.x, true, var_2.x, var_2.x))) & vec4<u32>(~1u, 1u, 1u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec2<i32>(i32(-1i) * -countOneBits(~u_input.a), reverseBits(28556i));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f), -226f)) - _wgslsmith_f_op_f32(f32(-1f) * -851f)), 1065f, vec3<i32>(-1i) * -(~countOneBits(vec3<i32>(2147483647i, 1i, var_1.x))));
}

