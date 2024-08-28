struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(-1101f, 1u, false, vec2<u32>(34612u, 4294967295u)), Struct_3(101f, 80158u, true, vec2<u32>(0u, 4294967295u)), Struct_3(364f, 21311u, true, vec2<u32>(501u, 4294967295u)), Struct_3(-1177f, 145914u, true, vec2<u32>(0u, 0u)), Struct_3(-1994f, 69595u, false, vec2<u32>(46086u, 4294967295u)), Struct_3(1558f, 4294967295u, false, vec2<u32>(0u, 31323u)), Struct_3(298f, 4294967295u, true, vec2<u32>(4294967295u, 0u)), Struct_3(-411f, 1u, true, vec2<u32>(0u, 41873u)), Struct_3(-985f, 24183u, true, vec2<u32>(3939u, 4294967295u)), Struct_3(-680f, 1u, false, vec2<u32>(18753u, 110402u)), Struct_3(812f, 33812u, false, vec2<u32>(458u, 67452u)), Struct_3(-1000f, 4294967295u, true, vec2<u32>(0u, 4294967295u)), Struct_3(1000f, 8095u, false, vec2<u32>(26168u, 1u)), Struct_3(-501f, 0u, true, vec2<u32>(6495u, 1798u)), Struct_3(272f, 43452u, true, vec2<u32>(0u, 12307u)), Struct_3(-994f, 33986u, true, vec2<u32>(12306u, 4294967295u)), Struct_3(-221f, 1u, false, vec2<u32>(0u, 0u)), Struct_3(-593f, 1u, true, vec2<u32>(1u, 10078u)), Struct_3(1108f, 1u, false, vec2<u32>(0u, 1u)), Struct_3(1516f, 4294967295u, true, vec2<u32>(4294967295u, 28747u)), Struct_3(-598f, 1u, false, vec2<u32>(18674u, 60700u)), Struct_3(1000f, 1u, true, vec2<u32>(4294967295u, 31940u)), Struct_3(-495f, 0u, false, vec2<u32>(1u, 1u)), Struct_3(1432f, 14888u, false, vec2<u32>(18810u, 4294967295u)), Struct_3(-846f, 4294967295u, false, vec2<u32>(30361u, 4294967295u)), Struct_3(1567f, 1u, false, vec2<u32>(4294967295u, 1u)), Struct_3(-1278f, 746u, false, vec2<u32>(0u, 8771u)), Struct_3(-417f, 0u, true, vec2<u32>(4294967295u, 54783u)), Struct_3(1451f, 51561u, true, vec2<u32>(1u, 21868u)));

var<private> global1: vec3<u32>;

var<private> global2: u32;

var<private> global3: array<i32, 6>;

