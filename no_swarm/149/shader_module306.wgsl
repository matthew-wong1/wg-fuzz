struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-436f, 299f, 174f, 120f), vec4<f32>(619f, 844f, 2603f, 477f), vec4<f32>(-165f, -130f, 1052f, -1407f), vec4<f32>(-1551f, -346f, 1390f, 496f), vec4<f32>(596f, -927f, 278f, 496f), vec4<f32>(-1280f, 984f, -1101f, 1000f), vec4<f32>(-2443f, 1731f, -1177f, 1000f), vec4<f32>(1000f, 1456f, 557f, 1403f), vec4<f32>(636f, -869f, -1442f, -875f), vec4<f32>(-1367f, 569f, 417f, 267f), vec4<f32>(1583f, -1072f, -959f, 1284f), vec4<f32>(-288f, -1140f, 324f, 1000f), vec4<f32>(-399f, -1928f, 1394f, -149f), vec4<f32>(-422f, -1180f, 363f, -1455f), vec4<f32>(-1089f, -962f, 2419f, -650f), vec4<f32>(-1309f, 820f, -510f, -1205f), vec4<f32>(-2413f, 441f, 1000f, 618f), vec4<f32>(238f, 1000f, 2539f, 263f), vec4<f32>(-1592f, -686f, 362f, 733f), vec4<f32>(-1933f, 988f, 1253f, -867f), vec4<f32>(833f, -724f, -1000f, -346f), vec4<f32>(-1256f, -844f, 754f, -589f), vec4<f32>(-676f, -917f, -869f, -596f), vec4<f32>(250f, 1051f, -1506f, -2002f), vec4<f32>(736f, 1566f, 1112f, 2784f), vec4<f32>(1000f, 431f, -930f, 991f), vec4<f32>(296f, -640f, -147f, 633f));

var<private> global1: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global2: array<vec2<i32>, 1>;

