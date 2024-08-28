struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(-21866i, 2147483647i, -8559i, 1i), true);

var<private> global1: f32;

var<private> global2: array<Struct_4, 20>;

var<private> global3: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec3<f32>(829f, 1287f, -803f), vec4<u32>(0u, 4294967295u, 1u, 89747u)), Struct_4(vec3<f32>(251f, -653f, 591f), vec4<u32>(76984u, 4294967295u, 0u, 1u)), Struct_4(vec3<f32>(264f, 221f, -127f), vec4<u32>(3908u, 1u, 4294967295u, 45672u)), Struct_4(vec3<f32>(-901f, -668f, 556f), vec4<u32>(1302u, 1u, 2264u, 1u)), Struct_4(vec3<f32>(-1304f, 662f, 470f), vec4<u32>(52585u, 27951u, 0u, 29124u)), Struct_4(vec3<f32>(1716f, -2122f, 850f), vec4<u32>(3957u, 4294967295u, 57472u, 120517u)), Struct_4(vec3<f32>(-762f, -1084f, -884f), vec4<u32>(0u, 89523u, 16042u, 55064u)), Struct_4(vec3<f32>(-901f, -896f, 370f), vec4<u32>(0u, 31767u, 1401u, 8364u)), Struct_4(vec3<f32>(295f, -1303f, -1339f), vec4<u32>(0u, 56344u, 0u, 7714u)), Struct_4(vec3<f32>(610f, 600f, -109f), vec4<u32>(0u, 84825u, 4294967295u, 49681u)), Struct_4(vec3<f32>(595f, 683f, -597f), vec4<u32>(27288u, 1u, 24077u, 31406u)), Struct_4(vec3<f32>(-187f, 601f, -749f), vec4<u32>(1u, 4294967295u, 11293u, 14959u)), Struct_4(vec3<f32>(770f, 1951f, 1244f), vec4<u32>(83115u, 44807u, 50616u, 0u)), Struct_4(vec3<f32>(-868f, 349f, 767f), vec4<u32>(1u, 4294967295u, 1u, 1u)), Struct_4(vec3<f32>(191f, 529f, 1420f), vec4<u32>(52243u, 62022u, 4294967295u, 4294967295u)), Struct_4(vec3<f32>(732f, 170f, -1000f), vec4<u32>(57344u, 4294967295u, 21914u, 0u)), Struct_4(vec3<f32>(1344f, -2388f, -519f), vec4<u32>(20334u, 49474u, 1u, 0u)), Struct_4(vec3<f32>(542f, 1000f, -274f), vec4<u32>(4294967295u, 1u, 7128u, 0u)), Struct_4(vec3<f32>(166f, -1065f, 486f), vec4<u32>(27825u, 17278u, 71060u, 4294967295u)), Struct_4(vec3<f32>(1181f, -563f, 836f), vec4<u32>(4294967295u, 26356u, 0u, 23810u)), Struct_4(vec3<f32>(1402f, -239f, -785f), vec4<u32>(49524u, 1u, 0u, 82686u)), Struct_4(vec3<f32>(1000f, 477f, 1870f), vec4<u32>(39094u, 0u, 40246u, 1u)), Struct_4(vec3<f32>(-2114f, -530f, -256f), vec4<u32>(94264u, 61362u, 4294967295u, 4294967295u)), Struct_4(vec3<f32>(329f, -1433f, 210f), vec4<u32>(67079u, 1u, 105894u, 4294967295u)), Struct_4(vec3<f32>(834f, 1316f, 102f), vec4<u32>(39343u, 4294967295u, 19193u, 0u)), Struct_4(vec3<f32>(1197f, -1210f, 298f), vec4<u32>(4294967295u, 12339u, 4294967295u, 4294967295u)), Struct_4(vec3<f32>(526f, 1847f, 1039f), vec4<u32>(91080u, 4294967295u, 50930u, 7831u)), Struct_4(vec3<f32>(-797f, -102f, 620f), vec4<u32>(25245u, 1u, 1u, 4294967295u)), Struct_4(vec3<f32>(222f, 812f, 772f), vec4<u32>(35359u, 4294967295u, 4294967295u, 1u)), Struct_4(vec3<f32>(-345f, -1000f, -887f), vec4<u32>(0u, 3098u, 71631u, 0u)), Struct_4(vec3<f32>(1150f, -110f, 1740f), vec4<u32>(1u, 1u, 34170u, 4294967295u)), Struct_4(vec3<f32>(-1173f, 579f, -2377f), vec4<u32>(1778u, 4294967295u, 54935u, 9660u)));

var<private> global4: array<u32, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global2 = array<Struct_4, 20>();
    global3 = array<Struct_4, 32>();
    let var_0 = abs(26548u) > u_input.a.x;
    var var_1 = Struct_3(Struct_1(~(~vec2<u32>(u_input.a.x, 13209u)), _wgslsmith_sub_i32(abs(-48076i), ~(~global0.a.x)), select(!vec3<bool>(true, global0.b, global0.b), vec3<bool>(!var_0, false, global0.a.x > 1301i), !(!vec3<bool>(var_0, global0.b, true))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_u32(u_input.a.xy, u_input.a.zx, u_input.a.yz), true != var_0), ~(u_input.a.yy << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))))), select(false, var_0, global0.b));
    var_1 = Struct_3(var_1.a, ~u_input.a.x > u_input.a.x);
    return !all(var_1.a.c.yz);
}

