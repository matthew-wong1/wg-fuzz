struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

var<private> global1: Struct_5;

var<private> global2: array<Struct_2, 3>;

var<private> global3: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(213f, -184f, 1224f), vec3<f32>(-557f, -207f, -1911f), vec3<f32>(-1000f, -136f, -626f), vec3<f32>(212f, 1815f, -574f), vec3<f32>(305f, -589f, 607f), vec3<f32>(179f, 1443f, 734f), vec3<f32>(-1784f, 1917f, 471f), vec3<f32>(-362f, -1000f, 883f), vec3<f32>(-1141f, -1688f, -318f), vec3<f32>(-243f, 1317f, -597f), vec3<f32>(-410f, -712f, -1909f), vec3<f32>(942f, -892f, 1569f), vec3<f32>(1203f, -298f, -1520f), vec3<f32>(1233f, 695f, 482f), vec3<f32>(-848f, -1027f, -1000f), vec3<f32>(267f, -1505f, -1000f), vec3<f32>(239f, -939f, 1459f), vec3<f32>(209f, -1000f, 1569f), vec3<f32>(212f, -524f, 921f), vec3<f32>(-1248f, 793f, -784f), vec3<f32>(-1000f, 1000f, 904f), vec3<f32>(-193f, 1984f, 1953f), vec3<f32>(-1555f, 795f, -1175f), vec3<f32>(-258f, -467f, 1556f), vec3<f32>(921f, 624f, 2012f), vec3<f32>(-540f, -998f, 678f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_5(true, ~global1.b);
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_2.xxw + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -1055f, arg_2.x) + _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(82051u, 26u)]))) - global3[_wgslsmith_index_u32(0u, 26u)]));
    var var_3 = Struct_3(global2[_wgslsmith_index_u32(22043u, 3u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1555f, var_2.x) + vec2<f32>(var_2.x, -1144f))) * _wgslsmith_f_op_vec2_f32(-var_2.zy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1591f * 1614f), 544f))), Struct_2(7859i, arg_2, u_input.c.x, ~var_1.yz, Struct_1(true)), var_2.x);
    global1 = Struct_5(select(!(var_0.a || var_3.c.e.a), ~88177u >= select(1u, ~var_1.x, true), true), vec3<i32>(_wgslsmith_sub_i32(abs(5152i), _wgslsmith_mod_i32(-2147483647i, -24432i)) >> ((_wgslsmith_sub_u32(var_3.c.c, u_input.d.x) & firstLeadingBit(4294967295u)) % 32u), u_input.a, reverseBits(select(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.b.x, -1i, -1i), vec4<i32>(var_0.b.x, global1.b.x, 694i, 0i)), u_input.a, true))));
    return -10430i;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(arg_0.x ^ u_input.d.x, 26u)];
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -550f, 399f), vec3<f32>(-364f, -274f, var_0.x), any(arg_1))))));
    var var_1 = Struct_4(Struct_3(global2[_wgslsmith_index_u32(~9696u, 3u)], vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x)), global2[_wgslsmith_index_u32(~11803u, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1358f)))))));
    var var_2 = var_0.x;
    let var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(89830u, 0u), 3u)];
    return ~(~17151u);
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.d.x;
    return global2[_wgslsmith_index_u32(~func_4(~(~(~vec4<u32>(u_input.d.x, 1u, u_input.c.x, u_input.c.x))), vec2<bool>(all(!vec3<bool>(true, global1.a, false)), (global1.b.x ^ -1i) != global1.b.x), ~(~u_input.c.wwy) | _wgslsmith_div_vec3_u32(u_input.c.zyx, vec3<u32>(48612u, u_input.c.x, 8395u)), vec3<i32>(abs(firstTrailingBit(u_input.b.x)), ~func_3(4294967295u, 0u, vec4<f32>(1124f, -1552f, 977f, 135f), Struct_1(global1.a)), -u_input.a)), 3u)];
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_5 {
    var var_0 = global1.a;
    global3 = array<vec3<f32>, 26>();
    global2 = array<Struct_2, 3>();
    global1 = Struct_5(global1.a, abs(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.b.x, u_input.b.x, 16663i), ~vec3<i32>(-1i, -17445i, arg_0.x)))));
    global2 = array<Struct_2, 3>();
    return Struct_5(false, firstLeadingBit(abs(global1.b)));
}