var<private> global3: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(1032f, 2147483647i, Struct_2(vec4<bool>(false, true, false, true))), Struct_3(1539f, 1i, Struct_2(vec4<bool>(true, false, true, true))), Struct_3(-412f, -16319i, Struct_2(vec4<bool>(true, false, true, true))), Struct_3(986f, -40778i, Struct_2(vec4<bool>(false, false, true, true))), Struct_3(-1124f, 1i, Struct_2(vec4<bool>(false, true, true, false))), Struct_3(570f, 30734i, Struct_2(vec4<bool>(false, false, true, false))), Struct_3(-1136f, 2847i, Struct_2(vec4<bool>(true, true, true, false))), Struct_3(1845f, 46835i, Struct_2(vec4<bool>(true, false, true, false))), Struct_3(172f, -1i, Struct_2(vec4<bool>(false, false, false, true))), Struct_3(1401f, 0i, Struct_2(vec4<bool>(true, false, true, true))), Struct_3(-2031f, 0i, Struct_2(vec4<bool>(true, false, false, false))), Struct_3(1000f, i32(-2147483648), Struct_2(vec4<bool>(true, false, false, true))), Struct_3(-940f, 2147483647i, Struct_2(vec4<bool>(true, false, true, true))), Struct_3(931f, 1i, Struct_2(vec4<bool>(false, false, true, false))), Struct_3(-751f, 0i, Struct_2(vec4<bool>(true, true, true, true))), Struct_3(-292f, i32(-2147483648), Struct_2(vec4<bool>(false, false, true, false))), Struct_3(-141f, i32(-2147483648), Struct_2(vec4<bool>(false, false, true, true))), Struct_3(-1000f, 35973i, Struct_2(vec4<bool>(true, true, true, true))), Struct_3(-235f, -1i, Struct_2(vec4<bool>(true, false, true, false))), Struct_3(-2034f, -37253i, Struct_2(vec4<bool>(true, true, false, true))), Struct_3(1696f, i32(-2147483648), Struct_2(vec4<bool>(false, true, false, true))), Struct_3(-367f, 2147483647i, Struct_2(vec4<bool>(true, true, false, true))), Struct_3(-1000f, 2147483647i, Struct_2(vec4<bool>(false, false, true, true))), Struct_3(-204f, -26179i, Struct_2(vec4<bool>(false, false, false, true))), Struct_3(1000f, 2934i, Struct_2(vec4<bool>(true, true, true, false))), Struct_3(633f, 0i, Struct_2(vec4<bool>(true, true, false, true))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, _wgslsmith_f_op_f32(ceil(-327f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1194f, _wgslsmith_f_op_f32(sign(-418f))))), _wgslsmith_f_op_f32(2886f * _wgslsmith_f_op_f32(f32(-1f) * -1693f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -452f)) - var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -827f)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = u_input.e.x;
    var var_1 = _wgslsmith_f_op_f32(-1134f - -1000f);
    let var_2 = select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), global1[_wgslsmith_index_u32(min(u_input.c.x, 0u) ^ u_input.e.x, 2u)], any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)))), vec2<bool>(true, true), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-3572f)), _wgslsmith_f_op_f32(floor(-1037f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-418f, -604f) + vec2<f32>(-351f, 674f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(983f, -1187f) - vec2<f32>(-1000f, -821f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(476f, -132f)), vec2<bool>(var_2.x, false))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(-2185f, -1000f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(trunc(-200f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(2492f)))))));
    let var_4 = var_3;
    return Struct_2(vec4<bool>(var_2.x, !var_2.x, 868f >= var_4.x, var_2.x));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec4<f32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), 448f)) + _wgslsmith_f_op_f32(step(-1602f, _wgslsmith_f_op_f32(f32(-1f) * -1400f)))), -354f, -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-374f, _wgslsmith_f_op_f32(ceil(-1136f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.xxz, arg_2.zwz), 27u)])))), !select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), select(arg_0.a.yxw, arg_0.a.zww, arg_0.a.x), -2147483647i <= u_input.d.x), !(!vec3<bool>(arg_0.a.x, arg_0.a.x, false)), !select(vec3<bool>(arg_0.a.x, arg_0.a.x, false), vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, true, false))), false, ~select(vec4<i32>(1i, ~(-6606i), u_input.d.x ^ -15970i, u_input.d.x), vec4<i32>(-2147483647i, ~u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(43871i, u_input.d.x, u_input.d.x, 2147483647i), vec4<i32>(u_input.d.x, -2147483647i, 15562i, u_input.d.x)), u_input.d.x), true));
    var var_3 = Struct_2(arg_0.a);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 + var_1))))), var_3.a.www, any(vec3<bool>(arg_0.a.x, var_2.b.x, all(var_2.b.yz))), firstLeadingBit(var_2.d));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_2(~(-1i)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(37693u, 59312u, u_input.c.x), ~u_input.e.wzx | vec3<u32>(u_input.b.x, u_input.e.x, u_input.c.x)), ~(~(~4294967295u))), ~_wgslsmith_mult_vec4_u32(u_input.a ^ ~u_input.e, vec4<u32>(u_input.a.x | u_input.e.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 1u)), 1u & u_input.a.x, ~16288u)));
    var var_1 = !func_4(Struct_2(vec4<bool>(var_0.b.x, true, true, true)), ~firstLeadingBit(u_input.b.x), abs(~u_input.e)).b.yy;
    global0 = array<vec4<f32>, 27>();
    var var_2 = 26358i;
    let var_3 = global3[_wgslsmith_index_u32(u_input.a.x, 26u)];
    return func_4(func_2(_wgslsmith_mod_i32(max(u_input.d.x, 0i), select(var_3.b, 1i, var_3.c.a.x))), u_input.c.x, vec4<u32>(4294967295u, ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a.x), u_input.c)), ~firstLeadingBit(reverseBits(23909u)), countOneBits(0u)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    global3 = array<Struct_3, 26>();
    global3 = array<Struct_3, 26>();
    var var_0 = abs(abs(55211u));
    var_0 = ~71918u;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(4294967295u, 27u)]));
    return (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -148f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1699f, _wgslsmith_f_op_f32(min(arg_3.a.x, arg_3.a.x)), arg_3.b.x)) + _wgslsmith_f_op_f32(max(-300f, _wgslsmith_f_op_f32(select(3124f, var_1.x, arg_3.b.x)))))) != !(var_1.x != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-395f + var_1.x))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_3(arg_0.a.x, select(5972i ^ ~(u_input.d.x << (arg_1.x % 32u)), func_1().d.x, true), func_2(_wgslsmith_dot_vec3_i32(arg_0.d.xwx, vec3<i32>(~1i, u_input.d.x, ~arg_2))));
    let var_1 = arg_0.a.yy;
    var var_2 = arg_3.x;
    global0 = array<vec4<f32>, 27>();
    var var_3 = -400f;
    return Struct_2(var_0.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(vec4<f32>(226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-745f - 219f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f * 1354f) - _wgslsmith_f_op_f32(f32(-1f) * -671f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(f32(-1f) * -295f)))), vec3<bool>(true, false, true), func_5(vec2<i32>(-1282i, 23748i ^ u_input.d.x), ~(~u_input.a.xzz), vec3<i32>(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i)), 1i), func_1()), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d.x, 27085i), ~vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), -countOneBits(-22685i), u_input.d.x, ~(i32(-1i) * -765i))), abs(u_input.e), -16092i, ~_wgslsmith_add_vec3_u32((u_input.a.wwy ^ vec3<u32>(1u, 0u, 0u)) << (vec3<u32>(61754u, 0u, 89470u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(u_input.e.zwx, u_input.e.zww) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 46617u, 4294967295u), u_input.e.xwy) % vec3<u32>(32u))));
    let var_1 = ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.d.x, _wgslsmith_div_i32(1i, u_input.d.x), 0i), abs(~vec3<i32>(2147483647i, 2326i, u_input.d.x))));
    let var_2 = func_4(func_2(_wgslsmith_clamp_i32(0i, -2147483647i, var_1)), _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mult_u32(4294967295u, u_input.b.x)), ~(~62908u)) & ~abs(1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, 12431u), 1u, 57866u, u_input.b.x), firstTrailingBit(~u_input.a)));
    var var_3 = var_2.a.x;
    var var_4 = var_2.b.x;
    var var_5 = var_2.a.wyz;
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x));
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -722f);
    var var_7 = _wgslsmith_sub_vec4_i32(~min(vec4<i32>(-8431i, var_1, u_input.d.x, u_input.d.x), vec4<i32>(1i, ~var_2.d.x, firstLeadingBit(var_1), -21389i)), ~var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.b.x, 56305u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 21643u), _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(4294967295u, 1u)))), var_7.x);
}

