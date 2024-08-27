struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(32445i, -4435i, 39065i), vec3<i32>(-1i, 1i, -1i), vec3<i32>(18051i, i32(-2147483648), -23681i), vec3<i32>(80296i, 2384i, -25251i), vec3<i32>(6913i, -1i, -54057i), vec3<i32>(-23508i, -12822i, 2147483647i), vec3<i32>(0i, -1i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(-5517i, 0i, 0i), vec3<i32>(i32(-2147483648), 0i, -22500i), vec3<i32>(i32(-2147483648), -55290i, -46819i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(2147483647i, -8379i, -1i), vec3<i32>(-5127i, 14626i, 2147483647i), vec3<i32>(1i, 3612i, i32(-2147483648)), vec3<i32>(-16097i, 0i, i32(-2147483648)), vec3<i32>(1i, -37858i, -23718i), vec3<i32>(i32(-2147483648), 24958i, 27629i), vec3<i32>(0i, 1i, 1i), vec3<i32>(2147483647i, 33563i, 1i), vec3<i32>(3472i, 9634i, -1i), vec3<i32>(6915i, 4798i, -17996i), vec3<i32>(-1i, 1i, 13808i), vec3<i32>(2147483647i, 23638i, 9996i), vec3<i32>(2147483647i, 1i, -6907i));

var<private> global2: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(-699f, -563f, -30434i, true, Struct_2(vec4<u32>(0u, 4294967295u, 0u, 1u))), Struct_4(1001f, -1027f, i32(-2147483648), false, Struct_2(vec4<u32>(1u, 4294967295u, 63309u, 46868u))), Struct_4(-422f, 610f, 1i, true, Struct_2(vec4<u32>(17601u, 4294967295u, 51811u, 77368u))), Struct_4(-1969f, 236f, -1i, true, Struct_2(vec4<u32>(39545u, 4294967295u, 48880u, 15835u))), Struct_4(-228f, -975f, -37008i, true, Struct_2(vec4<u32>(36669u, 65793u, 93312u, 0u))), Struct_4(-420f, -744f, 11571i, false, Struct_2(vec4<u32>(1u, 0u, 18388u, 4253u))), Struct_4(-231f, -2319f, -1i, true, Struct_2(vec4<u32>(1u, 48217u, 1u, 1711u))), Struct_4(-387f, -503f, 1i, false, Struct_2(vec4<u32>(3925u, 1u, 4294967295u, 87011u))), Struct_4(179f, -224f, 1i, true, Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u))), Struct_4(-802f, -660f, 11312i, true, Struct_2(vec4<u32>(26038u, 83313u, 13328u, 12387u))), Struct_4(727f, -1000f, 0i, true, Struct_2(vec4<u32>(15651u, 1u, 4294967295u, 1u))), Struct_4(2481f, -923f, -1i, false, Struct_2(vec4<u32>(48332u, 19978u, 1u, 85549u))), Struct_4(364f, -1542f, 0i, true, Struct_2(vec4<u32>(99605u, 95625u, 0u, 12979u))), Struct_4(830f, -1099f, 27837i, true, Struct_2(vec4<u32>(106734u, 4294967295u, 88365u, 44788u))), Struct_4(908f, -110f, 62674i, true, Struct_2(vec4<u32>(11094u, 4294967295u, 4294967295u, 1u))), Struct_4(-1380f, 392f, 2147483647i, true, Struct_2(vec4<u32>(0u, 1u, 1u, 1u))), Struct_4(233f, -340f, -56828i, true, Struct_2(vec4<u32>(17221u, 1u, 4294967295u, 0u))), Struct_4(-1000f, 1273f, 1i, true, Struct_2(vec4<u32>(14154u, 58727u, 14248u, 4294967295u))), Struct_4(-123f, -2970f, -6572i, false, Struct_2(vec4<u32>(222u, 13779u, 0u, 6866u))), Struct_4(1684f, 1902f, 12999i, true, Struct_2(vec4<u32>(1u, 0u, 26436u, 31683u))));

