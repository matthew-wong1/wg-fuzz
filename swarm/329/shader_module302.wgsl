struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec2<bool>(true, true), Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(-1437f, 470f, 980f), -24080i, false, vec4<bool>(true, true, false, false)), Struct_1(vec2<u32>(49071u, 76593u), vec3<f32>(288f, 1043f, 189f), i32(-2147483648), true, vec4<bool>(true, true, false, false))), Struct_3(vec2<bool>(true, false), Struct_1(vec2<u32>(1u, 43310u), vec3<f32>(-1194f, -216f, -1657f), -11713i, true, vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(0u, 0u), vec3<f32>(138f, -762f, -815f), 8634i, false, vec4<bool>(true, true, true, false))), Struct_3(vec2<bool>(false, false), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-347f, -1554f, -992f), i32(-2147483648), false, vec4<bool>(false, true, false, true)), Struct_1(vec2<u32>(16937u, 1u), vec3<f32>(695f, 1740f, -216f), 59165i, true, vec4<bool>(true, false, true, true))), Struct_3(vec2<bool>(false, false), Struct_1(vec2<u32>(22233u, 58522u), vec3<f32>(-1464f, 408f, 406f), 0i, true, vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(3101u, 13747u), vec3<f32>(-940f, -1561f, -554f), 2147483647i, true, vec4<bool>(false, false, false, false))), Struct_3(vec2<bool>(true, false), Struct_1(vec2<u32>(47241u, 18094u), vec3<f32>(-358f, -1000f, -521f), -50876i, false, vec4<bool>(false, true, true, true)), Struct_1(vec2<u32>(17750u, 12424u), vec3<f32>(1407f, 1372f, 1053f), 11346i, false, vec4<bool>(false, true, true, false))), Struct_3(vec2<bool>(true, false), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-730f, 631f, -1670f), 51020i, true, vec4<bool>(true, false, true, false)), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-1886f, -532f, -220f), 1i, true, vec4<bool>(true, true, true, false))), Struct_3(vec2<bool>(true, false), Struct_1(vec2<u32>(21099u, 0u), vec3<f32>(2268f, 308f, 585f), -12801i, false, vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(138657u, 1u), vec3<f32>(554f, -308f, -326f), -1i, true, vec4<bool>(false, true, true, true))), Struct_3(vec2<bool>(false, true), Struct_1(vec2<u32>(0u, 43106u), vec3<f32>(-697f, -148f, 828f), 38862i, true, vec4<bool>(true, true, true, false)), Struct_1(vec2<u32>(4294967295u, 64225u), vec3<f32>(739f, -1060f, 2035f), -50320i, false, vec4<bool>(false, false, false, false))), Struct_3(vec2<bool>(true, true), Struct_1(vec2<u32>(4294967295u, 94957u), vec3<f32>(2231f, 1373f, -1066f), 9554i, false, vec4<bool>(true, true, false, false)), Struct_1(vec2<u32>(1u, 1u), vec3<f32>(1482f, -421f, -753f), -1i, false, vec4<bool>(false, true, false, true))), Struct_3(vec2<bool>(false, true), Struct_1(vec2<u32>(35407u, 17340u), vec3<f32>(138f, 993f, 1330f), -1i, false, vec4<bool>(true, false, true, true)), Struct_1(vec2<u32>(42838u, 1u), vec3<f32>(1671f, -127f, -1000f), -65699i, true, vec4<bool>(true, false, true, true))), Struct_3(vec2<bool>(true, true), Struct_1(vec2<u32>(26126u, 1u), vec3<f32>(339f, 1694f, -1675f), 0i, false, vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(0u, 36961u), vec3<f32>(128f, -276f, -1261f), i32(-2147483648), false, vec4<bool>(true, false, false, true))), Struct_3(vec2<bool>(true, false), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(-470f, 1603f, 1000f), -1i, false, vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-218f, 424f, -1071f), 3755i, true, vec4<bool>(true, true, true, false))), Struct_3(vec2<bool>(false, false), Struct_1(vec2<u32>(5086u, 18203u), vec3<f32>(-1000f, 629f, 624f), 59757i, true, vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(0u, 15513u), vec3<f32>(297f, -1000f, 165f), 20166i, false, vec4<bool>(true, true, true, true))), Struct_3(vec2<bool>(false, false), Struct_1(vec2<u32>(49011u, 0u), vec3<f32>(1279f, -1380f, 662f), 0i, true, vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(7015u, 49116u), vec3<f32>(-275f, -221f, 312f), 1i, false, vec4<bool>(true, false, true, false))), Struct_3(vec2<bool>(false, true), Struct_1(vec2<u32>(38704u, 17373u), vec3<f32>(-1000f, -802f, -569f), 226i, false, vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(4294967295u, 35698u), vec3<f32>(-324f, -2076f, 2100f), -1i, false, vec4<bool>(false, true, true, true))), Struct_3(vec2<bool>(true, false), Struct_1(vec2<u32>(27192u, 4294967295u), vec3<f32>(2138f, 477f, 552f), -1210i, false, vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(-1113f, -966f, 3240f), 0i, false, vec4<bool>(false, false, true, true))), Struct_3(vec2<bool>(false, true), Struct_1(vec2<u32>(72787u, 0u), vec3<f32>(-1299f, -1266f, -1310f), 1i, false, vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(15395u, 1u), vec3<f32>(813f, -1338f, 1764f), 2147483647i, true, vec4<bool>(false, true, false, false))), Struct_3(vec2<bool>(true, false), Struct_1(vec2<u32>(34958u, 2732u), vec3<f32>(132f, -715f, 2102f), -59359i, false, vec4<bool>(true, true, false, false)), Struct_1(vec2<u32>(4294967295u, 20503u), vec3<f32>(-217f, 485f, -1218f), -12534i, true, vec4<bool>(true, true, false, true))), Struct_3(vec2<bool>(true, true), Struct_1(vec2<u32>(544u, 50913u), vec3<f32>(-1000f, -750f, -257f), 2147483647i, true, vec4<bool>(true, false, true, false)), Struct_1(vec2<u32>(4294967295u, 40589u), vec3<f32>(765f, -1596f, -1000f), -5834i, false, vec4<bool>(false, true, false, false))), Struct_3(vec2<bool>(true, false), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(1000f, 2256f, 110f), -1i, false, vec4<bool>(false, true, true, true)), Struct_1(vec2<u32>(21651u, 95733u), vec3<f32>(982f, 355f, 621f), 2147483647i, true, vec4<bool>(true, false, false, false))), Struct_3(vec2<bool>(false, false), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(321f, -295f, -802f), -36285i, false, vec4<bool>(false, true, true, true)), Struct_1(vec2<u32>(15320u, 26912u), vec3<f32>(-882f, 1918f, 408f), 8520i, false, vec4<bool>(false, true, true, false))), Struct_3(vec2<bool>(false, true), Struct_1(vec2<u32>(59094u, 16588u), vec3<f32>(-2427f, 565f, -938f), -1i, false, vec4<bool>(true, false, true, false)), Struct_1(vec2<u32>(36419u, 0u), vec3<f32>(-477f, 748f, 893f), -13716i, false, vec4<bool>(true, true, false, false))), Struct_3(vec2<bool>(true, true), Struct_1(vec2<u32>(0u, 43425u), vec3<f32>(1073f, 436f, 1084f), -1i, true, vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(15776u, 3510u), vec3<f32>(-710f, -252f, 330f), -1i, false, vec4<bool>(true, false, false, true))), Struct_3(vec2<bool>(false, false), Struct_1(vec2<u32>(65333u, 2031u), vec3<f32>(-1624f, 704f, -2750f), 20483i, true, vec4<bool>(false, false, false, true)), Struct_1(vec2<u32>(43164u, 4294967295u), vec3<f32>(152f, -2197f, 173f), -1097i, true, vec4<bool>(true, false, true, true))));

