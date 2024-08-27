struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_3,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20>;

var<private> global1: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(false, true, Struct_3(Struct_1(-1000f, vec3<f32>(-632f, -1175f, 281f), 605f)), Struct_4(0i), -17863i), Struct_5(true, false, Struct_3(Struct_1(-879f, vec3<f32>(377f, -860f, -180f), -723f)), Struct_4(i32(-2147483648)), 0i), Struct_5(false, true, Struct_3(Struct_1(-591f, vec3<f32>(-629f, 449f, -581f), -261f)), Struct_4(i32(-2147483648)), -1i), Struct_5(true, false, Struct_3(Struct_1(-2077f, vec3<f32>(-908f, -580f, -326f), -124f)), Struct_4(56964i), 0i), Struct_5(false, false, Struct_3(Struct_1(1433f, vec3<f32>(-909f, -343f, 121f), 485f)), Struct_4(0i), 2147483647i), Struct_5(false, true, Struct_3(Struct_1(-414f, vec3<f32>(-342f, -1379f, -1416f), 1253f)), Struct_4(-19211i), -7098i), Struct_5(true, false, Struct_3(Struct_1(708f, vec3<f32>(-1477f, 570f, -859f), -886f)), Struct_4(1i), 14663i), Struct_5(false, false, Struct_3(Struct_1(-1015f, vec3<f32>(-537f, -821f, 2226f), -300f)), Struct_4(41096i), -1i), Struct_5(true, false, Struct_3(Struct_1(-1261f, vec3<f32>(-420f, 147f, 647f), 367f)), Struct_4(0i), 2147483647i), Struct_5(true, true, Struct_3(Struct_1(-302f, vec3<f32>(1281f, -1447f, -1178f), -1352f)), Struct_4(-23791i), 0i), Struct_5(false, false, Struct_3(Struct_1(1035f, vec3<f32>(-1397f, 145f, 768f), -737f)), Struct_4(i32(-2147483648)), 0i), Struct_5(false, false, Struct_3(Struct_1(205f, vec3<f32>(-326f, 800f, 513f), -800f)), Struct_4(i32(-2147483648)), 1i), Struct_5(false, true, Struct_3(Struct_1(821f, vec3<f32>(-1569f, -192f, -1000f), -859f)), Struct_4(-2005i), -4604i), Struct_5(false, false, Struct_3(Struct_1(523f, vec3<f32>(-922f, 353f, 1009f), -485f)), Struct_4(-49862i), i32(-2147483648)), Struct_5(true, false, Struct_3(Struct_1(-1000f, vec3<f32>(-385f, 1000f, 1835f), 1590f)), Struct_4(-13210i), -23694i), Struct_5(true, false, Struct_3(Struct_1(-316f, vec3<f32>(676f, -277f, 1863f), -1947f)), Struct_4(33059i), -1i), Struct_5(true, false, Struct_3(Struct_1(2443f, vec3<f32>(1236f, -1000f, -1791f), 1237f)), Struct_4(2147483647i), -16847i), Struct_5(true, false, Struct_3(Struct_1(-529f, vec3<f32>(961f, 817f, -166f), -1000f)), Struct_4(-1i), 1948i), Struct_5(false, true, Struct_3(Struct_1(571f, vec3<f32>(-359f, -1114f, 819f), -250f)), Struct_4(2147483647i), i32(-2147483648)), Struct_5(true, false, Struct_3(Struct_1(701f, vec3<f32>(1053f, 158f, -1270f), -427f)), Struct_4(0i), -52347i), Struct_5(true, true, Struct_3(Struct_1(155f, vec3<f32>(288f, 189f, 2022f), 278f)), Struct_4(8605i), 1i), Struct_5(false, false, Struct_3(Struct_1(-547f, vec3<f32>(125f, -706f, -152f), 1307f)), Struct_4(2147483647i), 1i), Struct_5(false, false, Struct_3(Struct_1(-303f, vec3<f32>(2226f, 563f, 255f), -1552f)), Struct_4(-20473i), i32(-2147483648)), Struct_5(false, false, Struct_3(Struct_1(386f, vec3<f32>(338f, -358f, 1637f), 257f)), Struct_4(0i), 0i), Struct_5(true, false, Struct_3(Struct_1(510f, vec3<f32>(-337f, -1268f, -2752f), -1035f)), Struct_4(16674i), -65491i), Struct_5(false, true, Struct_3(Struct_1(655f, vec3<f32>(1000f, -978f, 1264f), 560f)), Struct_4(-42786i), -1i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec4<i32>) -> vec2<u32> {
    global1 = array<Struct_5, 26>();
    global0 = array<Struct_4, 20>();
    global0 = array<Struct_4, 20>();
    global1 = array<Struct_5, 26>();
    let var_0 = arg_1;
    return ~((~(~vec2<u32>(4294967295u, 1u)) & _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(16319u, 4294967295u), vec2<u32>(u_input.c, u_input.c)), reverseBits(vec2<u32>(89966u, u_input.c)))) ^ vec2<u32>(~u_input.c, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c, 11681u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 7959u, 4294967295u, 1u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)))));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    var var_0 = reverseBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, 1i), abs(vec2<i32>(u_input.a, -43298i) ^ vec2<i32>(u_input.a, 8798i))) << (func_3(vec3<i32>(i32(-1i) * -26063i, u_input.b, u_input.a), global1[_wgslsmith_index_u32(~u_input.c, 26u)], vec4<i32>(u_input.b, -1i, i32(-1i) * -9321i, ~34520i)) % vec2<u32>(32u)));
    var var_1 = vec4<bool>(!(!select(true, true, true)), !any(vec2<bool>(true, true)) || all(vec3<bool>(true, true, true)), select(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false)), true, true || select(true, true, false)) && true, false);
    let var_2 = select(vec4<u32>(69572u, max(u_input.c, _wgslsmith_mod_u32(~arg_1.x, 47166u)), ~arg_1.x, max(_wgslsmith_div_u32(87408u, arg_1.x), _wgslsmith_clamp_u32(0u, 19783u, 0u)) >> (~(~u_input.c) % 32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(arg_1), (arg_1 | vec2<u32>(2187u, 1u)) & countOneBits(arg_1)), ~_wgslsmith_div_u32(_wgslsmith_div_u32(arg_1.x, 17118u), 1879u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), arg_1)), false);
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1484f, _wgslsmith_f_op_f32(arg_0 - arg_0)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(774f))))));
    let var_4 = -vec4<i32>(2147483647i, var_0.x, abs(var_0.x), u_input.a) & min(select(vec4<i32>(1i, 2147483647i, 32357i, var_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_0.x, 2147483647i, u_input.a), vec4<i32>(u_input.a, 12821i, var_0.x, -18811i)), false) & _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.a, 31334i) >> (var_2 % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.a, var_0.x, u_input.a, u_input.a))), vec4<i32>(~_wgslsmith_mult_i32(u_input.b, -3983i), _wgslsmith_sub_i32(-1i, var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, var_0.x), vec3<i32>(u_input.b, 0i, u_input.b)) | 1i, -(~u_input.a)));
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_4(arg_0: f32) -> vec2<u32> {
    global1 = array<Struct_5, 26>();
    let var_0 = select(any(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, true), false)), any(vec2<bool>(true, true)), true);
    var var_1 = vec4<u32>(0u, _wgslsmith_sub_u32(~1u ^ (u_input.c ^ ~u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(~31182u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 10445u, 1u, 42940u), vec4<u32>(4094u, u_input.c, u_input.c, 0u))), ~(vec2<u32>(29662u, u_input.c) & vec2<u32>(45411u, u_input.c)))), ~4294967295u, abs(4294967295u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-965f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1024f))))), arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(173f - arg_0))))));
    let var_3 = ~((_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), ~u_input.c) << (_wgslsmith_mod_u32(var_1.x, ~u_input.c) % 32u)) | ~91696u);
    return ~var_1.yy;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_5(arg_0.e.x, true, Struct_3(arg_0.b), global0[_wgslsmith_index_u32(0u, 20u)], 1i);
    let var_1 = 1i;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.a.a * arg_0.d.c), _wgslsmith_f_op_f32(min(var_0.c.a.a, arg_0.b.c))))))), _wgslsmith_f_op_f32(-var_0.c.a.c));
    global1 = array<Struct_5, 26>();
    let var_3 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(var_0.c.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-390f, arg_0.b.a)))))));
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_3(arg_1.d);
    var var_1 = func_5(Struct_2(func_4(_wgslsmith_f_op_f32(func_2(347f, _wgslsmith_mult_vec2_u32(arg_3, vec2<u32>(0u, u_input.c))))), Struct_1(arg_2, var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.b.x) * arg_2)), _wgslsmith_sub_vec4_i32(arg_1.c, firstLeadingBit(arg_1.c)), arg_1.d, !(!select(arg_1.e, arg_1.e, arg_1.e.x))), 43477i, arg_1.a.x);
    var var_2 = arg_1.b.b.yz;
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_1.d.c, arg_1.a)) * _wgslsmith_div_f32(arg_1.b.b.x, 1000f)) * 1444f), -687f) - vec2<f32>(1341f, 795f));
    let var_3 = !vec4<bool>(!(!(var_1.c.x > arg_0.x)), true, false, false);
    return 3558u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 26>();
    var var_0 = u_input.c;
    var var_1 = u_input.b;
    var_1 = u_input.a;
    var var_2 = ~reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 0u)), vec2<u32>(u_input.c, 86146u)), abs(func_1(vec2<i32>(u_input.a, u_input.a), Struct_2(vec2<u32>(99415u, 66832u), Struct_1(1272f, vec3<f32>(580f, -502f, 203f), -1691f), vec4<i32>(1i, u_input.a, -5478i, u_input.a), Struct_1(592f, vec3<f32>(236f, 487f, -1070f), 1396f), vec4<bool>(false, false, false, true)), -2165f, vec2<u32>(39257u, 0u))), 51521u, func_4(_wgslsmith_f_op_f32(ceil(-829f))).x));
    var var_3 = func_5(func_5(func_5(func_5(Struct_2(vec2<u32>(14605u, 1u), Struct_1(449f, vec3<f32>(1537f, 1369f, -1699f), -618f), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), Struct_1(-317f, vec3<f32>(-805f, 961f, 992f), 349f), vec4<bool>(true, false, true, true)), 49914i, _wgslsmith_clamp_u32(4294967295u, 4294967295u, var_2.x)), firstLeadingBit(-u_input.a), 83595u), -21192i, 4294967295u), ~0i, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-var_3.c.xx, var_3.c.yx | vec2<i32>(1i, var_3.c.x)), abs(var_3.c.ww)), -firstLeadingBit(~var_3.c.x)), firstTrailingBit(30974i));
}

