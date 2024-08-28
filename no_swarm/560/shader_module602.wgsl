struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> bool {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    let var_0 = Struct_1(vec3<i32>(countOneBits(_wgslsmith_mult_i32(-1i, global0[_wgslsmith_index_u32(4294967295u, 3u)])), 1i, u_input.b), -1i, vec3<bool>(arg_0.b.x, arg_0.b.x, false));
    global0 = array<i32, 3>();
    let var_1 = firstTrailingBit(vec2<i32>(var_0.b, var_0.b));
    return false;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_1 {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    var var_0 = u_input.a.x;
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    return Struct_1(vec3<i32>(~_wgslsmith_div_i32(min(51067i, -9980i), ~u_input.b), -(~_wgslsmith_mod_i32(2147483647i, arg_1.c.c.a.x)), 9920i), u_input.b, vec3<bool>(func_2(Struct_5(_wgslsmith_f_op_f32(floor(arg_1.a.a.x)), arg_1.a.c.c.zx), max(1u, arg_0.x)), arg_1.b.x, ((arg_1.c.a.x < arg_1.a.a.x) && arg_1.c.c.c.x) || arg_1.b.x));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_0.a), func_1(u_input.a.xx, Struct_3(arg_0, arg_1.c.c.yz, Struct_2(vec4<f32>(-834f, arg_1.a.x, 463f, 176f), Struct_1(vec3<i32>(arg_0.c.a.x, 1i, arg_1.c.a.x), 2147483647i, vec3<bool>(arg_0.c.c.x, true, arg_1.b.c.x)), arg_1.b), abs(~vec3<u32>(u_input.a.x, u_input.a.x, 34742u)), _wgslsmith_mult_u32(4294967295u, ~u_input.a.x))), Struct_1(arg_0.c.a & vec3<i32>(arg_0.b.b << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.b, global0[_wgslsmith_index_u32(1u, 3u)]), arg_0.c.a.zx), 25529i), 0i, select(vec3<bool>(arg_1.c.c.x, !arg_1.b.c.x, all(vec2<bool>(true, false))), vec3<bool>(!arg_1.b.c.x, !arg_1.c.c.x, true && arg_0.b.c.x), vec3<bool>(!arg_0.b.c.x, false, true & arg_1.b.c.x))));
    let var_1 = select(min(~vec3<i32>(~(-18369i), global0[_wgslsmith_index_u32(1u, 3u)] << (u_input.a.x % 32u), firstLeadingBit(u_input.b)), _wgslsmith_mult_vec3_i32(select(arg_1.b.a, vec3<i32>(var_0.b.a.x, 2147483647i, arg_1.c.b), false) << (u_input.a.yww % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(arg_0.b.a & arg_1.c.a, -arg_1.b.a))), countOneBits(select(arg_0.b.a, var_0.b.a, !arg_1.b.c) | min(abs(arg_1.c.a), vec3<i32>(var_0.b.a.x, u_input.b, -33356i))), select(!vec3<bool>(select(var_0.c.c.x, var_0.c.c.x, false), -1477f <= arg_0.a.x, true), arg_0.c.c, vec3<bool>(true, var_0.c.c.x || true, 1u >= u_input.a.x)));
    global0 = array<i32, 3>();
    return arg_0.b.b;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>) -> StorageBuffer {
    var var_0 = Struct_2(vec4<f32>(-258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1124f) - _wgslsmith_f_op_f32(-194f + 251f))), -1538f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1133f * arg_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2438f - -581f) - -1692f))), func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1), Struct_1(vec3<i32>(1i, 0i, u_input.b), -1i, vec3<bool>(true, true, true)), func_1(u_input.a.xx, Struct_3(Struct_2(vec4<f32>(-1518f, arg_1.x, -1373f, arg_1.x), Struct_1(vec3<i32>(-1i, -1i, 0i), -1i, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(47122i, 0i, -2147483647i), -34061i, vec3<bool>(true, true, true))), vec2<bool>(true, true), Struct_2(arg_1, Struct_1(vec3<i32>(2147483647i, -74834i, arg_0), 1i, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), arg_0, vec3<bool>(false, false, true))), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x))), vec2<bool>(any(vec2<bool>(false, true)), true), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-193f, arg_1.x, arg_1.x, arg_1.x)), func_1(u_input.a.wy, Struct_3(Struct_2(arg_1, Struct_1(vec3<i32>(arg_0, global0[_wgslsmith_index_u32(17139u, 3u)], -7107i), 18126i, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(arg_0, 0i, -47678i), global0[_wgslsmith_index_u32(60921u, 3u)], vec3<bool>(true, true, true))), vec2<bool>(true, false), Struct_2(vec4<f32>(-661f, 1762f, -899f, 959f), Struct_1(vec3<i32>(1i, u_input.b, arg_0), 4657i, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(-1i, arg_0, arg_0), -2147483647i, vec3<bool>(false, false, false))), u_input.a.zxz, 16802u)), Struct_1(vec3<i32>(-2147483647i, u_input.b, 1i), -31510i, vec3<bool>(false, false, true))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 6405u), vec3<u32>(22828u, u_input.a.x, 4294967295u)), u_input.a.x)), Struct_1((firstTrailingBit(vec3<i32>(arg_0, -67542i, 8398i)) >> (vec3<u32>(u_input.a.x, 4294967295u, 77494u) % vec3<u32>(32u))) << ((_wgslsmith_div_vec3_u32(u_input.a.zzy, u_input.a.zzy) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(10684u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 39610u, u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), arg_0 << (u_input.a.x % 32u), vec3<bool>(true, true, true)));
    return StorageBuffer(u_input.a.yyy, func_1(vec2<u32>(_wgslsmith_mult_u32(0u, firstLeadingBit(u_input.a.x)), _wgslsmith_clamp_u32(1u, u_input.a.x << (u_input.a.x % 32u), u_input.a.x | u_input.a.x)), Struct_3(Struct_2(vec4<f32>(-1000f, var_0.a.x, -515f, arg_1.x), var_0.c, var_0.b), !var_0.c.c.xy, Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1108f, var_0.a.x, arg_1.x, arg_1.x))), func_1(u_input.a.wy, Struct_3(Struct_2(arg_1, var_0.b, var_0.c), vec2<bool>(var_0.c.c.x, true), Struct_2(arg_1, Struct_1(var_0.b.a, var_0.c.b, var_0.b.c), Struct_1(var_0.c.a, arg_0, var_0.c.c)), vec3<u32>(44583u, 10223u, u_input.a.x), u_input.a.x)), func_1(u_input.a.yz, Struct_3(Struct_2(var_0.a, var_0.c, var_0.b), vec2<bool>(false, var_0.b.c.x), Struct_2(arg_1, var_0.c, Struct_1(var_0.c.a, 0i, var_0.c.c)), vec3<u32>(u_input.a.x, 68113u, 4294967295u), 4294967295u))), ~abs(u_input.a.yxy), 1u)).a.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(887f, -399f, 597f, 363f), vec4<f32>(1278f, -1902f, -771f, -500f), false)) - vec4<f32>(708f, -690f, 1632f, -274f)), func_1(vec2<u32>(4294967295u, u_input.a.x), Struct_3(Struct_2(vec4<f32>(1488f, -354f, -1496f, -320f), Struct_1(vec3<i32>(u_input.b, 0i, u_input.b), 1i, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(2147483647i, 11166i, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), global0[_wgslsmith_index_u32(u_input.a.x, 3u)], vec3<bool>(false, false, false))), vec2<bool>(false, true), Struct_2(vec4<f32>(1079f, 291f, 1930f, 127f), Struct_1(vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -13349i), u_input.b, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-1907i, 0i, 0i), 16969i, vec3<bool>(false, true, false))), u_input.a.yzy, u_input.a.x)), func_1(~vec2<u32>(48913u, u_input.a.x), Struct_3(Struct_2(vec4<f32>(1000f, 297f, 1180f, -1259f), Struct_1(vec3<i32>(-2147483647i, 59410i, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), u_input.b, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), 1934i, vec3<bool>(true, false, true))), vec2<bool>(false, false), Struct_2(vec4<f32>(-1626f, 1649f, 594f, 2215f), Struct_1(vec3<i32>(22336i, global0[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b), u_input.b, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -31190i, u_input.b), -80174i, vec3<bool>(true, false, true))), u_input.a.zwz, u_input.a.x))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(245f, -267f, 805f, 1402f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(480f, 373f, 436f, -736f)))), Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), -49259i, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), func_1(~vec2<u32>(u_input.a.x, u_input.a.x), Struct_3(Struct_2(vec4<f32>(-1134f, 1216f, -351f, -2027f), Struct_1(vec3<i32>(-1i, 12401i, u_input.b), -47395i, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(20181i, -2287i, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), global0[_wgslsmith_index_u32(48963u, 3u)], vec3<bool>(true, false, true))), vec2<bool>(false, false), Struct_2(vec4<f32>(745f, 141f, -1410f, -573f), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], u_input.b, u_input.b), -2147483647i, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(-41305i, -19929i, global0[_wgslsmith_index_u32(49267u, 3u)]), u_input.b, vec3<bool>(true, true, false))), vec3<u32>(u_input.a.x, 14168u, u_input.a.x), 4294967295u)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2420f, _wgslsmith_f_op_f32(104f + _wgslsmith_div_f32(-1280f, 706f)), _wgslsmith_f_op_f32(-234f - -1103f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(906f, 780f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f), 1552f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -750f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1432f, 1430f))))));
}

