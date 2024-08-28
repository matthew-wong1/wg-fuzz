struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(45217u, 1u), Struct_1(4294967295u, 0u), Struct_1(22603u, 1u), Struct_1(77375u, 65165u), Struct_1(0u, 0u), Struct_1(47215u, 4294967295u), Struct_1(0u, 4294967295u), Struct_1(91295u, 2428u), Struct_1(3089u, 42130u), Struct_1(56974u, 16287u), Struct_1(74844u, 12939u), Struct_1(0u, 2341u), Struct_1(4294967295u, 48u), Struct_1(4294967295u, 23270u), Struct_1(0u, 0u), Struct_1(45531u, 4294967295u), Struct_1(4294967295u, 15777u), Struct_1(18777u, 12252u), Struct_1(18347u, 25786u), Struct_1(17879u, 1u), Struct_1(4294967295u, 1u), Struct_1(9763u, 27986u), Struct_1(4294967295u, 37529u), Struct_1(1u, 4294967295u), Struct_1(1u, 27852u));

var<private> global2: f32;

var<private> global3: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(1000f, 118f), vec2<f32>(-233f, -1602f), vec2<f32>(-771f, 311f), vec2<f32>(-235f, 2067f), vec2<f32>(705f, -830f), vec2<f32>(-612f, 740f));

