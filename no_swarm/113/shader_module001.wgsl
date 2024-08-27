struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(0u, 61400u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(26911u, 0u), vec2<u32>(4294967295u, 47146u), vec2<u32>(31128u, 4294967295u), vec2<u32>(1u, 34977u), vec2<u32>(39621u, 10978u), vec2<u32>(3329u, 0u), vec2<u32>(80106u, 1u), vec2<u32>(49646u, 82767u), vec2<u32>(55775u, 45441u), vec2<u32>(4294967295u, 0u), vec2<u32>(13105u, 0u), vec2<u32>(47310u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(99212u, 4294967295u), vec2<u32>(45188u, 4294967295u), vec2<u32>(0u, 74091u), vec2<u32>(53409u, 0u), vec2<u32>(27598u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(9959u, 58614u), vec2<u32>(0u, 5777u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 59322u));

var<private> global1: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(20345u, Struct_3(vec4<u32>(4294967295u, 1u, 30155u, 0u)), false), Struct_4(46043u, Struct_3(vec4<u32>(21977u, 0u, 41508u, 42130u)), true), Struct_4(1u, Struct_3(vec4<u32>(4294967295u, 23680u, 58390u, 0u)), true), Struct_4(5478u, Struct_3(vec4<u32>(34757u, 48221u, 25528u, 4294967295u)), true), Struct_4(0u, Struct_3(vec4<u32>(8699u, 4294967295u, 15870u, 4294967295u)), true), Struct_4(35019u, Struct_3(vec4<u32>(41233u, 1u, 7365u, 22046u)), true), Struct_4(23078u, Struct_3(vec4<u32>(0u, 17324u, 41484u, 0u)), false), Struct_4(4294967295u, Struct_3(vec4<u32>(67730u, 84062u, 37595u, 0u)), true), Struct_4(19141u, Struct_3(vec4<u32>(0u, 0u, 31519u, 21381u)), false), Struct_4(4294967295u, Struct_3(vec4<u32>(36716u, 86439u, 0u, 5594u)), true), Struct_4(61526u, Struct_3(vec4<u32>(36393u, 1u, 46269u, 10480u)), true), Struct_4(39816u, Struct_3(vec4<u32>(1u, 0u, 44078u, 4294967295u)), true), Struct_4(62335u, Struct_3(vec4<u32>(0u, 32250u, 0u, 1u)), false), Struct_4(1u, Struct_3(vec4<u32>(0u, 45202u, 29687u, 0u)), true), Struct_4(102222u, Struct_3(vec4<u32>(1u, 4294967295u, 71872u, 55445u)), false), Struct_4(4294967295u, Struct_3(vec4<u32>(0u, 82006u, 23893u, 1u)), false), Struct_4(0u, Struct_3(vec4<u32>(63729u, 0u, 74739u, 25850u)), false), Struct_4(4294967295u, Struct_3(vec4<u32>(1u, 1u, 31031u, 27285u)), false), Struct_4(0u, Struct_3(vec4<u32>(15285u, 22938u, 70251u, 41111u)), true), Struct_4(1u, Struct_3(vec4<u32>(50761u, 29481u, 63569u, 81264u)), true), Struct_4(108049u, Struct_3(vec4<u32>(0u, 1u, 20107u, 1u)), true), Struct_4(18906u, Struct_3(vec4<u32>(21496u, 0u, 1u, 21960u)), true), Struct_4(63585u, Struct_3(vec4<u32>(52452u, 0u, 1u, 4294967295u)), true), Struct_4(1u, Struct_3(vec4<u32>(1u, 30838u, 1u, 85429u)), true), Struct_4(1u, Struct_3(vec4<u32>(45056u, 0u, 11897u, 499u)), true), Struct_4(1u, Struct_3(vec4<u32>(67286u, 4294967295u, 0u, 4294967295u)), true));

var<private> global2: array<vec4<u32>, 5>;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(1161f), vec2<u32>(64513u, 18717u), 707f, Struct_1(-1142f), true), Struct_2(Struct_1(-1163f), vec2<u32>(56391u, 54671u), 252f, Struct_1(138f), false), Struct_2(Struct_1(-877f), vec2<u32>(3695u, 4294967295u), -1720f, Struct_1(767f), true), Struct_2(Struct_1(1536f), vec2<u32>(13889u, 26184u), 1503f, Struct_1(-963f), true), Struct_2(Struct_1(-415f), vec2<u32>(1u, 34984u), 698f, Struct_1(-1603f), false), Struct_2(Struct_1(573f), vec2<u32>(1u, 1u), 1034f, Struct_1(-117f), false), Struct_2(Struct_1(-473f), vec2<u32>(1u, 4294967295u), 1000f, Struct_1(200f), true), Struct_2(Struct_1(998f), vec2<u32>(0u, 0u), 541f, Struct_1(-490f), false), Struct_2(Struct_1(-192f), vec2<u32>(58189u, 13209u), -1126f, Struct_1(-887f), true), Struct_2(Struct_1(-2226f), vec2<u32>(4294967295u, 50496u), 231f, Struct_1(423f), false), Struct_2(Struct_1(-1000f), vec2<u32>(23382u, 11309u), 1000f, Struct_1(556f), false), Struct_2(Struct_1(1133f), vec2<u32>(1u, 5600u), -925f, Struct_1(-827f), true), Struct_2(Struct_1(846f), vec2<u32>(46907u, 4294967295u), 1088f, Struct_1(-1054f), true), Struct_2(Struct_1(1467f), vec2<u32>(4294967295u, 24422u), -1000f, Struct_1(188f), true), Struct_2(Struct_1(-1139f), vec2<u32>(12133u, 0u), -1838f, Struct_1(-1561f), false), Struct_2(Struct_1(918f), vec2<u32>(4294967295u, 0u), -540f, Struct_1(211f), false), Struct_2(Struct_1(-229f), vec2<u32>(47095u, 56724u), 866f, Struct_1(725f), false), Struct_2(Struct_1(-929f), vec2<u32>(42220u, 5079u), 538f, Struct_1(246f), true), Struct_2(Struct_1(1721f), vec2<u32>(71575u, 0u), -868f, Struct_1(1000f), true), Struct_2(Struct_1(-741f), vec2<u32>(1u, 1u), -602f, Struct_1(-428f), false), Struct_2(Struct_1(-1000f), vec2<u32>(28379u, 63916u), -1000f, Struct_1(-417f), true), Struct_2(Struct_1(-813f), vec2<u32>(0u, 79143u), -127f, Struct_1(-356f), true), Struct_2(Struct_1(895f), vec2<u32>(37245u, 102757u), 895f, Struct_1(-716f), true), Struct_2(Struct_1(-1317f), vec2<u32>(0u, 0u), -1769f, Struct_1(492f), false), Struct_2(Struct_1(-977f), vec2<u32>(61809u, 4294967295u), -1391f, Struct_1(1064f), false), Struct_2(Struct_1(-804f), vec2<u32>(22169u, 17780u), 1148f, Struct_1(137f), true), Struct_2(Struct_1(-1174f), vec2<u32>(0u, 0u), -817f, Struct_1(-566f), true));

