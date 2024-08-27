struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<f32>(243f, 303f, -667f), false, vec2<f32>(183f, 214f)), Struct_1(vec3<f32>(1661f, 212f, -1000f), false, vec2<f32>(417f, 1480f)), Struct_1(vec3<f32>(221f, -412f, -204f), false, vec2<f32>(-319f, 1206f)), Struct_1(vec3<f32>(1052f, 2189f, -2236f), true, vec2<f32>(1000f, -335f)), Struct_1(vec3<f32>(-833f, -220f, -171f), true, vec2<f32>(-1000f, -445f)), Struct_1(vec3<f32>(618f, 314f, -1299f), true, vec2<f32>(1459f, 1740f)), Struct_1(vec3<f32>(492f, -1054f, 700f), true, vec2<f32>(1000f, -415f)), Struct_1(vec3<f32>(489f, 3009f, 1552f), false, vec2<f32>(303f, 901f)), Struct_1(vec3<f32>(974f, -877f, -1000f), false, vec2<f32>(417f, -154f)), Struct_1(vec3<f32>(-333f, -1277f, -386f), true, vec2<f32>(-1209f, -782f)), Struct_1(vec3<f32>(-1000f, -967f, -1000f), false, vec2<f32>(583f, 666f)), Struct_1(vec3<f32>(1171f, -2263f, 239f), true, vec2<f32>(-805f, -1000f)), Struct_1(vec3<f32>(2074f, 272f, 584f), true, vec2<f32>(-1228f, -328f)), Struct_1(vec3<f32>(698f, -696f, 413f), false, vec2<f32>(-943f, 188f)), Struct_1(vec3<f32>(-2130f, -102f, 405f), false, vec2<f32>(590f, -654f)), Struct_1(vec3<f32>(-140f, 1500f, -1068f), true, vec2<f32>(-1237f, 1106f)), Struct_1(vec3<f32>(-2688f, -1196f, -327f), false, vec2<f32>(1329f, -255f)), Struct_1(vec3<f32>(813f, 1000f, -1007f), true, vec2<f32>(380f, 157f)), Struct_1(vec3<f32>(1039f, 414f, 1374f), true, vec2<f32>(1137f, 1000f)), Struct_1(vec3<f32>(389f, -1000f, 899f), false, vec2<f32>(343f, -178f)), Struct_1(vec3<f32>(-240f, 398f, -274f), false, vec2<f32>(592f, 896f)), Struct_1(vec3<f32>(228f, -1670f, -1008f), true, vec2<f32>(319f, -540f)), Struct_1(vec3<f32>(1000f, -1781f, -396f), true, vec2<f32>(-669f, -870f)), Struct_1(vec3<f32>(1699f, 324f, 258f), true, vec2<f32>(-613f, 2296f)), Struct_1(vec3<f32>(637f, 237f, -297f), true, vec2<f32>(423f, 202f)), Struct_1(vec3<f32>(637f, -889f, -718f), true, vec2<f32>(253f, -1877f)), Struct_1(vec3<f32>(1000f, 1400f, 938f), true, vec2<f32>(380f, -1348f)), Struct_1(vec3<f32>(1333f, -1177f, -1000f), true, vec2<f32>(1000f, 857f)));

var<private> global2: i32;

var<private> global3: array<Struct_5, 32>;