var<private> global2: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> i32 {
    global2 = 139f;
    let var_0 = vec3<f32>(-862f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2032f - -1468f) + -112f)), global0.b.b.x);
    let var_1 = 27636i;
    global0 = global1[_wgslsmith_index_u32(1u, 24u)];
    var var_2 = !select(global0.b.e.yx, !global0.a, vec2<bool>(u_input.d.x > (arg_0.x ^ u_input.d.x), global0.a.x));
    return _wgslsmith_clamp_i32(i32(-1i) * -59196i, u_input.a.x, 24871i);
}

fn func_2(arg_0: bool) -> vec2<f32> {
    var var_0 = global0.b.b.xy;
    let var_1 = Struct_4(-_wgslsmith_add_i32(countOneBits(_wgslsmith_clamp_i32(u_input.a.x, 25386i, -2147483647i)), firstLeadingBit(u_input.a.x) & ~15961i), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(23244i, u_input.d.x, 1i, global0.b.c), vec4<i32>(u_input.d.x, global0.b.c, u_input.d.x, global0.b.c)), u_input.a.x) > ~(-2147483647i), u_input.d.x, global0.b.e.xxw, u_input.c.xxy);
    let var_2 = 1u & firstTrailingBit(1u);
    var var_3 = Struct_2(Struct_1(~var_1.e.xy, _wgslsmith_div_vec3_f32(global0.c.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -823f, 1258f), vec3<f32>(-220f, var_0.x, var_0.x)))), func_3(u_input.d, (36371u & var_2) | _wgslsmith_add_u32(u_input.b, global0.b.a.x), all(global0.c.e.yx)), any(select(vec4<bool>(var_1.b, false, global0.b.d, arg_0), !global0.b.e, global0.c.e)), select(!select(vec4<bool>(var_1.b, false, global0.b.e.x, global0.c.d), vec4<bool>(global0.b.e.x, var_1.b, true, false), false), !global0.c.e, var_1.d.x)), !(!(reverseBits(1u) > (global0.c.a.x << (4294967295u % 32u)))), vec2<f32>(var_0.x, -1185f), ~(-(~2147483647i)));
    var var_4 = 2147483647i;
    return global0.c.b.yz;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_4 {
    var var_0 = vec4<f32>(1073f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1222f)))), 218f, _wgslsmith_f_op_f32(ceil(arg_0.x)));
    let var_1 = 11562i;
    var var_2 = abs(vec2<u32>(_wgslsmith_add_u32(~reverseBits(global0.c.a.x), u_input.c.x), ~95699u));
    var var_3 = var_0.x;
    let var_4 = arg_1;
    return arg_1;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: f32, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = global0.c;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1314f, arg_2, true))), 675f, false))) + var_0.b.x);
    var var_2 = vec4<i32>(~arg_1, ~0i, 1i, u_input.d.x) << (vec4<u32>(_wgslsmith_clamp_u32(max(~var_0.a.x, _wgslsmith_mod_u32(global0.c.a.x, u_input.e)), ~1u, var_0.a.x), abs(1u), u_input.c.x, var_0.a.x) % vec4<u32>(32u));
    let var_3 = func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(global0.a.x)), var_0.b.yx, true)))), arg_0.xy), Struct_4(14092i, !select(true, any(vec2<bool>(var_0.e.x, var_0.d)), !global0.c.e.x), countOneBits(reverseBits(~u_input.d.x)), select(!select(vec3<bool>(false, false, true), var_0.e.yyx, var_0.d), vec3<bool>(true, select(false, true, global0.a.x), global0.b.e.x), any(select(var_0.e.xwz, vec3<bool>(var_0.e.x, global0.b.d, true), global0.b.e.zzx))), vec3<u32>(max(_wgslsmith_dot_vec3_u32(u_input.c.zwy, vec3<u32>(u_input.c.x, 14624u, 0u)), _wgslsmith_dot_vec3_u32(u_input.c.xyy, u_input.c.zyx)), 1u, 56508u)));
    var var_4 = var_0.d;
    return vec2<u32>(var_0.a.x, global0.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, global0.b.b.x, global0.c.b.x, global0.c.b.x))), -global0.c.c, global0.b.b.x, global0.c.b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(299f)) + -1167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b.x * _wgslsmith_f_op_f32(-global0.b.b.x))), global0.b.b.x), u_input.a.x, true, global0.b.e);
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.c.xy), _wgslsmith_sub_vec2_u32(select(vec2<u32>(17518u, 1u), vec2<u32>(571u, u_input.b), var_0.e.x), u_input.c.xz)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.b.x, -162f) + -653f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(true)).x)), _wgslsmith_f_op_f32(trunc(var_0.b.x))), -46675i, false, select(var_0.e, !select(vec4<bool>(global0.c.d, global0.b.e.x, true, var_0.d), vec4<bool>(true, global0.a.x, true, var_0.d), false), false)), !((24099i <= _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.c, -1613i, var_0.c), vec3<i32>(global0.b.c, -2147483647i, 0i))) | true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * global0.b.b.x) + _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(global0.b.b.x * var_0.b.x)), ~(-11208i));
    var var_2 = var_0.b.x;
    var var_3 = var_1;
    global2 = -1453f;
    let x = u_input.a;
    s_output = StorageBuffer(-1065f);
}