fn func_1() -> Struct_2 {
    global1 = func_5(abs(vec2<i32>(global1.b.x, u_input.b.x)), Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(11237u, 58694u), abs(u_input.c.x), 18429u, u_input.d.x), select(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 59481u, 3167u, 74983u)), select(vec4<u32>(7057u, u_input.c.x, u_input.d.x, u_input.c.x), u_input.d, false), select(vec4<bool>(false, false, false, true), vec4<bool>(global1.a, global1.a, false, true), vec4<bool>(true, global1.a, true, false)))), 3u)], _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-688f, -132f) * vec2<f32>(-154f, -1064f))), vec2<f32>(-312f, _wgslsmith_f_op_f32(608f - -419f)))), func_2(), -493f), u_input.c.wzy);
    global0 = array<vec3<bool>, 12>();
    let var_0 = 1i;
    global3 = array<vec3<f32>, 26>();
    var var_1 = _wgslsmith_mult_i32(global1.b.x, -43017i);
    return Struct_2(u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f))), 218f, _wgslsmith_f_op_f32(-2319f + _wgslsmith_f_op_f32(floor(-209f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(565f, -450f) - _wgslsmith_f_op_f32(abs(-1441f)))))), 28328u, ~vec2<u32>(1u, u_input.c.x & _wgslsmith_dot_vec4_u32(vec4<u32>(34563u, 1u, 4388u, u_input.d.x), u_input.d)), func_2().e);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_5, arg_2: u32, arg_3: Struct_4) -> vec4<i32> {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(-arg_0.b.x) > _wgslsmith_f_op_f32(trunc(269f)), 21463u <= func_4(min(~vec4<u32>(110736u, arg_3.a.a.c, arg_3.a.c.d.x, arg_0.d.x), u_input.d), !(!vec2<bool>(true, arg_0.e.a)), vec3<u32>(arg_3.a.c.c, arg_3.a.c.d.x, 1u), vec3<i32>(func_2().a, 2147483647i, ~2147483647i)), false, !(!(!arg_1.a)));
    let var_1 = Struct_4(arg_3.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-534f)) * arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), var_1.a.c.b.x))));
    var var_3 = Struct_3(Struct_2(-_wgslsmith_sub_i32(abs(arg_3.a.c.a), 23634i >> (arg_2 % 32u)), arg_0.b, arg_2, ~(~(~var_1.a.a.d)), func_1().e), _wgslsmith_f_op_vec2_f32(-arg_3.a.c.b.zy), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.d * -909f) + 435f)))));
    var var_4 = Struct_4(Struct_3(Struct_2(-arg_0.a, vec4<f32>(var_1.a.d, 1519f, var_2.x, var_1.a.d), select(~4294967295u, arg_3.a.c.d.x, global1.a), ~(~vec2<u32>(var_3.c.c, var_3.c.d.x)), var_3.a.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_2.x, var_3.b.x), 1000f) + vec2<f32>(var_2.x, arg_3.a.d)), arg_3.a.a, -967f));
    return -countOneBits(~vec4<i32>(-3060i, _wgslsmith_add_i32(arg_1.b.x, 2147483647i), func_5(global1.b.yx, var_4.a, u_input.d.yxx).b.x, -11494i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, firstTrailingBit(u_input.b.x), _wgslsmith_add_i32(u_input.a, global1.b.x), reverseBits(global1.b.x)), reverseBits(~vec4<i32>(global1.b.x, global1.b.x, 1i, 1i)), func_6(func_1(), func_5(vec2<i32>(u_input.b.x, u_input.b.x), Struct_3(Struct_2(15807i, vec4<f32>(1391f, -1320f, 251f, -565f), u_input.d.x, vec2<u32>(1u, 1u), Struct_1(global1.a)), vec2<f32>(-1494f, -1415f), Struct_2(u_input.a, vec4<f32>(568f, -166f, -1000f, 1209f), u_input.c.x, vec2<u32>(u_input.d.x, u_input.d.x), Struct_1(false)), 146f), vec3<u32>(u_input.d.x, u_input.c.x, 0u)), 0u, Struct_4(Struct_3(Struct_2(global1.b.x, vec4<f32>(763f, -1000f, -1059f, -1025f), u_input.c.x, vec2<u32>(u_input.d.x, 22518u), Struct_1(true)), vec2<f32>(884f, 1191f), Struct_2(1i, vec4<f32>(362f, 1727f, 319f, -310f), 40042u, vec2<u32>(1u, u_input.d.x), Struct_1(true)), -565f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-1i), 2709i, firstLeadingBit(u_input.d.yxy), _wgslsmith_f_op_vec2_f32(vec2<f32>(func_2().b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_div_f32(561f, -795f)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1252f, 240f) + vec2<f32>(-361f, 590f))))));
}