var<private> global4: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> vec2<f32> {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(-select(vec3<i32>(-35138i, 14456i, -1i), vec3<i32>(arg_1, 2147483647i, 2147483647i), vec3<bool>(arg_2, true, false))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-43583i, global0.x, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, -1719i, arg_1), vec3<i32>(10706i, u_input.a, arg_1)))), ~global0.x);
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.x, u_input.a), min((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, arg_1), vec3<i32>(arg_1, 55782i, u_input.a)) >> ((25748u >> (arg_0 % 32u)) % 32u)) >> (_wgslsmith_div_u32(u_input.c, arg_0) % 32u), abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 2147483647i, -2147483647i, global0.x), select(vec4<i32>(2147483647i, -1i, -4116i, var_0.x), vec4<i32>(u_input.a, 2147483647i, u_input.a, -32358i), false)))));
    var var_2 = vec4<bool>(!arg_2, arg_2, any(select(select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(true, false, arg_2), -40238i <= arg_1), select(select(vec3<bool>(false, false, arg_2), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, true, arg_2)), !vec3<bool>(arg_2, false, true), true), select(!vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, arg_2, true), arg_2), !arg_2))), true);
    var var_3 = abs(arg_0);
    let var_4 = false;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1109f, 375f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(916f, -1000f))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-959f)), _wgslsmith_f_op_f32(521f + -1000f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(1169f * -826f), _wgslsmith_f_op_f32(700f * 1000f)))), vec2<bool>(any(vec3<bool>(false, true, true)), var_4)))));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_5 {
    return Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(382f, arg_1.c.x, arg_2.c.x))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1510f, -455f), arg_0.c.a.xx))) * _wgslsmith_div_vec2_f32(vec2<f32>(209f, -856f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a.x, arg_1.c.x))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-891f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.b.a, -1735f)), _wgslsmith_f_op_f32(224f + -1424f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f)), !arg_0.b.c, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.c.x + 1409f), -126f, _wgslsmith_f_op_f32(f32(-1f) * -296f)), true, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2.a.zx)))), arg_2.b), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a), !(_wgslsmith_f_op_f32(936f * 227f) > _wgslsmith_f_op_f32(arg_2.a.x + arg_0.a.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(abs(1u), global0.x ^ u_input.a, true)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -454f), 877f))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.x) - _wgslsmith_f_op_f32(-arg_1.a.a.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.a.x * 2720f), _wgslsmith_f_op_f32(arg_1.a.c.x * 1100f)))))) >= 393f;
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-30375i, 0i, firstTrailingBit(u_input.a)), vec3<i32>(2147483647i, _wgslsmith_add_i32(~2147483647i, i32(-1i) * -u_input.a), _wgslsmith_clamp_i32(u_input.a, 0i, ~(-58612i))));
    let var_1 = Struct_3(arg_1.b.d, (_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 49557i), global0.yy) ^ (-global0.yx ^ vec2<i32>(global0.x, u_input.a))) & vec2<i32>(~_wgslsmith_mod_i32(u_input.a, -2147483647i), 0i), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(select(arg_0.xz, arg_0.xx, false), arg_0.yy), ~(~vec2<u32>(u_input.c, 36413u))) >> (~vec2<u32>(~arg_0.x, 0u >> (arg_0.x % 32u)) % vec2<u32>(32u)), func_2(Struct_5(func_2(global3[_wgslsmith_index_u32(20010u ^ arg_0.x, 32u)], func_2(global3[_wgslsmith_index_u32(1u, 32u)], Struct_1(arg_1.b.d.a, false, arg_1.a.a.xy), global1[_wgslsmith_index_u32(0u, 28u)], vec4<i32>(-2147483647i, global0.x, 12038i, u_input.a)).a, arg_1.c, vec4<i32>(global0.x, -2147483647i, -30543i, u_input.a)).a, arg_1.b, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a.x, 208f, arg_1.a.a.x)), all(vec4<bool>(false, false, false, false)), vec2<f32>(arg_1.b.a, 243f))), Struct_1(arg_1.a.a, false, _wgslsmith_div_vec2_f32(arg_1.c.a.xy, _wgslsmith_f_op_vec2_f32(-arg_1.a.a.zy))), func_2(arg_1, func_2(Struct_5(Struct_1(vec3<f32>(arg_1.b.a, -403f, 1781f), true, arg_1.c.a.yx), Struct_2(arg_1.b.a, -693f, vec4<bool>(var_0, false, arg_1.c.b, arg_1.a.b), global1[_wgslsmith_index_u32(u_input.b, 28u)], arg_1.b.c.x), Struct_1(vec3<f32>(-1535f, arg_1.c.a.x, arg_1.b.d.c.x), false, vec2<f32>(arg_1.c.c.x, arg_1.c.c.x))), Struct_1(vec3<f32>(673f, 515f, -1000f), arg_1.b.e, arg_1.c.c), Struct_1(vec3<f32>(arg_1.a.c.x, arg_1.a.c.x, arg_1.c.c.x), true, arg_1.a.c), countOneBits(vec4<i32>(global0.x, u_input.a, -1i, -12633i))).b.d, Struct_1(vec3<f32>(arg_1.b.a, -170f, arg_1.a.a.x), var_0 && false, _wgslsmith_div_vec2_f32(arg_1.c.c, arg_1.b.d.c)), vec4<i32>(global0.x & 1i, u_input.a, global0.x, 1i)).c, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(-7539i, global0.x, 2147483647i, 2147483647i), max(vec4<i32>(-49619i, u_input.a, 22385i, 2147483647i), vec4<i32>(0i, u_input.a, u_input.a, 0i))), vec4<i32>(global0.x, _wgslsmith_dot_vec2_i32(global0.xx, vec2<i32>(-2147483647i, u_input.a)), -2147483647i, u_input.a))).c);
    global3 = array<Struct_5, 32>();
    global0 = vec3<i32>(abs(1i), _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(var_1.b, _wgslsmith_add_vec2_i32(vec2<i32>(var_1.b.x, global0.x), global0.zx)), vec2<i32>(var_1.b.x ^ -13857i, var_1.b.x)), 2147483647i);
    return !vec2<bool>(u_input.a <= _wgslsmith_dot_vec2_i32(vec2<i32>(10953i, var_1.b.x), select(var_1.b, var_1.b, false)), all(select(select(arg_1.b.c.wxz, vec3<bool>(true, false, true), var_1.d.b), arg_1.b.c.ywz, !var_1.d.b)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: u32) -> u32 {
    var var_0 = any(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), !func_4(vec3<u32>(1u, arg_1.x, arg_1.x) << (vec3<u32>(42413u, 28029u, 0u) % vec3<u32>(32u)), func_2(global3[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(arg_2, 28u)], Struct_1(vec3<f32>(arg_0.x, 1000f, arg_0.x), false, arg_0), vec4<i32>(-24708i, 0i, global0.x, -62681i)), select(vec4<u32>(79761u, 52556u, arg_1.x, 87023u), vec4<u32>(4294967295u, 0u, u_input.c, arg_1.x), false)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    global1 = array<Struct_1, 28>();
    global2 = global0.x;
    var var_1 = _wgslsmith_dot_vec4_u32(countOneBits(~countOneBits(select(vec4<u32>(arg_2, 1u, 89421u, 1u), vec4<u32>(60752u, arg_2, 74950u, arg_1.x), true))), vec4<u32>(arg_1.x, reverseBits(arg_2), ~arg_1.x, abs(22412u)));
    let var_2 = func_2(global3[_wgslsmith_index_u32(arg_1.x, 32u)], func_2(global3[_wgslsmith_index_u32(62774u, 32u)], Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_0.x, 865f), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, false, false))))), any(vec4<bool>(true, false, true, false)), arg_0), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(-616f, -1123f)), -964f, 1f), all(vec4<bool>(true, true, true, true)), arg_0), vec4<i32>(_wgslsmith_div_i32(-9018i, -1i), global0.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(global0.zx, global0.xz)), _wgslsmith_div_i32(firstTrailingBit(-1i), 1i))).b.d, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(638f, -954f, _wgslsmith_div_f32(1000f, arg_0.x)))), arg_2 < (~arg_1.x << (u_input.c % 32u)), vec2<f32>(-665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, -252f, true))))), vec4<i32>(~_wgslsmith_sub_i32(2147483647i, 0i << (1u % 32u)), ~(~firstTrailingBit(42952i)), -(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(1i << (u_input.c % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -1815i, global0.x, u_input.a) >> (vec4<u32>(u_input.b, arg_1.x, arg_1.x, u_input.b) % vec4<u32>(32u)), vec4<i32>(u_input.a, 1i, 0i, 1i)))));
    return _wgslsmith_div_u32(8273u, select(arg_2, firstLeadingBit(u_input.b), var_2.b.c.x));
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: Struct_5) -> Struct_1 {
    var var_0 = u_input.a;
    global3 = array<Struct_5, 32>();
    global2 = max(1i << (u_input.c % 32u), u_input.a);
    return arg_1.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c.x);
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c.x + arg_1.x)));
    global0 = ~vec3<i32>(~(-39332i), -select(-1i, global0.x, true), global0.x) << (_wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 4294967295u, 11894u) >> (~vec3<u32>(u_input.b, 1u, 7681u) % vec3<u32>(32u))), countOneBits(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.b), vec3<u32>(u_input.b, u_input.c, u_input.c))))) % vec3<u32>(32u));
    let var_1 = func_2(Struct_5(global1[_wgslsmith_index_u32(~57150u, 28u)], func_2(global3[_wgslsmith_index_u32(0u, 32u)], Struct_1(vec3<f32>(224f, arg_0.a.x, 1208f), arg_0.b == arg_0.b, arg_1.xz), Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_1, arg_0.a)), true, vec2<f32>(arg_1.x, -645f)), countOneBits(vec4<i32>(1i, global0.x, u_input.a, u_input.a)) >> ((vec4<u32>(0u, 0u, u_input.b, u_input.c) >> (vec4<u32>(14828u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))).b, arg_0), Struct_1(arg_0.a, false, _wgslsmith_f_op_vec2_f32(-arg_0.a.xz)), arg_0, select(min(-vec4<i32>(global0.x, -1i, global0.x, global0.x), max(vec4<i32>(u_input.a, 45787i, 1i, 2147483647i), vec4<i32>(global0.x, -2147483647i, -1i, 69867i))) & abs(~vec4<i32>(global0.x, u_input.a, global0.x, u_input.a)), vec4<i32>(-u_input.a, ~_wgslsmith_clamp_i32(global0.x, 1i, 1i), ~1i, _wgslsmith_sub_i32(firstLeadingBit(-2147483647i), global0.x ^ -14776i)), false)).b;
    let var_2 = (func_4(vec3<u32>(19851u, 0u, u_input.c), global3[_wgslsmith_index_u32(72781u, 32u)], vec4<u32>(~u_input.c, _wgslsmith_mult_u32(u_input.c, u_input.c), ~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 34811u), vec2<u32>(u_input.b, 1u)))).x | !arg_0.b) & !func_2(func_2(Struct_5(Struct_1(vec3<f32>(383f, -897f, arg_0.a.x), true, vec2<f32>(var_1.d.a.x, -1131f)), Struct_2(arg_0.c.x, arg_0.c.x, var_1.c, Struct_1(arg_1, true, var_1.d.a.yx), true), var_1.d), var_1.d, func_2(global3[_wgslsmith_index_u32(u_input.c, 32u)], Struct_1(arg_1, false, vec2<f32>(391f, arg_0.c.x)), var_1.d, vec4<i32>(-3363i, -18715i, -1i, -48277i)).a, _wgslsmith_clamp_vec4_i32(vec4<i32>(-7192i, global0.x, u_input.a, global0.x), vec4<i32>(-29012i, global0.x, u_input.a, -2147483647i), vec4<i32>(2147483647i, global0.x, -25024i, 57268i))), global1[_wgslsmith_index_u32(~(~0u), 28u)], func_2(global3[_wgslsmith_index_u32(~0u, 32u)], Struct_1(arg_0.a, var_1.c.x, vec2<f32>(-763f, 460f)), var_1.d, vec4<i32>(u_input.a, global0.x, 5408i, -2147483647i)).a, vec4<i32>(global0.x, global0.x, 2147483647i, global0.x)).a.b;
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 0i;
    global3 = array<Struct_5, 32>();
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2267f))))), 247f)) + _wgslsmith_div_f32(-263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1371f + -1090f) + _wgslsmith_f_op_f32(sign(1730f))) - 1f)));
    global1 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(941f + -1963f), -103f, _wgslsmith_div_f32(1071f, 575f))))));
    let var_1 = all(func_6(func_5(var_0.x, global3[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_0.yz), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 110558u), vec2<u32>(u_input.b, u_input.b)), countOneBits(64746u)), 32u)], ~firstTrailingBit(vec3<i32>(global0.x, 19601i, global0.x)), func_2(Struct_5(global1[_wgslsmith_index_u32(1u, 28u)], Struct_2(var_0.x, 365f, vec4<bool>(false, true, false, true), global1[_wgslsmith_index_u32(u_input.b, 28u)], true), global1[_wgslsmith_index_u32(u_input.b, 28u)]), Struct_1(var_0, false, vec2<f32>(730f, 455f)), Struct_1(var_0, true, vec2<f32>(-1000f, var_0.x)), abs(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(func_2(Struct_5(global1[_wgslsmith_index_u32(45269u, 28u)], Struct_2(-874f, var_0.x, vec4<bool>(false, true, false, false), Struct_1(var_0, false, var_0.yz), true), global1[_wgslsmith_index_u32(1u, 28u)]), global1[_wgslsmith_index_u32(u_input.c, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)], vec4<i32>(global0.x, 2147483647i, global0.x, -23205i)).b.d.a, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~(~firstLeadingBit(vec4<i32>(18613i, global0.x, global0.x, u_input.a))), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -1i, -2147483647i, -2147483647i), vec4<i32>(u_input.a, global0.x, u_input.a, 0i)), firstLeadingBit(vec4<i32>(-19510i, global0.x, u_input.a, global0.x)), countOneBits(vec4<i32>(global0.x, u_input.a, -1i, -13858i))), vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-34778i, 2147483647i, global0.x, global0.x), vec4<i32>(u_input.a, 35841i, u_input.a, 1i)), 2147483647i, global0.x))), 4294967295u, ~abs(1u), vec4<f32>(var_0.x, 1503f, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -126f)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(abs(u_input.c), u_input.b, u_input.c, _wgslsmith_add_u32(35566u, u_input.c)), ~(vec4<u32>(u_input.c, 15205u, u_input.b, 4294967295u) >> (vec4<u32>(u_input.b, 23238u, u_input.c, u_input.b) % vec4<u32>(32u))), (2147483647i >= global0.x) != select(var_1, true, false)), ~vec4<u32>(~42967u, u_input.c, ~u_input.c, 1u), vec4<u32>(1u, _wgslsmith_add_u32(func_1(var_0.zy, vec2<u32>(u_input.b, u_input.b), u_input.c), ~u_input.c), func_1(var_0.zy, vec2<u32>(57640u, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), 0u), abs(38690u))));
}

