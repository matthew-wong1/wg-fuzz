struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(false, vec2<i32>(0i, 21797i), vec3<i32>(-27394i, -36969i, 1i), vec3<f32>(780f, 814f, -142f)), vec3<u32>(1u, 1u, 29866u)), Struct_2(Struct_1(true, vec2<i32>(10543i, -6568i), vec3<i32>(-23592i, 1i, 1i), vec3<f32>(-2259f, -1058f, -2628f)), vec3<u32>(3003u, 43951u, 23797u)), Struct_2(Struct_1(true, vec2<i32>(21874i, 7783i), vec3<i32>(2147483647i, 30635i, i32(-2147483648)), vec3<f32>(-1498f, 1431f, -1086f)), vec3<u32>(0u, 1u, 6972u)), Struct_2(Struct_1(true, vec2<i32>(0i, 0i), vec3<i32>(1i, 0i, 9967i), vec3<f32>(-1687f, -1180f, -1088f)), vec3<u32>(7926u, 0u, 32920u)), Struct_2(Struct_1(true, vec2<i32>(-29502i, -4794i), vec3<i32>(27524i, 12145i, -1i), vec3<f32>(1000f, 202f, 887f)), vec3<u32>(4294967295u, 1u, 47918u)), Struct_2(Struct_1(true, vec2<i32>(-36453i, i32(-2147483648)), vec3<i32>(1i, 0i, 1i), vec3<f32>(785f, -1166f, -252f)), vec3<u32>(1u, 93769u, 55577u)), Struct_2(Struct_1(false, vec2<i32>(-1i, -12733i), vec3<i32>(i32(-2147483648), -1i, 6409i), vec3<f32>(1825f, -237f, 828f)), vec3<u32>(0u, 83495u, 38127u)), Struct_2(Struct_1(true, vec2<i32>(2147483647i, -1i), vec3<i32>(0i, -6410i, -51676i), vec3<f32>(-366f, -762f, -115f)), vec3<u32>(55643u, 54728u, 1u)), Struct_2(Struct_1(true, vec2<i32>(15427i, 1077i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<f32>(-698f, 2473f, 625f)), vec3<u32>(10080u, 1u, 1u)), Struct_2(Struct_1(true, vec2<i32>(28648i, -1i), vec3<i32>(63019i, 0i, 26598i), vec3<f32>(1153f, 1331f, 102f)), vec3<u32>(67024u, 22076u, 0u)), Struct_2(Struct_1(true, vec2<i32>(-1i, 2147483647i), vec3<i32>(i32(-2147483648), 9316i, 2147483647i), vec3<f32>(-1412f, 115f, 553f)), vec3<u32>(0u, 4294967295u, 1811u)), Struct_2(Struct_1(false, vec2<i32>(-1i, 1i), vec3<i32>(48593i, -19554i, -12573i), vec3<f32>(444f, -247f, -1259f)), vec3<u32>(26414u, 1u, 0u)), Struct_2(Struct_1(false, vec2<i32>(14058i, -11159i), vec3<i32>(2147483647i, i32(-2147483648), -26844i), vec3<f32>(633f, 1000f, -1076f)), vec3<u32>(0u, 85734u, 13088u)), Struct_2(Struct_1(true, vec2<i32>(i32(-2147483648), 0i), vec3<i32>(40656i, -37191i, i32(-2147483648)), vec3<f32>(1000f, 398f, -1465f)), vec3<u32>(22119u, 0u, 1u)), Struct_2(Struct_1(false, vec2<i32>(77067i, 6583i), vec3<i32>(-8520i, -14518i, 0i), vec3<f32>(-1089f, -1644f, -936f)), vec3<u32>(108689u, 49918u, 25083u)), Struct_2(Struct_1(true, vec2<i32>(1i, -24540i), vec3<i32>(0i, 2147483647i, -3043i), vec3<f32>(-658f, -402f, -562f)), vec3<u32>(0u, 98850u, 9877u)), Struct_2(Struct_1(true, vec2<i32>(2147483647i, 41105i), vec3<i32>(i32(-2147483648), -9548i, -26823i), vec3<f32>(266f, 2060f, 403f)), vec3<u32>(0u, 26180u, 0u)), Struct_2(Struct_1(false, vec2<i32>(21621i, 2147483647i), vec3<i32>(4439i, -7790i, 86571i), vec3<f32>(-918f, 654f, -187f)), vec3<u32>(0u, 0u, 25290u)));

var<private> global1: array<Struct_4, 28>;

var<private> global2: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(1000f, 570f, -558f), vec3<f32>(761f, -1857f, 177f), vec3<f32>(-197f, -1012f, 399f), vec3<f32>(714f, 503f, 127f), vec3<f32>(-2521f, 718f, 1464f), vec3<f32>(1219f, 2031f, -824f), vec3<f32>(-2182f, 176f, -850f), vec3<f32>(2300f, -1196f, -1162f), vec3<f32>(-2808f, -1416f, 1914f), vec3<f32>(-425f, 1102f, 618f), vec3<f32>(-708f, -1511f, 1000f), vec3<f32>(-506f, 1000f, -475f), vec3<f32>(-163f, -942f, 271f), vec3<f32>(402f, 1055f, -728f), vec3<f32>(1459f, -802f, -909f), vec3<f32>(1730f, -243f, 1550f), vec3<f32>(1258f, 603f, 965f), vec3<f32>(-687f, -1494f, 728f), vec3<f32>(-1000f, -1037f, -1000f), vec3<f32>(1273f, -659f, 439f), vec3<f32>(1408f, 1000f, -1381f), vec3<f32>(-1000f, 870f, -669f));

