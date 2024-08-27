struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global2: array<vec2<f32>, 31>;

var<private> global3: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(0u, vec4<bool>(true, false, false, true), Struct_1(vec2<f32>(-685f, 395f))), Struct_3(39711u, vec4<bool>(false, true, false, false), Struct_1(vec2<f32>(-787f, 307f))), Struct_3(24494u, vec4<bool>(false, true, true, true), Struct_1(vec2<f32>(1661f, 394f))), Struct_3(27251u, vec4<bool>(true, false, false, false), Struct_1(vec2<f32>(863f, 157f))), Struct_3(4294967295u, vec4<bool>(false, false, true, false), Struct_1(vec2<f32>(-1000f, -1827f))), Struct_3(75088u, vec4<bool>(true, false, false, true), Struct_1(vec2<f32>(626f, 120f))), Struct_3(1u, vec4<bool>(false, true, false, true), Struct_1(vec2<f32>(1000f, -182f))), Struct_3(0u, vec4<bool>(false, true, true, true), Struct_1(vec2<f32>(-483f, -472f))), Struct_3(0u, vec4<bool>(true, true, true, false), Struct_1(vec2<f32>(-1330f, 446f))), Struct_3(20084u, vec4<bool>(false, true, true, false), Struct_1(vec2<f32>(-274f, -327f))), Struct_3(4294967295u, vec4<bool>(true, true, false, false), Struct_1(vec2<f32>(525f, -996f))), Struct_3(15455u, vec4<bool>(false, true, false, true), Struct_1(vec2<f32>(128f, 1806f))), Struct_3(7617u, vec4<bool>(true, true, false, true), Struct_1(vec2<f32>(-1000f, 749f))));

