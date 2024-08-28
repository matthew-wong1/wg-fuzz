struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(4294967295u, false, 618f, Struct_2(Struct_1(vec2<bool>(true, true), true), vec4<f32>(1626f, -297f, 1875f, -961f), vec3<bool>(true, true, true), vec2<i32>(36987i, 2147483647i)), Struct_1(vec2<bool>(false, true), false)), Struct_4(0u, false, -513f, Struct_2(Struct_1(vec2<bool>(true, false), false), vec4<f32>(-122f, -233f, -746f, 267f), vec3<bool>(false, false, true), vec2<i32>(-1i, 0i)), Struct_1(vec2<bool>(true, true), false)), Struct_4(0u, false, -773f, Struct_2(Struct_1(vec2<bool>(true, true), true), vec4<f32>(-1008f, 714f, -105f, 2175f), vec3<bool>(false, true, false), vec2<i32>(2147483647i, 0i)), Struct_1(vec2<bool>(false, true), false)), Struct_4(1u, false, -276f, Struct_2(Struct_1(vec2<bool>(false, false), false), vec4<f32>(-192f, -1726f, 1545f, 105f), vec3<bool>(true, true, false), vec2<i32>(-17414i, 0i)), Struct_1(vec2<bool>(true, true), false)), Struct_4(0u, false, 2115f, Struct_2(Struct_1(vec2<bool>(false, false), false), vec4<f32>(-505f, 690f, -755f, -2626f), vec3<bool>(false, false, true), vec2<i32>(2147483647i, -1i)), Struct_1(vec2<bool>(false, true), false)), Struct_4(85942u, true, 1789f, Struct_2(Struct_1(vec2<bool>(false, false), true), vec4<f32>(406f, 684f, 1170f, 2032f), vec3<bool>(true, true, true), vec2<i32>(1i, 2147483647i)), Struct_1(vec2<bool>(true, false), true)), Struct_4(4294967295u, false, 736f, Struct_2(Struct_1(vec2<bool>(true, false), true), vec4<f32>(1136f, -1133f, 925f, 1004f), vec3<bool>(false, true, false), vec2<i32>(i32(-2147483648), -29313i)), Struct_1(vec2<bool>(true, false), true)), Struct_4(26u, false, 1486f, Struct_2(Struct_1(vec2<bool>(true, false), false), vec4<f32>(2269f, -703f, 1732f, 1000f), vec3<bool>(true, false, false), vec2<i32>(53526i, 22954i)), Struct_1(vec2<bool>(true, true), true)), Struct_4(1u, false, -286f, Struct_2(Struct_1(vec2<bool>(true, true), false), vec4<f32>(1000f, 196f, -992f, 1556f), vec3<bool>(true, false, false), vec2<i32>(-93964i, -9985i)), Struct_1(vec2<bool>(false, true), false)), Struct_4(1u, true, 1119f, Struct_2(Struct_1(vec2<bool>(false, false), false), vec4<f32>(-1263f, -1500f, 357f, 719f), vec3<bool>(true, true, false), vec2<i32>(-6813i, 25316i)), Struct_1(vec2<bool>(false, true), true)), Struct_4(7676u, true, -1000f, Struct_2(Struct_1(vec2<bool>(true, false), true), vec4<f32>(1000f, 667f, 970f, 381f), vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), -7889i)), Struct_1(vec2<bool>(false, true), false)), Struct_4(0u, true, 171f, Struct_2(Struct_1(vec2<bool>(true, false), false), vec4<f32>(-699f, -668f, 1478f, -175f), vec3<bool>(true, false, true), vec2<i32>(-15572i, 2147483647i)), Struct_1(vec2<bool>(true, false), true)), Struct_4(53482u, false, 945f, Struct_2(Struct_1(vec2<bool>(true, false), false), vec4<f32>(1355f, 1470f, 313f, 641f), vec3<bool>(true, true, true), vec2<i32>(30623i, -28727i)), Struct_1(vec2<bool>(true, false), false)), Struct_4(1u, false, -614f, Struct_2(Struct_1(vec2<bool>(false, true), true), vec4<f32>(-1356f, -1541f, 198f, 723f), vec3<bool>(true, true, true), vec2<i32>(22956i, -6416i)), Struct_1(vec2<bool>(true, false), true)), Struct_4(55155u, true, 1470f, Struct_2(Struct_1(vec2<bool>(false, true), false), vec4<f32>(245f, -1015f, -251f, 1361f), vec3<bool>(true, false, false), vec2<i32>(2147483647i, -52155i)), Struct_1(vec2<bool>(false, false), false)), Struct_4(68588u, false, -566f, Struct_2(Struct_1(vec2<bool>(false, false), true), vec4<f32>(401f, -172f, -1715f, 160f), vec3<bool>(false, true, false), vec2<i32>(7207i, -24021i)), Struct_1(vec2<bool>(true, false), false)), Struct_4(0u, false, -217f, Struct_2(Struct_1(vec2<bool>(true, true), false), vec4<f32>(835f, 685f, 1000f, -555f), vec3<bool>(true, false, false), vec2<i32>(36514i, 1i)), Struct_1(vec2<bool>(true, false), false)), Struct_4(1u, false, 1608f, Struct_2(Struct_1(vec2<bool>(false, true), false), vec4<f32>(2320f, 130f, -820f, 285f), vec3<bool>(false, false, false), vec2<i32>(-3226i, -27716i)), Struct_1(vec2<bool>(true, true), true)), Struct_4(0u, false, 139f, Struct_2(Struct_1(vec2<bool>(true, false), false), vec4<f32>(363f, -232f, 1388f, -428f), vec3<bool>(false, false, false), vec2<i32>(-17293i, 23168i)), Struct_1(vec2<bool>(true, false), true)), Struct_4(0u, true, 505f, Struct_2(Struct_1(vec2<bool>(false, false), true), vec4<f32>(284f, -352f, -133f, 503f), vec3<bool>(true, false, true), vec2<i32>(0i, 0i)), Struct_1(vec2<bool>(true, false), false)), Struct_4(4294967295u, false, 520f, Struct_2(Struct_1(vec2<bool>(false, true), true), vec4<f32>(2090f, -1341f, 1790f, -847f), vec3<bool>(false, true, false), vec2<i32>(1142i, 44743i)), Struct_1(vec2<bool>(true, false), false)), Struct_4(0u, true, -2201f, Struct_2(Struct_1(vec2<bool>(false, true), true), vec4<f32>(309f, -624f, -1246f, -315f), vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<bool>(true, true), false)), Struct_4(74897u, true, -1785f, Struct_2(Struct_1(vec2<bool>(false, true), true), vec4<f32>(-756f, 897f, -1097f, -835f), vec3<bool>(false, true, true), vec2<i32>(1i, 0i)), Struct_1(vec2<bool>(true, false), true)), Struct_4(14607u, false, -991f, Struct_2(Struct_1(vec2<bool>(false, true), true), vec4<f32>(1467f, 553f, -1000f, 666f), vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), 76553i)), Struct_1(vec2<bool>(true, false), true)), Struct_4(4294967295u, true, -1141f, Struct_2(Struct_1(vec2<bool>(false, false), true), vec4<f32>(1685f, 1306f, 191f, 3000f), vec3<bool>(false, false, false), vec2<i32>(-1i, 9207i)), Struct_1(vec2<bool>(true, true), false)), Struct_4(4294967295u, false, 706f, Struct_2(Struct_1(vec2<bool>(true, true), true), vec4<f32>(-335f, -221f, -855f, -546f), vec3<bool>(true, false, true), vec2<i32>(38432i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), true)), Struct_4(4294967295u, true, 511f, Struct_2(Struct_1(vec2<bool>(true, true), false), vec4<f32>(1813f, 1000f, 3319f, 517f), vec3<bool>(false, true, true), vec2<i32>(476i, 2147483647i)), Struct_1(vec2<bool>(false, true), true)));