var<private> global4: array<bool, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    global1 = array<Struct_4, 26>();
    global0 = array<vec2<u32>, 28>();
    return Struct_4(23371u, Struct_3(global2[_wgslsmith_index_u32(~max(u_input.c, 4294967295u) & ~(~0u), 5u)]), global4[_wgslsmith_index_u32(u_input.a, 31u)]);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = vec3<bool>(true, all(!vec4<bool>(arg_2.e, arg_1.c, any(vec4<bool>(arg_2.e, global4[_wgslsmith_index_u32(arg_3.b.x, 31u)], false, false)), arg_3.e || arg_1.c)), !((i32(-1i) * -u_input.b.x) == -_wgslsmith_add_i32(u_input.b.x, u_input.b.x)));
    var var_1 = -1i;
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(arg_0.x, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.b.x, 74724i), firstLeadingBit(arg_0.x)) << (~abs(vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)), min(arg_0.yy, vec2<i32>(select(2147483647i, u_input.b.x, global4[_wgslsmith_index_u32(arg_1.b.a.x, 31u)]), 28529i))), ((i32(-1i) * -39147i) | u_input.b.x) ^ 62429i, ~arg_0.x);
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, 13529i | -u_input.b.x), ~(-28588i >> (1u % 32u))) << (func_2(arg_0 >> (~vec3<u32>(0u, arg_1.b.a.x, 20343u) % vec3<u32>(32u))).b.a.x % 32u);
    var var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(550f, arg_2.a.a, -620f)))), vec3<f32>(_wgslsmith_f_op_f32(abs(arg_3.a.a)), arg_2.a.a, _wgslsmith_f_op_f32(trunc(-716f))), false)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_2.d.a))))), 946f, _wgslsmith_f_op_f32(f32(-1f) * -482f))));
    return min(vec4<u32>(u_input.c, 41570u, ~14680u, 1u), ~select(vec4<u32>(_wgslsmith_add_u32(37307u, 1u), 1u >> (u_input.c % 32u), ~arg_2.b.x, 1u), countOneBits(vec4<u32>(arg_3.b.x, arg_3.b.x, arg_1.b.a.x, 1u)) | select(global2[_wgslsmith_index_u32(u_input.c, 5u)], vec4<u32>(arg_1.b.a.x, 1u, arg_1.a, arg_1.a), vec4<bool>(true, var_0.x, false, false)), var_0.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = u_input.b;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -238f)))));
    let var_2 = arg_0.zw;
    var var_3 = _wgslsmith_f_op_f32(exp2(var_1.a));
    let var_4 = Struct_3(select(_wgslsmith_clamp_vec4_u32(firstTrailingBit(global2[_wgslsmith_index_u32(100114u, 5u)]), global2[_wgslsmith_index_u32(1249u, 5u)], select(vec4<u32>(4294967295u, 0u, arg_2, 1u), global2[_wgslsmith_index_u32(22733u, 5u)], arg_1)), func_3(vec3<i32>(var_0.x, -26708i, -13774i), func_2(vec3<i32>(var_0.x, u_input.b.x, u_input.b.x)), global3[_wgslsmith_index_u32(~arg_2, 27u)], global3[_wgslsmith_index_u32(39475u, 27u)]), !any(vec2<bool>(arg_1, global4[_wgslsmith_index_u32(1u, 31u)]))) << (~(~global2[_wgslsmith_index_u32(countOneBits(17264u), 5u)]) % vec4<u32>(32u)));
    return _wgslsmith_sub_u32(~u_input.c, 4294967295u & arg_2);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = u_input.b.x;
    global2 = array<vec4<u32>, 5>();
    global3 = array<Struct_2, 27>();
    global3 = array<Struct_2, 27>();
    global4 = array<bool, 31>();
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1137f + -478f), _wgslsmith_f_op_f32(234f * 209f), 1114f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(893f, -2210f, 275f, 931f) + vec4<f32>(-333f, 165f, 441f, -1213f))))))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    global2 = array<vec4<u32>, 5>();
    global3 = array<Struct_2, 27>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(18652u, _wgslsmith_add_u32(_wgslsmith_add_u32(~382u, _wgslsmith_add_u32(u_input.a, 45473u)), arg_0))), 27u)];
    global0 = array<vec2<u32>, 28>();
    global1 = array<Struct_4, 26>();
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 26u)];
    global1 = array<Struct_4, 26>();
    global4 = array<bool, 31>();
    var var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.a.x, 25635u, 4294967295u, var_0.a), global2[_wgslsmith_index_u32(0u, 5u)]), vec4<u32>(u_input.a, 7352u, 0u, u_input.a)) >> (vec4<u32>(_wgslsmith_mod_u32(var_0.a & var_0.a, var_0.a), 0u, var_0.a, 0u) % vec4<u32>(32u)), ~(~firstLeadingBit(abs(var_0.b.a))));
    var var_2 = global1[_wgslsmith_index_u32(var_0.b.a.x & func_5(4294967295u, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_0.b.a.xzy, vec3<u32>(5112u, var_0.b.a.x, u_input.a)) | u_input.a, 27u)], _wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(31129u, 28u)], var_0.b.a.xy), ~45630u, func_1(vec4<f32>(466f, -535f, -735f, -914f), global4[_wgslsmith_index_u32(u_input.a, 31u)], u_input.c), 4294967295u), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b.x, 0i, 0i, u_input.b.x), select(vec4<i32>(1i, u_input.b.x, u_input.b.x, -1i), vec4<i32>(3083i, 2147483647i, 4330i, u_input.b.x), true)))), Struct_1(1770f)), 26u)];
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(641f, -957f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1098f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(var_2.b.a, vec4<i32>(u_input.b.x, 2147483647i, -40888i, u_input.b.x))).x * _wgslsmith_f_op_f32(371f * -1592f)))), _wgslsmith_f_op_f32(-1f), all(select(vec2<bool>(true, global4[_wgslsmith_index_u32(func_3(vec3<i32>(u_input.b.x, 0i, u_input.b.x), Struct_4(var_2.a, var_0.b, var_0.c), Struct_2(Struct_1(823f), var_0.b.a.wy, -439f, Struct_1(-1353f), false), global3[_wgslsmith_index_u32(var_0.a, 27u)]).x, 31u)]), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), !vec2<bool>(var_2.c, false), select(vec2<bool>(false, var_2.c), vec2<bool>(false, false), true)), !(!vec2<bool>(var_0.c, var_2.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(u_input.b.x, 22493i, -5413i, -1i)) >> (_wgslsmith_sub_vec4_u32(~global2[_wgslsmith_index_u32(4294967295u, 5u)], select(vec4<u32>(4294967295u, 57536u, u_input.c, u_input.c), var_0.b.a, select(vec4<bool>(true, true, var_2.c, false), vec4<bool>(true, global4[_wgslsmith_index_u32(var_2.b.a.x, 31u)], false, false), var_0.c))) % vec4<u32>(32u)));
}