var<private> global3: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(1u, 18586u, 53501u, 6458u), vec4<u32>(4294967295u, 9706u, 132050u, 29353u), vec4<u32>(2914u, 81583u, 17883u, 0u), vec4<u32>(0u, 4294967295u, 37652u, 0u), vec4<u32>(31153u, 0u, 26842u, 0u), vec4<u32>(4294967295u, 5978u, 19400u, 90259u), vec4<u32>(53386u, 4399u, 0u, 1u), vec4<u32>(1u, 44511u, 73540u, 56015u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(29960u, 0u, 0u, 12714u), vec4<u32>(4294967295u, 52963u, 9448u, 0u), vec4<u32>(32776u, 0u, 0u, 4294967295u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<bool>) -> u32 {
    global2 = array<vec3<f32>, 22>();
    var var_0 = -730f;
    global1 = array<Struct_4, 28>();
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 28u)];
    var_0 = var_1.b.x;
    return var_1.d;
}

fn func_3(arg_0: Struct_5) -> bool {
    let var_0 = arg_0.b;
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.a.d.x))) - var_0.a.d.x), 350f), _wgslsmith_div_f32(-2349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.d.x))));
    let var_2 = u_input.a.x >> (countOneBits(var_0.d) % 32u);
    var var_3 = vec2<i32>(u_input.c.x, _wgslsmith_add_i32(-36592i, 29782i));
    global2 = array<vec3<f32>, 22>();
    return true;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(u_input.a.x, func_2(any(!vec2<bool>(arg_0, arg_0)), select(!vec2<bool>(arg_0, false), vec2<bool>(true, any(vec2<bool>(true, true))), false), select(vec3<bool>(true, true, true), vec3<bool>(arg_0, true, u_input.a.x == u_input.a.x), true & arg_0)));
    var var_1 = Struct_1(arg_0, vec2<i32>(abs(-2147483647i), u_input.c.x), -u_input.c.xyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~u_input.a.x, 22u)])));
    let var_2 = !(!func_3(Struct_5(vec2<bool>(arg_0, var_1.a), global1[_wgslsmith_index_u32(17631u, 28u)])));
    let var_3 = Struct_4(Struct_1(arg_0, var_1.c.xx, var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(64214u, u_input.a.x), 22u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1013f, var_1.d.x, 248f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), var_1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_f32(130f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1)), arg_1))), u_input.c | (firstTrailingBit(vec4<i32>(u_input.c.x, 0i, u_input.b, -2147483647i)) | -vec4<i32>(var_1.c.x, var_1.b.x, var_1.c.x, u_input.b)), _wgslsmith_sub_u32(firstTrailingBit(1u), var_0), Struct_1(var_2, vec2<i32>(reverseBits(0i), var_1.b.x), var_1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -870f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 552f, var_1.d.x)))));
    let var_4 = select(!select(vec4<bool>(any(vec4<bool>(true, false, var_3.a.a, arg_0)), true, false, var_2), select(select(vec4<bool>(var_3.e.a, false, var_3.a.a, false), vec4<bool>(var_1.a, true, false, var_2), true), select(vec4<bool>(false, false, var_2, true), vec4<bool>(true, false, false, true), vec4<bool>(arg_0, var_3.a.a, true, arg_0)), false), vec4<bool>(func_3(Struct_5(vec2<bool>(false, var_3.e.a), var_3)), any(vec2<bool>(var_3.a.a, arg_0)), var_2 | arg_0, true)), vec4<bool>(false, !any(vec3<bool>(false, true, true)), all(select(vec3<bool>(false, true, true), !vec3<bool>(var_1.a, true, true), select(vec3<bool>(true, var_2, var_3.a.a), vec3<bool>(var_2, true, false), false))), true), true);
    return Struct_3(global0[_wgslsmith_index_u32(~(~u_input.a.x), 18u)], Struct_1(!var_1.a, vec2<i32>(~abs(var_3.a.c.x), -13206i), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.yxz, vec3<i32>(-1i, -2147483647i, u_input.c.x) & vec3<i32>(36804i, var_1.b.x, 33333i)), ~(-u_input.c.wwy), vec3<i32>(i32(-1i) * -2147483647i, u_input.b << (0u % 32u), -u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1263f), 1f, _wgslsmith_f_op_f32(ceil(var_1.d.x))))), firstLeadingBit(-37515i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-688f, 1097f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1081f)), _wgslsmith_f_op_f32(f32(-1f) * -290f))), 1000f)));
    global1 = array<Struct_4, 28>();
    let var_1 = 86545u;
    let var_2 = Struct_2(var_0.b, vec3<u32>(0u, 14761u, ~0u));
    var var_3 = var_0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(vec2<i32>(1i, 15773i)), var_0.a.b.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1907f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-323f, 929f)))));
}

