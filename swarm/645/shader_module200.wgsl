struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(18123i, -10948i);

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(-2025f, vec4<f32>(741f, -494f, -1145f, 510f)), Struct_1(-1450f, vec4<f32>(472f, 686f, -583f, 1378f)), Struct_1(-284f, vec4<f32>(-624f, -397f, 1504f, 1228f)), Struct_1(-852f, vec4<f32>(1445f, -1000f, 1000f, -146f)), Struct_1(-417f, vec4<f32>(-650f, 1846f, 1758f, 1021f)), Struct_1(1643f, vec4<f32>(-2693f, -1900f, 1000f, -798f)), Struct_1(811f, vec4<f32>(-346f, -953f, 223f, -1000f)), Struct_1(1609f, vec4<f32>(-1583f, 792f, -431f, -182f)), Struct_1(2187f, vec4<f32>(-1204f, -1539f, -288f, 897f)), Struct_1(-1623f, vec4<f32>(752f, 1956f, 2345f, 284f)), Struct_1(482f, vec4<f32>(1271f, -598f, 652f, 1084f)), Struct_1(-1702f, vec4<f32>(-338f, 147f, 391f, 663f)), Struct_1(451f, vec4<f32>(-625f, -418f, -1114f, -553f)), Struct_1(251f, vec4<f32>(1759f, -407f, 1000f, 1302f)), Struct_1(-519f, vec4<f32>(-1234f, -212f, -506f, 1000f)), Struct_1(333f, vec4<f32>(-1430f, 676f, 755f, -205f)), Struct_1(384f, vec4<f32>(-587f, 1063f, 1860f, 267f)), Struct_1(752f, vec4<f32>(-1101f, 1393f, -911f, 728f)), Struct_1(715f, vec4<f32>(-754f, 1316f, -350f, -1183f)));

var<private> global3: i32 = 1i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32) -> f32 {
    let var_0 = 1i;
    global3 = u_input.d.x;
    global0 = u_input.d.yz;
    var var_1 = Struct_3(vec3<bool>(true, true, true), !vec3<bool>(!select(false, true, false), true, !(u_input.d.x >= -12625i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(1341f + -155f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(trunc(arg_0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(select(arg_1, 139f, true)))));
    global3 = u_input.d.x;
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global3 = u_input.d.x;
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(705f))))), -2354f, max(2147483647i, -22852i))));
    global1 = _wgslsmith_div_i32(abs(firstLeadingBit(~global0.x) | -2147483647i), 0i);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~(u_input.a.x & u_input.a.x), u_input.c), 1u), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.zy, vec2<u32>(0u, 13334u), ~u_input.a.xz) >> (~(u_input.a.zw >> (vec2<u32>(99526u, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.a.yw, _wgslsmith_mult_vec2_u32(u_input.b, ~u_input.a.ww)));
    global0 = ~vec2<i32>(global0.x, 30095i) << (~(~vec2<u32>(max(var_1, 0u), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f * var_0.a) - 1634f);
}

fn func_1(arg_0: bool) -> f32 {
    global3 = u_input.d.x;
    let var_0 = Struct_3(!vec3<bool>(~u_input.b.x >= 1u, arg_0 || any(vec2<bool>(true, true)), select(all(vec4<bool>(true, true, arg_0, true)), true, true)), vec3<bool>(arg_0, true, true && arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-170f)) - _wgslsmith_f_op_f32(2360f - -1000f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -528f), -625f, _wgslsmith_f_op_f32(trunc(-1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_0, false, arg_0, arg_0))), -1321f, _wgslsmith_div_f32(-836f, 328f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-982f, 1064f, 1000f))), vec3<f32>(1f, 1f, 1f), all(vec3<bool>(true, true, arg_0)))))));
    let var_1 = -6133i;
    let var_2 = _wgslsmith_f_op_f32(985f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2074f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = global2[_wgslsmith_index_u32(select(~13180u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 85619u, u_input.a.x, u_input.b.x), u_input.a), u_input.a) ^ _wgslsmith_clamp_u32(~u_input.b.x, 20038u, ~(~17728u)), all(select(select(!var_0.a, select(var_0.b, var_0.a, vec3<bool>(false, var_0.b.x, false)), !arg_0), select(!var_0.a, !var_0.a, all(vec2<bool>(true, var_0.b.x))), !var_0.a))), 19u)];
    return _wgslsmith_f_op_f32(func_3(var_2, _wgslsmith_f_op_f32(-1332f + 949f), var_1));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: f32) -> i32 {
    let var_0 = u_input.d;
    global3 = firstLeadingBit(_wgslsmith_div_i32(countOneBits(var_0.x), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, 16906i), vec3<i32>(-24986i, var_0.x, 2147483647i)), 0i)));
    global1 = min(~_wgslsmith_dot_vec4_i32(-(vec4<i32>(0i, -35128i, var_0.x, 1i) ^ vec4<i32>(u_input.d.x, var_0.x, var_0.x, -2147483647i)), ~(-vec4<i32>(var_0.x, u_input.d.x, -1i, var_0.x))), u_input.d.x);
    global2 = array<Struct_1, 19>();
    let var_1 = _wgslsmith_f_op_f32(965f + _wgslsmith_f_op_f32(-arg_3));
    return -abs(-(~global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global2 = array<Struct_1, 19>();
    global0 = vec2<i32>(~firstTrailingBit(u_input.d.x), u_input.d.x);
    global3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))))), true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1177f))) - _wgslsmith_f_op_f32(trunc(-2353f))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1436f, _wgslsmith_f_op_f32(func_3(-398f, -2819f, global0.x))))))));
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 19u)], vec4<bool>(!all(vec3<bool>(false, true, false)), select(false, u_input.c <= _wgslsmith_add_u32(25596u, u_input.b.x), all(vec4<bool>(true, true, true, true))), false, true), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1655f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true)) + _wgslsmith_f_op_f32(f32(-1f) * -102f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -600f), _wgslsmith_f_op_f32(f32(-1f) * -1447f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(473f, -1000f, global0.x))), -1000f)), var_0 << (var_0 % 32u), min(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(var_0, ~var_0)), var_0));
    var var_2 = !vec2<bool>(var_1.b.x, var_1.b.x);
    var var_3 = var_2.x;
    global1 = ~abs(_wgslsmith_add_i32(i32(-1i) * -1i, ~global0.x) & _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(58070i, global0.x, -26619i), global0.x, ~(-2147483647i)));
    global3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f) - 125f))), _wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a * -2146f)) + var_1.c.b.x)), vec3<u32>(reverseBits(var_1.e), 38134u, 53882u), _wgslsmith_add_vec2_i32(abs(~select(u_input.d.yy, u_input.d.zz, vec2<bool>(false, false))), _wgslsmith_sub_vec2_i32(-(u_input.d.yz >> (vec2<u32>(var_0, 0u) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(u_input.d.yy, -u_input.d.xx))));
}