var<private> global2: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(4294967295u, 15313u, 4294967295u, 0u), vec4<u32>(4294967295u, 38423u, 46773u, 109179u), vec4<u32>(20943u, 46177u, 0u, 33589u), vec4<u32>(8344u, 51243u, 0u, 501u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> vec4<bool> {
    global0 = select(select(select(!vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(arg_0 && true, true, any(vec2<bool>(global0.x, true)), any(vec4<bool>(global0.x, arg_0, false, false))), select(!vec4<bool>(false, arg_0, arg_0, true), select(vec4<bool>(false, true, arg_0, false), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(false, true, false, global0.x)), !vec4<bool>(global0.x, true, arg_0, false))), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_0, true, true, arg_0)), true), select(false, _wgslsmith_f_op_f32(arg_1.x + -613f) == _wgslsmith_f_op_f32(arg_1.x * -409f), false)), select(select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(true, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, false, false, global0.x), select(vec4<bool>(false, arg_0, global0.x, false), vec4<bool>(global0.x, false, true, true), global0.x)), global0.x), !vec4<bool>(true, true, global0.x & false, u_input.d < 59708u), false), vec4<bool>(any(vec4<bool>(any(vec4<bool>(false, arg_0, true, false)), !arg_0, false, !global0.x)), true, u_input.c.x < -(~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(26377u, 4294967295u, 11422u, u_input.d), global2[_wgslsmith_index_u32(1u, 4u)]) != (24847u ^ u_input.b)));
    var var_0 = _wgslsmith_f_op_f32(arg_1.x + arg_1.x);
    let var_1 = global0.x;
    global0 = vec4<bool>(arg_0, arg_1.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(f32(-1f) * -1099f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), global0.x, global0.x);
    var var_2 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f)));
    return !select(!vec4<bool>(u_input.b > 1u, true, false, all(vec4<bool>(arg_0, false, global0.x, true))), select(!vec4<bool>(true, global0.x, arg_0, true), select(select(vec4<bool>(true, global0.x, arg_0, false), vec4<bool>(true, global0.x, true, global0.x), false), vec4<bool>(arg_0, arg_0, true, global0.x), !vec4<bool>(global0.x, arg_0, global0.x, false)), ~34299u <= u_input.b), any(vec2<bool>(true, global0.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_5) -> vec2<u32> {
    global1 = array<Struct_4, 27>();
    let var_0 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(~arg_1.a.a, u_input.d, u_input.d, ~1u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(u_input.b), 4294967295u), 4u)]));
    global0 = !func_3(global0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(283f, arg_1.b.b.x, arg_1.e.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1382f, 1321f, arg_1.a.c) * arg_1.b.b.zyw))));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 4294967295u, arg_1.a.a), vec3<u32>(30554u, var_0.x, 1u), vec3<u32>(var_0.x, arg_1.a.a, 1u)), vec3<u32>(_wgslsmith_add_u32(u_input.d, arg_1.c), 34321u, _wgslsmith_div_u32(arg_1.c, 1u)))) & 67445u;
    global1 = array<Struct_4, 27>();
    return vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(var_0.yz, var_0.xy) << (_wgslsmith_dot_vec3_u32(~var_0.xxy, _wgslsmith_sub_vec3_u32(vec3<u32>(15953u, arg_1.c, 4294967295u), abs(var_0.xxz))) % 32u));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_5 {
    var var_0 = vec3<bool>(true || (~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, 1i), vec4<i32>(-56095i, -1i, u_input.a.x, u_input.c.x)) <= -38242i), arg_1.x, arg_0);
    let var_1 = ~u_input.d ^ 1u;
    var var_2 = Struct_4(_wgslsmith_clamp_u32((u_input.d & ~var_1) | ~(~35257u), 62690u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(var_1, 4294967295u), firstLeadingBit(1u)), func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(47973i, 41377i), vec2<i32>(u_input.a.x, u_input.c.x)), Struct_5(global1[_wgslsmith_index_u32(u_input.d, 27u)], Struct_2(Struct_1(var_0.yy, var_0.x), vec4<f32>(566f, 2627f, -333f, 714f), vec3<bool>(false, true, false), u_input.a), 37371u, 1u, vec4<f32>(-473f, -1168f, -1011f, -1070f))))), any(func_3(33795u != var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -641f, -316f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, 1278f, -118f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(278f)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -874f))), true))), Struct_2(Struct_1(global0.yz, false), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(231f, 188f, 1320f, -976f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-363f, -1885f, 115f, -375f))))), vec3<bool>(true, true, !arg_1.x == global0.x), -countOneBits(abs(vec2<i32>(u_input.c.x, -42319i)))), Struct_1(!vec2<bool>(true, arg_0), true));
    var var_3 = global0.yz;
    let var_4 = _wgslsmith_div_f32(var_2.d.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -979f), var_2.c), 574f));
    return Struct_5(global1[_wgslsmith_index_u32(~u_input.d | (~abs(var_2.a) >> (u_input.d % 32u)), 27u)], var_2.d, u_input.b, ~abs(_wgslsmith_mod_u32(~u_input.d, 0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(143f, var_2.c, var_0.x)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1236f)), var_4)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, select(select(!global0.wyz, global0.zwy, select(global0.x, global0.x, true)), !vec3<bool>(any(vec4<bool>(global0.x, global0.x, true, false)), true, global0.x), true));
    let var_1 = var_0.a.e;
    var var_2 = func_1(!select(!var_0.a.d.c.x, u_input.a.x <= 68378i, !global0.x) && (true && var_0.b.a.b), var_0.b.c).b;
    let var_3 = abs(u_input.d);
    let var_4 = firstLeadingBit(abs(vec2<i32>(-1i, 1i)));
    let var_5 = vec4<bool>(var_2.c.x, var_0.b.c.x, global0.x, true);
    var var_6 = _wgslsmith_div_vec2_i32(~vec2<i32>(var_4.x, 31693i), var_4);
    global0 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<i32>(~var_6.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 24030i), vec3<i32>(var_4.x, -41404i, var_0.a.d.d.x)), -14273i, var_0.a.d.d.x)), vec3<u32>(var_0.d & reverseBits(u_input.d), ~(~var_0.d), 41115u) >> (_wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_3, 27836u, u_input.d)), ~firstLeadingBit(vec3<u32>(u_input.d, var_0.a.a, 1u))) % vec3<u32>(32u)));
}