var<private> global4: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(1284f, vec3<i32>(30789i, -40364i, 1i), vec3<bool>(true, true, true), vec2<u32>(0u, 1u), vec2<f32>(2756f, -1067f)), Struct_1(1000f, vec3<i32>(49860i, -27659i, -1i), vec3<bool>(false, false, true), vec2<u32>(32456u, 43347u), vec2<f32>(-1788f, -1265f)), Struct_1(468f, vec3<i32>(39481i, 2147483647i, 0i), vec3<bool>(true, true, false), vec2<u32>(58146u, 0u), vec2<f32>(-315f, 246f)), Struct_1(943f, vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<bool>(true, true, false), vec2<u32>(1u, 1u), vec2<f32>(-398f, -1055f)), Struct_1(-1028f, vec3<i32>(63206i, 2147483647i, 16415i), vec3<bool>(false, false, true), vec2<u32>(0u, 1u), vec2<f32>(-771f, 1000f)), Struct_1(1000f, vec3<i32>(i32(-2147483648), 14491i, -34007i), vec3<bool>(false, false, true), vec2<u32>(1244u, 24147u), vec2<f32>(-1386f, 1000f)), Struct_1(-172f, vec3<i32>(2147483647i, 0i, -22143i), vec3<bool>(true, true, true), vec2<u32>(19721u, 4294967295u), vec2<f32>(-332f, 3141f)), Struct_1(561f, vec3<i32>(1i, 42179i, 1i), vec3<bool>(true, true, true), vec2<u32>(0u, 4294967295u), vec2<f32>(583f, 1378f)), Struct_1(-1000f, vec3<i32>(0i, 62642i, 9527i), vec3<bool>(true, true, false), vec2<u32>(43904u, 4294967295u), vec2<f32>(433f, -633f)), Struct_1(-1145f, vec3<i32>(-4485i, 1i, 0i), vec3<bool>(false, false, false), vec2<u32>(24675u, 0u), vec2<f32>(187f, -1259f)), Struct_1(528f, vec3<i32>(0i, -25313i, 2147483647i), vec3<bool>(false, false, false), vec2<u32>(2414u, 33928u), vec2<f32>(476f, 127f)), Struct_1(104f, vec3<i32>(2147483647i, -1i, 8112i), vec3<bool>(true, true, true), vec2<u32>(107969u, 1u), vec2<f32>(-125f, 702f)), Struct_1(419f, vec3<i32>(14546i, 23459i, -38733i), vec3<bool>(false, false, true), vec2<u32>(62252u, 1u), vec2<f32>(-479f, 700f)), Struct_1(500f, vec3<i32>(2147483647i, -432i, 26128i), vec3<bool>(false, false, false), vec2<u32>(20530u, 0u), vec2<f32>(906f, -494f)), Struct_1(-1008f, vec3<i32>(-2361i, i32(-2147483648), -20699i), vec3<bool>(false, false, true), vec2<u32>(0u, 0u), vec2<f32>(-496f, -1330f)), Struct_1(1084f, vec3<i32>(1i, -13167i, -1i), vec3<bool>(false, true, true), vec2<u32>(8572u, 1u), vec2<f32>(644f, -676f)), Struct_1(-840f, vec3<i32>(i32(-2147483648), -52906i, 0i), vec3<bool>(true, false, true), vec2<u32>(4294967295u, 48540u), vec2<f32>(670f, -1000f)), Struct_1(1879f, vec3<i32>(-22741i, 1i, 1i), vec3<bool>(false, false, false), vec2<u32>(52533u, 14344u), vec2<f32>(-132f, 185f)), Struct_1(310f, vec3<i32>(1i, 0i, i32(-2147483648)), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 1u), vec2<f32>(1135f, 826f)), Struct_1(1784f, vec3<i32>(1i, 8732i, 25741i), vec3<bool>(false, false, true), vec2<u32>(0u, 36572u), vec2<f32>(-1640f, 461f)), Struct_1(-1069f, vec3<i32>(46279i, 25147i, 2147483647i), vec3<bool>(true, false, false), vec2<u32>(1u, 9042u), vec2<f32>(625f, 1000f)), Struct_1(-123f, vec3<i32>(2147483647i, 59186i, -22121i), vec3<bool>(false, false, true), vec2<u32>(1u, 0u), vec2<f32>(-331f, 760f)), Struct_1(-732f, vec3<i32>(-11127i, i32(-2147483648), -1i), vec3<bool>(true, false, false), vec2<u32>(87u, 1u), vec2<f32>(566f, 129f)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    global2 = u_input.b.x;
    let var_0 = arg_2.b;
    var var_1 = Struct_5(Struct_2(arg_2.a, Struct_1(arg_2.a.e.x, -_wgslsmith_div_vec3_i32(arg_2.b.b, var_0.b), vec3<bool>(any(vec4<bool>(false, arg_2.a.c.x, false, var_0.c.x)), any(vec3<bool>(true, false, true)), all(vec3<bool>(false, arg_0.a.x, arg_0.a.x))), max(_wgslsmith_clamp_vec2_u32(global1.yz, vec2<u32>(0u, global1.x), arg_3.a.d), u_input.b.xz >> (arg_2.a.d % vec2<u32>(32u))), arg_2.b.e)), ~(-39826i), !vec3<bool>(true, true, arg_3.b.c.x), arg_3.b.b.x, select(vec3<bool>(_wgslsmith_div_f32(arg_1, 399f) != -924f, all(select(vec2<bool>(arg_0.a.x, arg_3.b.c.x), arg_2.b.c.yz, var_0.c.x)), arg_3.b.c.x), arg_2.a.c, !select(select(vec3<bool>(false, arg_3.a.c.x, true), vec3<bool>(true, arg_0.a.x, arg_2.b.c.x), vec3<bool>(arg_2.a.c.x, var_0.c.x, arg_0.a.x)), var_0.c, select(arg_2.b.c, var_0.c, arg_0.a))));
    let var_2 = ~firstLeadingBit(u_input.a.yww);
    let var_3 = any(vec4<bool>(var_1.a.b.c.x, select(false, !arg_0.a.x, any(vec2<bool>(true, true))), true, var_0.c.x));
    return !select(select(select(var_1.e, var_1.c, arg_3.b.c), vec3<bool>(true, false, true), !(!var_0.c.x)), vec3<bool>(all(vec2<bool>(false, true)), any(var_1.a.a.c), true), vec3<bool>(any(vec2<bool>(false, true)), false, var_1.a.b.c.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec3<bool> {
    global3 = array<i32, 6>();
    global1 = u_input.b.xww;
    var var_0 = u_input.a.x;
    var var_1 = ~(~(~global1.zx));
    global4 = array<Struct_1, 23>();
    return select(select(select(func_3(Struct_4(vec3<bool>(true, true, true), global1.x), 542f, Struct_2(global4[_wgslsmith_index_u32(global1.x, 23u)], Struct_1(-781f, vec3<i32>(arg_1.x, 32420i, arg_1.x), vec3<bool>(false, false, true), vec2<u32>(2948u, u_input.a.x), vec2<f32>(627f, -1637f))), Struct_2(global4[_wgslsmith_index_u32(u_input.a.x, 23u)], Struct_1(arg_0.x, vec3<i32>(global3[_wgslsmith_index_u32(1u, 6u)], arg_1.x, 1419i), vec3<bool>(true, true, false), vec2<u32>(1u, var_1.x), arg_0.zx))), func_3(Struct_4(vec3<bool>(false, true, false), global1.x), arg_0.x, Struct_2(Struct_1(arg_0.x, vec3<i32>(global3[_wgslsmith_index_u32(var_1.x, 6u)], -1i, -62218i), vec3<bool>(true, false, false), global1.xz, arg_0.zz), global4[_wgslsmith_index_u32(u_input.b.x, 23u)]), Struct_2(global4[_wgslsmith_index_u32(global1.x, 23u)], Struct_1(-1657f, vec3<i32>(-12143i, 1i, arg_1.x), vec3<bool>(true, false, false), vec2<u32>(0u, 59651u), vec2<f32>(arg_0.x, -341f)))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(false, all(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, false))), vec3<bool>(select(true, true, true), false, false)), !func_3(Struct_4(vec3<bool>(true, true, true), max(var_1.x, 0u)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(699f * arg_0.x)), Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, var_1.x, 413u), 23u)], Struct_1(-331f, vec3<i32>(-2147483647i, arg_1.x, u_input.c), vec3<bool>(false, true, false), u_input.a.zz, arg_0.xy)), Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(46222u, var_1.x), 23u)], Struct_1(1105f, vec3<i32>(arg_1.x, arg_1.x, global3[_wgslsmith_index_u32(1u, 6u)]), vec3<bool>(false, true, true), vec2<u32>(9442u, 4294967295u), arg_0.xx))), true);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> vec2<u32> {
    let var_0 = any(vec3<bool>(true, true, true));
    var var_1 = Struct_4(select(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, 1000f, arg_1.x), vec3<bool>(false, true, true)))), firstTrailingBit(vec2<i32>(22781i, -2147483647i))), !vec3<bool>(!var_0, arg_1.x > -1144f, all(vec4<bool>(false, var_0, true, var_0))), false), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global1.x) & global1.zx, u_input.a.ww));
    var var_2 = Struct_2(global4[_wgslsmith_index_u32(global1.x, 23u)], global4[_wgslsmith_index_u32(~arg_0, 23u)]);
    var var_3 = global0[_wgslsmith_index_u32(~var_2.a.d.x, 29u)];
    var var_4 = var_2.b.b | var_2.a.b;
    return _wgslsmith_clamp_vec2_u32(global1.yy, _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_mod_u32(15447u, arg_0), 6677u)), (u_input.b.wx << (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) >> (var_3.d % vec2<u32>(32u))), ~abs(vec2<u32>(u_input.a.x, var_1.b)) << (select(_wgslsmith_sub_vec2_u32(max(vec2<u32>(2622u, arg_0), vec2<u32>(arg_0, var_2.b.d.x)), ~var_2.b.d), select(abs(vec2<u32>(93741u, global1.x)), _wgslsmith_add_vec2_u32(global1.zy, vec2<u32>(46173u, var_1.b)), vec2<bool>(var_3.c, var_3.c)), var_4.x <= global3[_wgslsmith_index_u32(~var_3.d.x, 6u)]) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 23>();
    let var_0 = ~min(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), ~vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, u_input.b.x)), _wgslsmith_clamp_u32(global1.x, 52655u, 76968u)) >> (_wgslsmith_div_vec2_u32(func_1(35258u, vec2<f32>(-881f, 145f)), countOneBits(vec2<u32>(u_input.b.x, 19227u))) % vec2<u32>(32u)));
    var var_1 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(u_input.c), 1i, 1i), select(_wgslsmith_sub_vec3_i32(vec3<i32>(15986i, 24523i, u_input.c), vec3<i32>(-2147483647i, u_input.c, u_input.c)), max(vec3<i32>(0i, -2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec3<i32>(u_input.c, u_input.c, 11687i)), true) >> (abs(u_input.b.yzx) % vec3<u32>(32u)));
    var_1 = vec3<i32>(_wgslsmith_add_i32(0i, 2147483647i), ~(max(_wgslsmith_div_i32(u_input.c, u_input.c), -2147483647i) | _wgslsmith_clamp_i32(~global3[_wgslsmith_index_u32(global1.x, 6u)], -var_1.x, var_1.x)), global3[_wgslsmith_index_u32(~reverseBits(global1.x), 6u)]);
    let var_2 = Struct_4(func_2(vec3<f32>(1f, 1f, 1f), firstTrailingBit(vec2<i32>(5274i, -1i) & (vec2<i32>(var_1.x, var_1.x) ^ vec2<i32>(var_1.x, 54397i)))), u_input.b.x);
    global3 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~vec3<i32>(52334i, u_input.c, global3[_wgslsmith_index_u32(u_input.a.x, 6u)])) >> (~(~vec3<u32>(4294967295u, 91684u, 42272u)) % vec3<u32>(32u))), 29436i, vec3<u32>(var_0.x >> (~u_input.a.x % 32u), 4294967295u, _wgslsmith_div_u32(global1.x, 1707u) | var_2.b) & select(~u_input.a.xww, ~vec3<u32>(47910u, 1u, var_2.b), true));
}