var<private> global4: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec2<f32>(-745f, 365f)), Struct_1(vec2<f32>(-888f, -472f)), Struct_1(vec2<f32>(-154f, 1563f)), 10168u, vec2<bool>(true, false)), Struct_2(Struct_1(vec2<f32>(-1395f, 363f)), Struct_1(vec2<f32>(2046f, -181f)), Struct_1(vec2<f32>(205f, 338f)), 31051u, vec2<bool>(true, true)), Struct_2(Struct_1(vec2<f32>(-1332f, 218f)), Struct_1(vec2<f32>(-416f, -1091f)), Struct_1(vec2<f32>(494f, 1081f)), 0u, vec2<bool>(true, false)), Struct_2(Struct_1(vec2<f32>(-161f, 1022f)), Struct_1(vec2<f32>(-380f, -1423f)), Struct_1(vec2<f32>(2036f, -531f)), 37196u, vec2<bool>(true, false)), Struct_2(Struct_1(vec2<f32>(1141f, 524f)), Struct_1(vec2<f32>(-831f, 1318f)), Struct_1(vec2<f32>(763f, -743f)), 0u, vec2<bool>(true, false)), Struct_2(Struct_1(vec2<f32>(-446f, -2286f)), Struct_1(vec2<f32>(-503f, 624f)), Struct_1(vec2<f32>(-651f, 1129f)), 39540u, vec2<bool>(true, true)), Struct_2(Struct_1(vec2<f32>(-1000f, 1370f)), Struct_1(vec2<f32>(1203f, 293f)), Struct_1(vec2<f32>(240f, -1531f)), 1u, vec2<bool>(false, false)), Struct_2(Struct_1(vec2<f32>(-235f, -2286f)), Struct_1(vec2<f32>(-1000f, -895f)), Struct_1(vec2<f32>(-1502f, 1000f)), 61672u, vec2<bool>(false, false)), Struct_2(Struct_1(vec2<f32>(-229f, 1818f)), Struct_1(vec2<f32>(-1452f, -694f)), Struct_1(vec2<f32>(-343f, -1000f)), 1u, vec2<bool>(true, false)), Struct_2(Struct_1(vec2<f32>(1151f, -1922f)), Struct_1(vec2<f32>(-1106f, 882f)), Struct_1(vec2<f32>(457f, 772f)), 14262u, vec2<bool>(false, false)), Struct_2(Struct_1(vec2<f32>(-957f, 1030f)), Struct_1(vec2<f32>(982f, -741f)), Struct_1(vec2<f32>(-2242f, -1456f)), 49537u, vec2<bool>(true, false)), Struct_2(Struct_1(vec2<f32>(-518f, -800f)), Struct_1(vec2<f32>(1224f, -1775f)), Struct_1(vec2<f32>(-860f, 1488f)), 47611u, vec2<bool>(true, true)), Struct_2(Struct_1(vec2<f32>(1000f, -461f)), Struct_1(vec2<f32>(-1336f, 110f)), Struct_1(vec2<f32>(-294f, 2094f)), 62109u, vec2<bool>(false, false)), Struct_2(Struct_1(vec2<f32>(-1000f, -2142f)), Struct_1(vec2<f32>(-1000f, 2485f)), Struct_1(vec2<f32>(351f, -605f)), 4294967295u, vec2<bool>(true, true)), Struct_2(Struct_1(vec2<f32>(406f, -1469f)), Struct_1(vec2<f32>(-996f, -672f)), Struct_1(vec2<f32>(-672f, -250f)), 7884u, vec2<bool>(true, true)), Struct_2(Struct_1(vec2<f32>(-1767f, -562f)), Struct_1(vec2<f32>(-1020f, -149f)), Struct_1(vec2<f32>(1041f, -413f)), 8649u, vec2<bool>(false, false)), Struct_2(Struct_1(vec2<f32>(1069f, 274f)), Struct_1(vec2<f32>(-1309f, -1075f)), Struct_1(vec2<f32>(468f, 2144f)), 4294967295u, vec2<bool>(true, false)), Struct_2(Struct_1(vec2<f32>(733f, 1000f)), Struct_1(vec2<f32>(956f, 214f)), Struct_1(vec2<f32>(200f, -522f)), 69472u, vec2<bool>(false, false)), Struct_2(Struct_1(vec2<f32>(-197f, -1019f)), Struct_1(vec2<f32>(329f, 715f)), Struct_1(vec2<f32>(-710f, -2080f)), 19947u, vec2<bool>(true, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32) -> bool {
    global3 = array<Struct_3, 13>();
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(~u_input.b.xx), _wgslsmith_div_vec2_u32(max(vec2<u32>(100504u, u_input.a), vec2<u32>(u_input.a, 39739u)), ~vec2<u32>(46134u, u_input.a))), 31u)]);
    global1 = array<vec3<bool>, 23>();
    let var_1 = 1610f;
    let var_2 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(round(502f)), _wgslsmith_f_op_f32(-var_1));
    return false;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = select(select(vec4<bool>(func_3(_wgslsmith_f_op_f32(-arg_1.b)), -1i >= ~global0[_wgslsmith_index_u32(u_input.c, 21u)], var_0.c.e.x, ~26421i >= _wgslsmith_dot_vec4_i32(vec4<i32>(-23119i, -27154i, global0[_wgslsmith_index_u32(1u, 21u)], 1i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], -1i, -1i, global0[_wgslsmith_index_u32(var_0.c.d, 21u)]))), vec4<bool>(var_0.a.e.x, false, arg_1.c.e.x == false, false), true), vec4<bool>(((u_input.b.x ^ u_input.c) << (~98326u % 32u)) > arg_1.c.d, var_0.a.e.x, arg_1.a.e.x, true), !vec4<bool>(var_0.c.e.x, false, any(!vec4<bool>(true, arg_0.x, arg_1.a.e.x, var_0.c.e.x)), _wgslsmith_f_op_f32(arg_1.a.c.a.x - arg_1.b) == _wgslsmith_f_op_f32(-arg_1.d.x)));
    var var_2 = ~(~58850u);
    var var_3 = Struct_1(vec2<f32>(135f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.a.a.x, arg_1.b)))))));
    var_2 = arg_1.a.d;
    return Struct_1(var_3.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(func_2(vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 21u)] < arg_0.x, false, arg_2.b.x), Struct_4(Struct_2(func_2(vec3<bool>(arg_2.b.x, arg_2.b.x, false), Struct_4(global4[_wgslsmith_index_u32(arg_1, 19u)], arg_2.c.a.x, Struct_2(Struct_1(global2[_wgslsmith_index_u32(arg_1, 31u)]), Struct_1(vec2<f32>(arg_2.c.a.x, arg_2.c.a.x)), arg_2.c, u_input.c, vec2<bool>(false, false)), vec4<f32>(arg_2.c.a.x, arg_2.c.a.x, 634f, arg_2.c.a.x))), arg_2.c, func_2(arg_2.b.yxy, Struct_4(Struct_2(arg_2.c, arg_2.c, Struct_1(global2[_wgslsmith_index_u32(50866u, 31u)]), u_input.b.x, arg_2.b.ww), arg_2.c.a.x, global4[_wgslsmith_index_u32(arg_2.a, 19u)], vec4<f32>(arg_2.c.a.x, arg_2.c.a.x, arg_2.c.a.x, arg_2.c.a.x))), ~109035u, !arg_2.b.wx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.a.x)), Struct_2(arg_2.c, Struct_1(vec2<f32>(-1000f, -593f)), func_2(vec3<bool>(true, arg_2.b.x, false), Struct_4(Struct_2(arg_2.c, arg_2.c, Struct_1(arg_2.c.a), 1u, arg_2.b.xy), arg_2.c.a.x, global4[_wgslsmith_index_u32(arg_1, 19u)], vec4<f32>(arg_2.c.a.x, -714f, 2150f, -116f))), 1u, !arg_2.b.ww), vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.a.x * arg_2.c.a.x), arg_2.c.a.x, -162f, 267f))), arg_2.c, arg_2.c, arg_1, select(vec2<bool>(arg_2.b.x, !arg_2.b.x), !vec2<bool>(!arg_2.b.x, !arg_2.b.x), vec2<bool>(false, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.a) - global2[_wgslsmith_index_u32(1u << (1u % 32u), 31u)]));
    global3 = array<Struct_3, 13>();
    let var_2 = any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(arg_1, arg_2.a, arg_2.a), u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_1, u_input.b.x, 0u), vec4<u32>(arg_1, 0u, arg_2.a, var_0.d)), 1u)), ~(vec4<u32>(u_input.b.x, 0u, var_0.d, var_0.d) >> ((vec4<u32>(arg_1, 0u, 21216u, arg_2.a) << (vec4<u32>(0u, 1u, 1u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)))), 23u)]);
    let var_3 = reverseBits(vec3<u32>(u_input.b.x, arg_2.a, arg_2.a));
    return Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.a.a))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    let var_0 = reverseBits(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.zy, max(vec2<u32>(u_input.d, u_input.a), u_input.b.xz), _wgslsmith_add_vec2_u32(u_input.b.zy, u_input.b.zz)), u_input.b.zx) & u_input.b.yy);
    global3 = array<Struct_3, 13>();
    let var_1 = global4[_wgslsmith_index_u32((4294967295u ^ u_input.d) ^ u_input.d, 19u)];
    let var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_2(vec3<bool>(false, var_1.e.x, true), Struct_4(Struct_2(Struct_1(vec2<f32>(2128f, var_1.b.a.x)), var_1.b, arg_1, var_0.x, vec2<bool>(false, false)), -227f, global4[_wgslsmith_index_u32(var_1.d, 19u)], vec4<f32>(-421f, var_1.a.a.x, arg_0.b, var_1.b.a.x))).a.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1000f, -514f))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-512f + var_1.b.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-399f + arg_1.a.x))))));
    global2 = array<vec2<f32>, 31>();
    return select(reverseBits(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], -32488i)), vec2<i32>(global0[_wgslsmith_index_u32(var_1.d, 21u)], 55589i))) ^ vec2<i32>(i32(-1i) * -26744i, -57723i), countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 21u)], -19517i), vec2<i32>(global0[_wgslsmith_index_u32(32166u, 21u)], global0[_wgslsmith_index_u32(var_0.x, 21u)])), min(vec2<i32>(-5091i, global0[_wgslsmith_index_u32(var_0.x, 21u)]), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(var_0.x, 21u)]))) >> (select(~vec2<u32>(var_0.x, u_input.b.x), firstTrailingBit(vec2<u32>(var_1.d, 2897u)), true) % vec2<u32>(32u))), true);
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1185f, 584f, 285f, 1810f), vec4<f32>(-1469f, -385f, 709f, 248f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, 614f, 859f, 331f))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-320f, -520f, 508f, 1542f)))))));
    global0 = array<i32, 21>();
    global1 = array<vec3<bool>, 23>();
    global0 = array<i32, 21>();
    var var_1 = func_5(Struct_5(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), func_4(arg_0.xx, u_input.c, Struct_3(0u, select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), var_0.x >= -702f), func_2(!global1[_wgslsmith_index_u32(55155u, 23u)], Struct_4(global4[_wgslsmith_index_u32(42803u, 19u)], var_0.x, global4[_wgslsmith_index_u32(u_input.b.x, 19u)], var_0)))), true);
    return Struct_4(Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), vec2<f32>(var_0.x, var_0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), func_4(arg_0.wx, ~(~u_input.d), global3[_wgslsmith_index_u32(1u, 13u)]), 1u, vec2<bool>(true, true)), var_0.x, global4[_wgslsmith_index_u32(0u, 19u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 617f, -889f) + var_0) + vec4<f32>(1377f, 154f, var_0.x, var_0.x)) * var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-250f, _wgslsmith_div_f32(-1029f, -637f)), _wgslsmith_f_op_f32(round(-218f)))) * 1f);
    global3 = array<Struct_3, 13>();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-694f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(480f + 2274f))), _wgslsmith_f_op_f32(select(1394f, -594f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1813f, -753f, false))))), false));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(423f)) * _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -779f))))), 539f);
    global3 = array<Struct_3, 13>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(575f - 712f), _wgslsmith_div_f32(var_2.b, -1069f)), -220f), var_2.a)) * var_2.a);
    var var_4 = func_1(-(vec4<i32>(-1i) * -vec4<i32>(-1402i, 22872i, 1i, global0[_wgslsmith_index_u32(1u, 21u)])));
    let var_5 = Struct_3(8586u, vec4<bool>(var_4.a.e.x || false, var_4.c.e.x, true, any(var_4.a.e)), func_2(vec3<bool>(true, true, true), Struct_4(Struct_2(var_4.c.b, func_1(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 1i, global0[_wgslsmith_index_u32(var_4.c.d, 21u)], -2147483647i)).a.a, var_4.a.a, 31753u, var_4.c.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.b)) * func_2(global1[_wgslsmith_index_u32(var_4.c.d, 23u)], Struct_4(global4[_wgslsmith_index_u32(u_input.c, 19u)], 418f, Struct_2(var_4.a.b, var_4.a.a, var_4.c.a, 0u, vec2<bool>(var_4.c.e.x, var_4.c.e.x)), vec4<f32>(var_4.c.a.a.x, var_4.b, 1092f, -695f))).a.x), global4[_wgslsmith_index_u32(select(~u_input.c, _wgslsmith_add_u32(var_4.c.d, 41991u), all(vec4<bool>(true, var_4.c.e.x, var_4.a.e.x, false))), 19u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.d.x, -1000f, var_2.b, -2303f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a, var_4.d.x, -726f, 1233f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, abs(~global0[_wgslsmith_index_u32(91080u | var_5.a, 21u)]), var_5.a, u_input.b.yx << (~(~(~vec2<u32>(u_input.b.x, 1u))) % vec2<u32>(32u)), 1i);
}