var<private> global3: bool = false;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = select(vec2<bool>(true, true), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), u_input.a.x <= 16945i), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))));
    var var_1 = arg_0.zx;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(min(1f, 218f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1841f * _wgslsmith_f_op_f32(1529f + -306f))) + -1327f), 11673i, true, Struct_2(abs(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_1.x, 4555u), global0.a)))));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~92418u, 33984u, var_1.x), 20u)];
    var_1 = ~arg_0.xx;
    return select(~(~(global0.a.x << (_wgslsmith_clamp_u32(5063u, arg_0.x, arg_0.x) % 32u))), ~min(63335u, 1u), !(var_3.a < var_2.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> vec4<bool> {
    global1 = array<vec3<i32>, 28>();
    var var_0 = abs(vec4<u32>(_wgslsmith_mult_u32(5514u, 19302u), arg_2.a.a.x, global0.a.x, ~arg_0.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-329f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(232f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-3220f * 482f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-393f, _wgslsmith_div_f32(1000f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(342f, 223f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-975f, -1399f, -1565f, -1365f) * vec4<f32>(1828f, 661f, 1000f, 1558f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(687f, -395f, -1532f, -131f), vec4<f32>(1139f, 287f, 1535f, -396f), vec4<bool>(arg_2.a.d.x, true, arg_2.a.b.x, false)))))))));
    let var_2 = vec2<i32>(-(i32(-1i) * -1i), abs(67161i));
    var var_3 = arg_2.a;
    return vec4<bool>(arg_2.a.b.x, true, true, !var_3.d.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = arg_3;
    let var_1 = vec3<u32>(~(~(~firstTrailingBit(34762u))), 0u, global0.a.x);
    var var_2 = global0.a.x;
    global3 = all(select(select(arg_0.xx, select(!vec2<bool>(var_0.x, arg_3.x), !vec2<bool>(var_0.x, arg_3.x), vec2<bool>(true, true)), all(!arg_3)), select(arg_3.zy, arg_0.zy, !(true || arg_0.x)), true));
    global1 = array<vec3<i32>, 28>();
    return func_4(Struct_2(firstLeadingBit(vec4<u32>(16927u, ~global0.a.x, func_3(vec3<u32>(var_1.x, 12317u, 0u)), ~arg_2))), Struct_1(max(global0.a, global0.a), select(vec4<bool>(var_0.x, arg_3.x, true, !arg_3.x), vec4<bool>(arg_0.x & false, true, arg_3.x, any(vec3<bool>(arg_3.x, arg_0.x, true))), all(vec3<bool>(arg_3.x, true, true))), select(arg_3, select(arg_3, vec4<bool>(false, false, false, arg_3.x), select(vec4<bool>(arg_3.x, true, var_0.x, true), arg_3, vec4<bool>(var_0.x, var_0.x, true, false))), any(vec2<bool>(true, true))), select(arg_3.ww, !arg_0.zx, true)), Struct_3(Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(105698u, 11221u, 0u, var_1.x), abs(vec4<u32>(4294967295u, var_1.x, 1227u, 45988u))), select(!arg_3, select(vec4<bool>(arg_3.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, var_0.x, arg_3.x), true), !vec4<bool>(arg_0.x, arg_0.x, false, var_0.x)), vec4<bool>(var_0.x, true, arg_3.x, true), select(select(arg_3.zx, arg_3.zy, arg_0.yx), arg_0.yx, true))));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    let var_0 = ~(~global0.a.x);
    let var_1 = -2147483647i;
    var var_2 = all(select(arg_0.yyy, arg_0.zyz, true));
    let var_3 = Struct_3(Struct_1(global0.a, vec4<bool>(true, arg_0.x, func_2(func_2(arg_0.zwy, vec4<f32>(-285f, -1421f, arg_1, 1000f), 0u, arg_0).zzy, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-929f, arg_1, arg_1, arg_1), vec4<f32>(arg_1, -1346f, arg_1, 1092f), false)), _wgslsmith_dot_vec2_u32(global0.a.zy, vec2<u32>(var_0, var_0)), vec4<bool>(true, false, true, true)).x, true), vec4<bool>(any(vec2<bool>(true, arg_0.x)), global0.a.x >= _wgslsmith_sub_u32(global0.a.x, 36137u), arg_0.x, all(arg_0.xw)), func_2(vec3<bool>(true, any(vec4<bool>(arg_0.x, false, true, arg_0.x)), arg_1 <= 2309f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, -351f, arg_1, arg_1), vec4<f32>(arg_1, arg_1, -946f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1))), ~1u, !vec4<bool>(true, arg_0.x, false, arg_0.x)).xy));
    var_2 = any(!(!arg_0.zwy));
    return ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, countOneBits(1u), 4294967295u, var_3.a.a.x & 34065u), abs(_wgslsmith_div_vec4_u32(var_3.a.a, vec4<u32>(var_0, var_0, var_0, 23380u))));
}

