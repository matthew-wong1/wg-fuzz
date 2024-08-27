struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: Struct_4,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

var<private> global1: f32 = -828f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = ~0u;
    global1 = 614f;
    let var_1 = arg_3;
    let var_2 = vec3<i32>(23081i, firstLeadingBit(firstLeadingBit(-1i)), ~23905i);
    global1 = 495f;
    return _wgslsmith_f_op_f32(-arg_1.a.b.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> i32 {
    global0 = array<vec3<bool>, 13>();
    let var_0 = true;
    var var_1 = var_0;
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-390f, arg_0.x, var_0))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(665f + -925f)), abs(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(30245i, 35086i), vec2<i32>(u_input.a.x, arg_1.x)), ~vec2<i32>(2147483647i, u_input.a.x))), 680f, u_input.d.x >> (1u % 32u)), Struct_1(_wgslsmith_f_op_f32(296f * arg_0.x), firstLeadingBit(firstLeadingBit(vec2<i32>(-41159i, arg_1.x))), _wgslsmith_f_op_f32(func_3(u_input.b, Struct_4(Struct_3(arg_0.x, vec4<f32>(-593f, 2671f, 1893f, 1296f), 13145i, Struct_2(Struct_1(arg_0.x, vec2<i32>(u_input.a.x, arg_1.x), arg_0.x, 1u), Struct_1(arg_0.x, arg_1, 429f, u_input.c.x), vec3<bool>(var_0, var_0, true), -50546i, Struct_1(arg_0.x, vec2<i32>(u_input.a.x, u_input.a.x), -580f, 4294967295u)), u_input.d.x), Struct_2(Struct_1(arg_0.x, vec2<i32>(-1i, arg_1.x), arg_0.x, u_input.b), Struct_1(819f, u_input.a.yz, -360f, u_input.b), global0[_wgslsmith_index_u32(u_input.c.x, 13u)], arg_1.x, Struct_1(-1000f, u_input.a.zx, arg_0.x, u_input.b)), _wgslsmith_sub_i32(arg_1.x, arg_1.x)), u_input.d, !global0[_wgslsmith_index_u32(~61693u, 13u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~0u, u_input.c.x ^ u_input.d.x, 13991u), ~(~vec4<u32>(u_input.c.x, 1u, 43121u, 18931u)))), vec3<bool>(!(!(var_0 & false)), select(any(vec2<bool>(true, true)), var_0, var_0), true), reverseBits(abs(-1520i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), -vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xyx, vec3<i32>(arg_1.x, arg_1.x, u_input.a.x)), -74815i), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1072f - -376f))), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d.x, 12981u), 43879u)));
    return i32(-1i) * -(i32(-1i) * -countOneBits(arg_1.x));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_3(arg_2.x, arg_0.c.a.b, u_input.a.x, arg_0.c.a.d, ~(~33022u));
    global1 = _wgslsmith_f_op_f32(floor(arg_0.c.b.a.c));
    var_0 = arg_0.c.a;
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c.a.d.e.a), arg_0.c.b.e.a, true))) - arg_2.x)));
    var var_1 = false;
    return arg_0.c.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = i32(-1i) * -_wgslsmith_add_i32(max(-1i, ~arg_1.x), -23055i);
    var var_1 = abs(u_input.c.yy);
    let var_2 = func_4(Struct_5(firstLeadingBit(-func_2(arg_3.a.b.xww, arg_0.b)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, arg_3.b.b.d, var_1.x, arg_3.a.d.e.d), vec4<u32>(4294967295u, 1u, 0u, 0u)) >> (u_input.d.x % 32u), _wgslsmith_mult_u32(u_input.b, 4294967295u)), Struct_4(arg_3.a, Struct_2(arg_3.b.e, Struct_1(-1035f, vec2<i32>(14035i, var_0), arg_3.b.e.c, 1u), global0[_wgslsmith_index_u32(var_1.x, 13u)], 2147483647i, Struct_1(-405f, u_input.a.yx, 1042f, var_1.x)), -(i32(-1i) * -44066i)), _wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(var_1.x, 110725u, arg_3.b.e.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_3.b.b.d, arg_2.b.d), u_input.c, _wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, vec3<u32>(4294967295u, 4294967295u, u_input.b))))), !(!(!vec4<bool>(arg_2.c.x, true, true, false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_3.a.b.zy))));
    let var_3 = reverseBits(u_input.a.zw | vec2<i32>(arg_3.a.c, reverseBits(-1i)));
    global0 = array<vec3<bool>, 13>();
    return !vec4<bool>(arg_3.a.d.c.x && all(select(vec2<bool>(arg_2.c.x, var_2.d.c.x), arg_3.b.c.zx, vec2<bool>(true, arg_3.b.c.x))), true, select(true == all(vec2<bool>(false, true)), false, true), any(vec3<bool>(-20897i != var_0, !arg_3.b.c.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(u_input.c.x, u_input.b);
    var var_1 = !all(vec4<bool>(true, true, true, true)) != !all(select(vec4<bool>(false, true, false, true), func_1(Struct_1(-1000f, vec2<i32>(-1i, 4892i), 1188f, 1u), u_input.a.xz, Struct_2(Struct_1(-386f, u_input.a.xx, -957f, var_0), Struct_1(838f, vec2<i32>(u_input.a.x, 1i), -218f, u_input.c.x), global0[_wgslsmith_index_u32(var_0, 13u)], u_input.a.x, Struct_1(-1867f, vec2<i32>(18611i, -19850i), 602f, var_0)), Struct_4(Struct_3(-1214f, vec4<f32>(1119f, -1000f, 2814f, -433f), u_input.a.x, Struct_2(Struct_1(377f, vec2<i32>(16227i, u_input.a.x), 795f, 0u), Struct_1(1330f, vec2<i32>(-39876i, u_input.a.x), 830f, u_input.c.x), vec3<bool>(false, true, true), u_input.a.x, Struct_1(1693f, vec2<i32>(0i, -2147483647i), -1918f, 140967u)), 25495u), Struct_2(Struct_1(-820f, u_input.a.yy, 192f, u_input.b), Struct_1(2082f, u_input.a.zy, -928f, 66912u), global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a.x, Struct_1(-790f, vec2<i32>(3672i, 39676i), 1230f, u_input.d.x)), u_input.a.x)), vec4<bool>(false, true, false, true)));
    let var_2 = func_4(Struct_5(u_input.a.x | -12968i, ~(~(~u_input.d)), Struct_4(Struct_3(1241f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(196f, 465f, -371f, 1905f)), u_input.a.x, Struct_2(Struct_1(1218f, u_input.a.yx, 197f, var_0), Struct_1(-1121f, u_input.a.zz, 1568f, u_input.d.x), global0[_wgslsmith_index_u32(var_0, 13u)], 35053i, Struct_1(210f, u_input.a.wx, 697f, 772u)), _wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(4294967295u, 15762u))), Struct_2(func_4(Struct_5(-1i, u_input.d, Struct_4(Struct_3(1579f, vec4<f32>(403f, -325f, -228f, 952f), u_input.a.x, Struct_2(Struct_1(-320f, vec2<i32>(u_input.a.x, u_input.a.x), -1763f, 1u), Struct_1(163f, vec2<i32>(u_input.a.x, u_input.a.x), -555f, u_input.d.x), vec3<bool>(false, false, true), 1855i, Struct_1(1129f, vec2<i32>(u_input.a.x, -2147483647i), 2043f, u_input.b)), u_input.b), Struct_2(Struct_1(-598f, u_input.a.wz, -1000f, 1u), Struct_1(673f, vec2<i32>(u_input.a.x, u_input.a.x), -2052f, 605u), vec3<bool>(true, true, true), u_input.a.x, Struct_1(-1000f, u_input.a.xz, 1299f, var_0)), u_input.a.x), u_input.c), vec4<bool>(false, false, false, false), vec2<f32>(-179f, -645f)).d.b, func_4(Struct_5(-2147483647i, vec2<u32>(u_input.c.x, u_input.d.x), Struct_4(Struct_3(-439f, vec4<f32>(-570f, 1623f, 1000f, 740f), u_input.a.x, Struct_2(Struct_1(969f, u_input.a.xx, -1879f, u_input.d.x), Struct_1(1142f, u_input.a.xy, -1072f, var_0), global0[_wgslsmith_index_u32(1u, 13u)], 0i, Struct_1(1016f, u_input.a.zy, -1190f, u_input.c.x)), 20710u), Struct_2(Struct_1(-1820f, vec2<i32>(u_input.a.x, 1i), -543f, 94133u), Struct_1(551f, vec2<i32>(u_input.a.x, -13657i), 1297f, 0u), vec3<bool>(false, true, true), u_input.a.x, Struct_1(-936f, u_input.a.wz, 331f, u_input.d.x)), -2147483647i), u_input.c), vec4<bool>(false, false, true, true), vec2<f32>(1106f, -261f)).d.a, select(global0[_wgslsmith_index_u32(var_0, 13u)], vec3<bool>(false, true, true), false), ~(-48388i), func_4(Struct_5(u_input.a.x, u_input.c.yy, Struct_4(Struct_3(995f, vec4<f32>(426f, 1003f, -1220f, 203f), -1i, Struct_2(Struct_1(-399f, vec2<i32>(34288i, u_input.a.x), -239f, 1u), Struct_1(-1034f, u_input.a.zx, -234f, u_input.b), global0[_wgslsmith_index_u32(var_0, 13u)], -2147483647i, Struct_1(229f, u_input.a.zy, 396f, 4294967295u)), 22504u), Struct_2(Struct_1(-241f, vec2<i32>(u_input.a.x, 48058i), 1000f, 0u), Struct_1(604f, vec2<i32>(-46018i, 1i), -2293f, u_input.c.x), global0[_wgslsmith_index_u32(var_0, 13u)], u_input.a.x, Struct_1(-1532f, u_input.a.wx, -211f, var_0)), -1i), vec3<u32>(7362u, 1u, u_input.b)), vec4<bool>(false, true, true, false), vec2<f32>(-925f, -1000f)).d.a), -u_input.a.x), ~u_input.c), vec4<bool>(true, true, !(_wgslsmith_f_op_f32(step(1000f, 1488f)) == _wgslsmith_f_op_f32(-1175f + 1000f)), true), vec2<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-1754f * _wgslsmith_f_op_f32(-510f - 1465f)))), -1437f)).d;
    global1 = func_4(Struct_5(select(var_2.d | _wgslsmith_mod_i32(u_input.a.x, var_2.b.b.x), 1i, !var_2.c.x), (u_input.d << ((u_input.c.yz | vec2<u32>(1u, var_2.b.d)) % vec2<u32>(32u))) << (select(firstTrailingBit(vec2<u32>(u_input.b, 56595u)), abs(u_input.c.zz), !var_2.c.xz) % vec2<u32>(32u)), Struct_4(Struct_3(var_2.a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-428f, 742f, var_2.e.c, -469f) - vec4<f32>(var_2.a.c, 1326f, var_2.a.c, 1000f)), i32(-1i) * -2147483647i, Struct_2(Struct_1(3000f, vec2<i32>(u_input.a.x, -2147483647i), var_2.e.a, 46235u), Struct_1(-830f, vec2<i32>(0i, u_input.a.x), var_2.e.a, var_0), global0[_wgslsmith_index_u32(var_0, 13u)], -18014i, Struct_1(-1582f, vec2<i32>(57379i, 0i), -106f, 1u)), 4294967295u), Struct_2(var_2.b, Struct_1(var_2.b.a, vec2<i32>(2147483647i, 9627i), 117f, 0u), vec3<bool>(var_2.c.x, true, false), _wgslsmith_mult_i32(var_2.a.b.x, u_input.a.x), var_2.a), -_wgslsmith_sub_i32(0i, u_input.a.x)), u_input.c), !select(select(!vec4<bool>(true, var_2.c.x, var_2.c.x, false), !vec4<bool>(var_2.c.x, var_2.c.x, false, false), select(true, var_2.c.x, var_2.c.x)), !vec4<bool>(var_2.c.x, false, true, false), vec4<bool>(var_2.c.x, 1372f != var_2.b.a, var_2.c.x, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.c, var_2.a.c) + vec2<f32>(-2286f, var_2.a.a)))))).d.e.a;
    var_1 = true;
    var var_3 = vec4<i32>(~_wgslsmith_sub_i32(abs(var_2.e.b.x), _wgslsmith_add_i32(u_input.a.x, var_2.e.b.x)) >> (u_input.b % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.a.x), min(u_input.a.x, -31537i), u_input.a.x, var_2.e.b.x), countOneBits(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-2147483647i, u_input.a.x, 15242i, 0i)))) & ~(~u_input.a.x & _wgslsmith_add_i32(1i, 1i)), var_2.a.b.x, -_wgslsmith_mult_i32(var_2.e.b.x, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(~0i, ~1i)), vec4<i32>(50859i, u_input.a.x, 1867i, _wgslsmith_dot_vec4_i32(~u_input.a, ~(~vec4<i32>(u_input.a.x, 18851i, var_3.x, -54389i)))), u_input.a, ~abs(select(_wgslsmith_mult_vec4_u32(vec4<u32>(48984u, u_input.b, 28674u, var_0), vec4<u32>(var_2.e.d, 1u, 29249u, var_2.b.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(46092u, 0u, 27445u, 35395u), vec4<u32>(14728u, u_input.d.x, u_input.b, u_input.b)), true || var_2.c.x)), 42881u);
}

