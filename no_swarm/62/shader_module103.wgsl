struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: bool = true;

var<private> global2: Struct_2 = Struct_2(27882u, true, Struct_1(i32(-2147483648), vec3<bool>(true, true, false), 225f, vec3<f32>(1000f, -1000f, 1743f), -4167i), 51100u);

var<private> global3: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global4: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(32530u, false, Struct_1(i32(-2147483648), vec3<bool>(true, true, false), -289f, vec3<f32>(295f, 945f, 301f), 2147483647i), 0u), Struct_2(59016u, true, Struct_1(i32(-2147483648), vec3<bool>(true, false, true), -1050f, vec3<f32>(402f, -1000f, 583f), 364i), 19502u), Struct_2(43798u, false, Struct_1(-54353i, vec3<bool>(true, true, false), -1120f, vec3<f32>(1000f, 463f, 803f), i32(-2147483648)), 0u), Struct_2(4294967295u, false, Struct_1(2147483647i, vec3<bool>(false, true, true), -1372f, vec3<f32>(-1000f, 587f, -1669f), 17982i), 4294967295u), Struct_2(0u, true, Struct_1(2147483647i, vec3<bool>(true, false, true), 256f, vec3<f32>(3251f, 570f, -396f), 11795i), 5406u), Struct_2(4294967295u, true, Struct_1(0i, vec3<bool>(false, true, true), -2731f, vec3<f32>(-842f, -281f, -645f), -36429i), 44696u), Struct_2(4294967295u, false, Struct_1(-3627i, vec3<bool>(true, false, true), 607f, vec3<f32>(527f, 791f, 1591f), 53320i), 3408u), Struct_2(0u, true, Struct_1(-5924i, vec3<bool>(true, true, false), -332f, vec3<f32>(2367f, 730f, 1246f), 0i), 4294967295u), Struct_2(4294967295u, true, Struct_1(-5359i, vec3<bool>(false, true, false), -137f, vec3<f32>(-1298f, -402f, 430f), -3206i), 68640u), Struct_2(4294967295u, true, Struct_1(-12800i, vec3<bool>(false, false, true), 1000f, vec3<f32>(-177f, -289f, 408f), 14660i), 1u), Struct_2(69323u, true, Struct_1(28015i, vec3<bool>(false, false, false), -986f, vec3<f32>(-3147f, -1020f, 1447f), -30610i), 82793u), Struct_2(4294967295u, true, Struct_1(58940i, vec3<bool>(false, false, false), 1000f, vec3<f32>(1637f, 480f, 415f), -1554i), 9026u), Struct_2(34907u, false, Struct_1(i32(-2147483648), vec3<bool>(true, true, false), -819f, vec3<f32>(-969f, 1665f, -1862f), 29052i), 0u), Struct_2(1u, false, Struct_1(-9529i, vec3<bool>(false, true, false), 1890f, vec3<f32>(1425f, 117f, 952f), 22075i), 1u), Struct_2(4294967295u, false, Struct_1(0i, vec3<bool>(false, false, true), 440f, vec3<f32>(-1042f, -1111f, 476f), -1i), 43759u), Struct_2(20341u, false, Struct_1(-1i, vec3<bool>(false, true, false), -224f, vec3<f32>(1037f, -611f, -1000f), -1i), 2310u), Struct_2(4294967295u, true, Struct_1(0i, vec3<bool>(true, true, true), -1000f, vec3<f32>(1000f, -606f, -1066f), 19080i), 0u), Struct_2(73551u, false, Struct_1(12714i, vec3<bool>(false, false, false), 1710f, vec3<f32>(1055f, 1001f, 563f), 1i), 47159u), Struct_2(0u, false, Struct_1(-30201i, vec3<bool>(true, true, true), 947f, vec3<f32>(-1160f, -461f, 876f), -21986i), 1u), Struct_2(1u, true, Struct_1(31578i, vec3<bool>(true, true, false), -577f, vec3<f32>(-150f, 1170f, 2454f), -1i), 1u), Struct_2(4294967295u, false, Struct_1(-7942i, vec3<bool>(true, false, false), -1301f, vec3<f32>(1329f, 1000f, 585f), 2147483647i), 64077u), Struct_2(48924u, true, Struct_1(52259i, vec3<bool>(true, false, false), -789f, vec3<f32>(1519f, 681f, -996f), -36695i), 1u), Struct_2(4294967295u, false, Struct_1(i32(-2147483648), vec3<bool>(false, false, true), -509f, vec3<f32>(-1000f, -1569f, -863f), 9084i), 4294967295u), Struct_2(81180u, true, Struct_1(-14705i, vec3<bool>(false, true, true), -1729f, vec3<f32>(-135f, -1907f, 540f), -20264i), 15447u), Struct_2(15688u, true, Struct_1(0i, vec3<bool>(true, false, true), -553f, vec3<f32>(-245f, -918f, 539f), -1i), 0u), Struct_2(4294967295u, false, Struct_1(-23337i, vec3<bool>(true, false, false), 1287f, vec3<f32>(-133f, -740f, -395f), 1i), 417u), Struct_2(1u, false, Struct_1(32227i, vec3<bool>(true, true, false), -1011f, vec3<f32>(-375f, 599f, -522f), 2147483647i), 7730u), Struct_2(12204u, true, Struct_1(-6544i, vec3<bool>(false, true, true), -1000f, vec3<f32>(-691f, 376f, 1000f), 2147483647i), 1u), Struct_2(4294967295u, true, Struct_1(25980i, vec3<bool>(true, false, true), -1405f, vec3<f32>(1000f, -570f, 943f), -28984i), 43892u), Struct_2(4294967295u, true, Struct_1(15629i, vec3<bool>(true, true, false), -876f, vec3<f32>(-502f, -857f, -300f), 1i), 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = global2.a;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1418f - arg_0.d.x)))), global2.c.c, global2.c.c);
    var var_1 = global2.c.c;
    let var_2 = global4[_wgslsmith_index_u32(~global2.d, 30u)];
    let var_3 = 13453u;
    return arg_0;
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = select(~global2.d, 4294967295u, global2.c.b.x && any(vec2<bool>(global2.b, false)));
    global4 = array<Struct_2, 30>();
    var var_1 = func_2(global2.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(934f * -384f), _wgslsmith_f_op_f32(exp2(var_1.c))), 441f, -1703f))));
    let var_3 = ~vec3<i32>(-9916i, -(~global2.c.a), -firstLeadingBit(var_1.a));
    return !global2.c.b.x;
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = global2.d;
    let var_0 = global2.c.d.xy;
    var var_1 = true;
    let var_2 = -361f;
    global4 = array<Struct_2, 30>();
    return max(~global2.d, ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.c, -543f, -222f, 406f) * vec4<f32>(global2.c.c, -1336f, global2.c.c, global2.c.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.d.x, 1544f, -1000f, global2.c.c)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.c, global2.c.c, 570f, global2.c.c)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global2.c.c - global2.c.c), _wgslsmith_f_op_f32(807f * _wgslsmith_f_op_f32(1423f + 247f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.c) + global2.c.c), global2.c.d.x))), vec4<bool>(all(!(!global2.c.b)), true, true, any(select(vec2<bool>(true, false), select(vec2<bool>(true, global2.b), vec2<bool>(true, true), global2.b), select(global2.c.b.yy, vec2<bool>(global2.c.b.x, global2.c.b.x), global2.c.b.zy))))));
    global1 = false;
    let var_1 = vec4<bool>(func_1(vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global2.c.a), vec2<i32>(4381i, global2.c.a)), -2147483647i)), true, true, _wgslsmith_mult_i32(global2.c.e, abs(_wgslsmith_add_i32(37480i, 1i))) != (38351i >> (func_3(func_2(global2.c)) % 32u)));
    let var_2 = global2.c.e << (47675u % 32u);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.c.c + _wgslsmith_f_op_f32(-global2.c.d.x))));
    var var_4 = Struct_2(0u, !(!(global2.c.b.x && any(vec3<bool>(global2.c.b.x, true, var_1.x)))), func_2(Struct_1(abs(1i), !global2.c.b, -1068f, vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x), ~(-global2.c.a))), 0u);
    var var_5 = vec4<i32>(-52718i & min(-(var_2 >> (var_4.a % 32u)), select(1i, 2147483647i, var_1.x) | global2.c.a), var_2, var_2, 4116i);
    var_4 = Struct_2(~u_input.a.x, (0u << (u_input.a.x % 32u)) > select(var_4.d, u_input.b.x, true), Struct_1(-16477i, func_2(Struct_1(_wgslsmith_add_i32(2147483647i, -1i), vec3<bool>(false, false, global2.c.b.x), func_2(global2.c).d.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-384f, var_0.x, 383f), vec3<f32>(-1279f, 1000f, var_0.x), false)), var_2)).b, global2.c.c, _wgslsmith_f_op_vec3_f32(-var_4.c.d), ~(-1i) & var_2), 52467u);
    var var_6 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(_wgslsmith_mult_i32(func_2(Struct_1(global2.c.a, vec3<bool>(true, true, var_4.c.b.x), var_4.c.c, var_0.xyx, 17415i)).e, 10292i | var_2)), -(0i & ~var_4.c.a), var_5.x), select(abs(u_input.a.yz), u_input.b, all(var_1.wy)), u_input.a, ~16i, -28034i);
}