fn func_1() -> Struct_2 {
    var var_0 = max(1u ^ global0.a.x, ~func_5(func_2(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(113f, 516f, 2418f, -332f) + vec4<f32>(828f, 1624f, 2310f, 712f)), _wgslsmith_dot_vec2_u32(global0.a.zz, global0.a.yz), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(299f * -1136f) - _wgslsmith_f_op_f32(min(1000f, 836f)))));
    var var_1 = 32415u >> ((global0.a.x | 0u) % 32u);
    let var_2 = _wgslsmith_clamp_u32(firstTrailingBit(4294967295u), 0u, _wgslsmith_div_u32(global0.a.x, _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(global0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a.x, 10867u, 4294967295u), global0.a), global0.a.x & 26292u))));
    var var_3 = _wgslsmith_f_op_f32(min(501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2011f)))));
    let var_4 = Struct_1(countOneBits(max(vec4<u32>(4294967295u, _wgslsmith_mod_u32(global0.a.x, 0u), ~1u, var_2), countOneBits(global0.a) << (global0.a % vec4<u32>(32u)))), func_4(Struct_2(vec4<u32>(min(42219u, 0u), _wgslsmith_div_u32(global0.a.x, global0.a.x), global0.a.x, var_2)), Struct_1(~vec4<u32>(4294967295u, var_2, global0.a.x, var_2), vec4<bool>(true, true, true, true), func_2(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec4<f32>(942f, 210f, 565f, -772f), var_2, vec4<bool>(true, true, true, true)), select(func_2(vec3<bool>(true, false, false), vec4<f32>(364f, 747f, 1221f, 1892f), var_2, vec4<bool>(true, true, false, true)).ww, func_2(vec3<bool>(true, true, true), vec4<f32>(-507f, -112f, -1343f, 2236f), 11078u, vec4<bool>(true, true, true, false)).zx, vec2<bool>(false, false))), Struct_3(Struct_1(firstTrailingBit(vec4<u32>(var_2, global0.a.x, 0u, var_2)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec2<bool>(true, true)))), !func_2(vec3<bool>(true, 30360u < var_2, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2687f, -791f, 121f, -183f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-302f, -850f, 308f, -1364f))), any(vec4<bool>(true, true, false, false)))), 13041u, vec4<bool>(true, true, true, true)), select(func_2(select(vec3<bool>(true, true, true), func_2(vec3<bool>(true, false, false), vec4<f32>(1172f, -355f, -993f, 1777f), 83834u, vec4<bool>(false, true, true, true)).zzy, u_input.a.x == u_input.a.x), vec4<f32>(1726f, -1093f, -571f, -2435f), _wgslsmith_sub_u32(36431u, 452u), vec4<bool>(true, true, true, true)).yx, vec2<bool>(true, true), true & func_4(Struct_2(global0.a), Struct_1(global0.a, vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec2<bool>(false, false)), Struct_3(Struct_1(global0.a, vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec2<bool>(true, true)))).x));
    return Struct_2(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(countOneBits(u_input.a.x), u_input.a.x), 2147483647i);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(1759f + -573f), -910f, i32(-1i) * -u_input.a.x, all(vec4<bool>(-1248i <= (var_0.x & u_input.a.x), true, all(vec3<bool>(false, false, true)), true && any(vec3<bool>(true, true, true)))), Struct_2(abs(vec4<u32>(firstTrailingBit(global0.a.x), ~global0.a.x, 26967u, ~9961u))));
    global3 = false;
    global0 = func_1();
    global1 = array<vec3<i32>, 28>();
    var var_2 = ~(vec2<u32>(func_3(var_1.e.a.yzw), 6663u) >> (vec2<u32>(var_1.e.a.x | 1u, func_5(vec4<bool>(var_1.d, var_1.d, var_1.d, var_1.d), 530f)) % vec2<u32>(32u)));
    let var_3 = func_1();
    global2 = array<Struct_4, 20>();
    global2 = array<Struct_4, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 20070u);
}