var<private> global4: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(Struct_1(0u, 34287u), true, vec4<f32>(-743f, -414f, 670f, 2256f), false), Struct_5(Struct_1(4267u, 55560u), false, vec4<f32>(-1260f, -1045f, 983f, 2433f), true), Struct_5(Struct_1(75134u, 1u), true, vec4<f32>(-1000f, 286f, -1621f, 2576f), true), Struct_5(Struct_1(1u, 13666u), false, vec4<f32>(745f, 863f, -258f, -622f), true), Struct_5(Struct_1(0u, 4624u), true, vec4<f32>(1000f, 218f, 744f, -139f), false), Struct_5(Struct_1(1u, 32899u), false, vec4<f32>(473f, 1460f, -2659f, -610f), true), Struct_5(Struct_1(1u, 21892u), true, vec4<f32>(-580f, -1000f, -922f, 433f), false), Struct_5(Struct_1(4294967295u, 1u), true, vec4<f32>(254f, -117f, 577f, -1367f), true), Struct_5(Struct_1(4294967295u, 44012u), true, vec4<f32>(3517f, -545f, -1224f, -992f), false), Struct_5(Struct_1(4294967295u, 4294967295u), true, vec4<f32>(-175f, 523f, -330f, 1000f), true), Struct_5(Struct_1(4294967295u, 35563u), false, vec4<f32>(440f, 595f, 197f, -204f), true), Struct_5(Struct_1(1u, 0u), false, vec4<f32>(785f, -545f, 694f, -2009f), false), Struct_5(Struct_1(4294967295u, 45303u), false, vec4<f32>(190f, 153f, -970f, -148f), true), Struct_5(Struct_1(4294967295u, 0u), true, vec4<f32>(1003f, 1173f, 608f, 366f), true), Struct_5(Struct_1(91655u, 24084u), false, vec4<f32>(-539f, 2171f, 997f, -2870f), false), Struct_5(Struct_1(1u, 19481u), true, vec4<f32>(543f, -1083f, 300f, -1886f), false), Struct_5(Struct_1(60791u, 1u), true, vec4<f32>(744f, -585f, 221f, 1807f), false), Struct_5(Struct_1(0u, 38290u), false, vec4<f32>(546f, -1449f, 355f, -291f), false), Struct_5(Struct_1(1u, 4294967295u), false, vec4<f32>(361f, -116f, 1626f, 660f), true), Struct_5(Struct_1(3594u, 0u), false, vec4<f32>(-829f, -2069f, -681f, 1807f), true), Struct_5(Struct_1(14911u, 48802u), false, vec4<f32>(-884f, -316f, -288f, -846f), true), Struct_5(Struct_1(20734u, 13771u), false, vec4<f32>(-860f, -293f, -662f, 1146f), false), Struct_5(Struct_1(0u, 30714u), false, vec4<f32>(-440f, -1258f, -141f, 210f), true), Struct_5(Struct_1(1u, 2397u), false, vec4<f32>(-963f, -734f, -985f, 676f), true), Struct_5(Struct_1(1u, 12969u), false, vec4<f32>(-668f, -763f, -1474f, 1000f), false), Struct_5(Struct_1(83133u, 24676u), true, vec4<f32>(-189f, -1000f, -812f, -493f), false), Struct_5(Struct_1(27769u, 1u), true, vec4<f32>(527f, 364f, 176f, 1347f), true), Struct_5(Struct_1(88534u, 15291u), true, vec4<f32>(445f, -101f, 1700f, 1536f), false), Struct_5(Struct_1(1u, 3395u), false, vec4<f32>(-1323f, -1000f, -351f, -675f), true), Struct_5(Struct_1(25944u, 1u), false, vec4<f32>(-1547f, 1312f, -1000f, -107f), true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = !all(!vec3<bool>(arg_0, true, false));
    global4 = array<Struct_5, 30>();
    global3 = array<vec2<f32>, 6>();
    var var_1 = 26750u;
    var var_2 = vec4<u32>(~u_input.c.x, 52037u, 27401u, max(arg_2.a, _wgslsmith_dot_vec3_u32(u_input.c | abs(vec3<u32>(arg_2.a, arg_2.a, u_input.b)), vec3<u32>(0u, 1u, 72060u))));
    return -492f;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - arg_1.c)) + _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(723f, -500f), arg_1.a)));
    global4 = array<Struct_5, 30>();
    let var_1 = _wgslsmith_f_op_f32(max(-579f, var_0));
    let var_2 = arg_0;
    let var_3 = arg_1;
    return arg_1.a;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, 1290f)))), 1f, func_4(Struct_4(1355u, 4294967295u, Struct_3(118f, vec2<u32>(114999u, u_input.c.x), vec4<f32>(759f, 1000f, -1054f, 451f), u_input.b), _wgslsmith_f_op_f32(func_3(true, vec4<bool>(true, false, true, false), global1[_wgslsmith_index_u32(54388u, 25u)]))), Struct_2(any(vec2<bool>(true, false)), -vec2<i32>(-1i, 9890i), -938f, Struct_1(46352u, 32587u))) || true));
    var var_1 = _wgslsmith_div_u32(~(~u_input.b), ~abs(u_input.b));
    let var_2 = u_input.b;
    global1 = array<Struct_1, 25>();
    let var_3 = true;
    return ~_wgslsmith_mult_i32(1i, 37056i << (_wgslsmith_div_u32(1u, reverseBits(var_2)) % 32u));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> vec4<f32> {
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_mult_i32(reverseBits(func_2()), arg_1.b.x);
    let var_2 = _wgslsmith_div_i32(~(_wgslsmith_div_i32(-2147483647i >> (arg_1.d.b % 32u), -1i) & -23453i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_1.b.x, countOneBits(arg_1.b.x)), abs(-1i) >> (~arg_1.d.b % 32u)), _wgslsmith_div_i32(-arg_1.b.x << ((1u >> (arg_0.c.d % 32u)) % 32u), _wgslsmith_mult_i32(arg_1.b.x, arg_1.b.x | arg_1.b.x))));
    global1 = array<Struct_1, 25>();
    var var_3 = -arg_1.b.x >> (firstTrailingBit(u_input.a.x) % 32u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(552f * arg_3) * -1339f), _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(select(630f, arg_1.c, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + -991f)), -791f))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = -503f;
    global4 = array<Struct_5, 30>();
    global3 = array<vec2<f32>, 6>();
    global3 = array<vec2<f32>, 6>();
    global1 = array<Struct_1, 25>();
    return arg_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 6>();
    var var_0 = Struct_5(Struct_1(1923u, u_input.a.x), -715f == _wgslsmith_f_op_f32(func_5(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~u_input.c.zx, _wgslsmith_f_op_vec4_f32(func_1(Struct_4(67282u, 4294967295u, Struct_3(669f, u_input.a.xz, vec4<f32>(1340f, -1097f, 480f, -1098f), 1u), 1055f), Struct_2(false, vec2<i32>(65989i, -18817i), -1000f, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), true, 1000f)), 5284u), u_input.a.x, u_input.c >> (u_input.a % vec3<u32>(32u)), Struct_2(all(vec3<bool>(true, false, false)), vec2<i32>(-38985i, -1i), _wgslsmith_f_op_f32(530f * -169f), Struct_1(22137u, 1u)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1656f)), -1893f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_4(0u, 1u, Struct_3(-1916f, vec2<u32>(u_input.c.x, u_input.c.x), vec4<f32>(737f, 1130f, 223f, -171f), u_input.b), 315f), Struct_2(true, vec2<i32>(18150i, -29314i), -1112f, Struct_1(5213u, 20006u)), false, 1224f)).x * _wgslsmith_f_op_f32(sign(203f)))), -745f, _wgslsmith_f_op_f32(func_3(!(1u > u_input.b), vec4<bool>(true, true, true, true), Struct_1(u_input.b ^ u_input.c.x, ~1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(reverseBits(7279u), 25u)])) + _wgslsmith_f_op_f32(max(265f, _wgslsmith_f_op_f32(687f - -1555f))))), true);
    var var_1 = vec4<bool>(var_0.d, -1985f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(false, !vec4<bool>(true, var_0.d, true, var_0.b), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-387f)))), func_4(Struct_4(u_input.a.x, u_input.a.x, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -705f), min(vec2<u32>(39079u, 0u), vec2<u32>(var_0.a.b, u_input.b)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -177f, var_0.c.x, var_0.c.x), var_0.c), ~33518u), _wgslsmith_f_op_f32(abs(797f))), Struct_2(var_0.d, vec2<i32>(-2147483647i, -2147483647i), var_0.c.x, var_0.a)), var_0.b);
    var_1 = vec4<bool>(true, all(!(!select(var_1.yyw, var_1.yxy, vec3<bool>(var_0.b, var_0.d, var_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-548f, _wgslsmith_f_op_f32(sign(var_0.c.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-142f)), _wgslsmith_f_op_f32(sign(-1000f)))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1361f), -1117f)), (true || (any(vec4<bool>(var_0.b, var_1.x, var_0.b, true)) || var_0.b)) && false);
    var_1 = vec4<bool>(select(true | var_0.b, var_1.x, (true | var_0.b) | (_wgslsmith_clamp_u32(u_input.b, 1u, 4294967295u) < (1u | u_input.b))), true, all(select(select(select(vec4<bool>(var_0.d, true, var_0.d, var_0.b), vec4<bool>(var_0.b, true, false, true), vec4<bool>(var_0.b, var_1.x, true, var_1.x)), !vec4<bool>(false, false, true, var_0.b), var_0.d | false), vec4<bool>(func_4(Struct_4(36815u, 13386u, Struct_3(var_0.c.x, u_input.c.yy, var_0.c, 18658u), -558f), Struct_2(true, vec2<i32>(-1i, 8867i), var_0.c.x, global1[_wgslsmith_index_u32(0u, 25u)])), true, true, false), false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(firstTrailingBit(11306i), _wgslsmith_mod_i32(65005i, -2147483647i), ~2147483647i), -19905i, reverseBits(1i), ~1i), vec4<i32>(_wgslsmith_mod_i32(205i, -44359i), 0i, abs(-23147i), select(17190i, 37819i, true)) | vec4<i32>(i32(-1i) * -17240i, countOneBits(-1i), ~0i, 1i), ~firstTrailingBit(-vec4<i32>(-1i, -2147483647i, 0i, -1i))), u_input.c, ~firstLeadingBit(min(vec4<i32>(1i, -1i, 51570i, -2147483647i), vec4<i32>(2147483647i, -1i, 37007i, 2147483647i))), 1202f, ~_wgslsmith_sub_vec3_i32(vec3<i32>(-49604i, ~(-3889i), 0i), -firstLeadingBit(vec3<i32>(-52059i, 1i, -2147483647i))));
}