fn func_2() -> vec3<bool> {
    global0 = Struct_2(select(global0.a, _wgslsmith_add_vec4_i32(global0.a, vec4<i32>(global0.a.x, 0i, global0.a.x, -22184i)), vec4<bool>(all(vec2<bool>(global0.b, false)), -1040f < _wgslsmith_f_op_f32(step(1519f, 616f)), any(!vec2<bool>(global0.b, global0.b)), global0.b && (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(10038u, 6u)], 6u)] != u_input.a.x))), false);
    global2 = array<Struct_4, 20>();
    global0 = Struct_2(global0.a, all(select(!(!vec3<bool>(global0.b, true, global0.b)), vec3<bool>(global0.b, global0.b, !global0.b), !select(vec3<bool>(global0.b, global0.b, true), vec3<bool>(global0.b, false, false), vec3<bool>(true, global0.b, false)))));
    global2 = array<Struct_4, 20>();
    global4 = array<u32, 6>();
    return vec3<bool>(func_3(), true, true);
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    var var_0 = abs(-select(firstLeadingBit(~global0.a.x), 18523i, any(arg_0.a.c)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) + -521f));
    let var_2 = global0.b;
    var var_3 = 0u;
    var_3 = global4[_wgslsmith_index_u32(4294967295u, 6u)];
    return Struct_1(reverseBits(arg_0.a.a), 0i, select(func_2(), arg_0.a.c, arg_0.a.c), 1u);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_4) -> u32 {
    let var_0 = func_4(Struct_3(Struct_1(u_input.a.zy, i32(-1i) * -1i, select(select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, false)), select(vec3<bool>(false, arg_0, false), vec3<bool>(false, true, false), true), func_2()), ~(arg_2.b.x >> (arg_2.b.x % 32u))), arg_2.a.x == 2078f), _wgslsmith_f_op_f32(1851f * 1419f));
    let var_1 = -1492f;
    global2 = array<Struct_4, 20>();
    global0 = Struct_2(global0.a, func_2().x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-430f + arg_2.a.x) * 623f))));
    return _wgslsmith_div_u32(1u, func_4(Struct_3(func_4(Struct_3(Struct_1(arg_2.b.yx, 1i, vec3<bool>(true, arg_0, var_0.c.x), 82738u), false), -2788f), select(false, select(global0.b, global0.b, var_0.c.x), var_0.c.x)), var_1).d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(-global0.a, select(global0.b, true, global0.a.x != -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -12068i, -46943i, 21634i), global0.a)));
    var var_0 = countOneBits(~(~1u));
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec2_u32(~u_input.a.xz, u_input.a.yz), ~abs(func_1(global0.b, global0.a.x, Struct_4(vec3<f32>(-2056f, -1657f, 298f), vec4<u32>(global4[_wgslsmith_index_u32(0u, 6u)], 61628u, 1u, 65197u)))), 13750u), firstLeadingBit(~vec4<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 6u)], 60899u, 1u, global4[_wgslsmith_index_u32(34515u, 6u)])) & ~countOneBits(~vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 6u)], 6u)], global4[_wgslsmith_index_u32(12666u, 6u)], u_input.a.x)));
    global2 = array<Struct_4, 20>();
    var var_2 = Struct_2(-vec4<i32>(9001i, _wgslsmith_div_i32(-global0.a.x, _wgslsmith_mod_i32(0i, -1i)), 4335i, global0.a.x), func_2().x);
    let var_3 = Struct_1(abs(~var_1.ww) & (firstLeadingBit(~vec2<u32>(12409u, u_input.a.x)) ^ _wgslsmith_clamp_vec2_u32(var_1.zy, u_input.a.xy, var_1.wx)), ~_wgslsmith_dot_vec4_i32(firstLeadingBit(global0.a), global0.a), vec3<bool>(!all(vec4<bool>(true, var_2.b, true, var_2.b)) & (min(-1i, global0.a.x) >= 1i), !(!(var_2.a.x != 1i)), ~_wgslsmith_div_i32(global0.a.x, 26581i) >= var_2.a.x), abs(abs(0u)));
    var var_4 = global0.a.x;
    let var_5 = global2[_wgslsmith_index_u32(var_3.d, 20u)];
    var var_6 = Struct_2(_wgslsmith_clamp_vec4_i32(var_2.a, -countOneBits(vec4<i32>(-2147483647i, global0.a.x, global0.a.x, var_2.a.x)) ^ (-vec4<i32>(var_3.b, -23591i, 0i, global0.a.x) | vec4<i32>(var_3.b, global0.a.x, -15605i, global0.a.x)), _wgslsmith_clamp_vec4_i32(select(global0.a ^ global0.a, firstTrailingBit(var_2.a), select(vec4<bool>(var_3.c.x, global0.b, global0.b, var_3.c.x), vec4<bool>(false, false, false, false), vec4<bool>(global0.b, global0.b, false, global0.b))), -vec4<i32>(var_2.a.x, -22571i, -2147483647i, global0.a.x), vec4<i32>(_wgslsmith_sub_i32(0i, var_3.b), 55418i, func_4(Struct_3(Struct_1(var_5.b.xw, global0.a.x, var_3.c, var_1.x), false), var_5.a.x).b, countOneBits(-29384i)))), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(433f)))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_5.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1283f) - var_5.a.x))), _wgslsmith_f_op_f32(-481f * 983f), 412f), abs(var_2.a.zz), -842f, var_5.a.x);
}

