struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(909f, 299f, -240f, -1662f), vec4<f32>(-1000f, 1434f, 568f, 1340f), vec4<f32>(-724f, -866f, -1520f, -697f), vec4<f32>(-616f, -285f, -794f, 1032f), vec4<f32>(1505f, 1283f, -2269f, -2370f), vec4<f32>(1815f, -1069f, -738f, 972f), vec4<f32>(509f, 799f, 688f, 367f), vec4<f32>(1708f, -1150f, 1515f, -513f), vec4<f32>(-703f, -635f, -359f, -2436f), vec4<f32>(741f, 986f, -2420f, 625f), vec4<f32>(-353f, -401f, 885f, -2549f), vec4<f32>(660f, -1582f, -377f, -845f), vec4<f32>(-788f, -984f, -2053f, -570f), vec4<f32>(-1969f, 765f, -1554f, -765f), vec4<f32>(-645f, 961f, -1363f, -3066f), vec4<f32>(1598f, 1028f, -139f, 2004f), vec4<f32>(757f, 1000f, 2236f, -169f), vec4<f32>(518f, -1346f, 837f, -177f), vec4<f32>(1785f, -395f, -103f, -1000f), vec4<f32>(553f, -876f, -521f, 1140f), vec4<f32>(-546f, -569f, 142f, 895f), vec4<f32>(-393f, -1534f, 974f, -1202f));

var<private> global1: array<u32, 15>;

var<private> global2: array<i32, 8> = array<i32, 8>(1i, 0i, 1i, -45498i, 2147483647i, 2147483647i, 12146i, i32(-2147483648));

var<private> global3: array<vec3<bool>, 31>;

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    return i32(-1i) * -19863i;
}

fn func_1(arg_0: bool) -> vec2<bool> {
    global0 = array<vec4<f32>, 22>();
    let var_0 = Struct_2(~min(vec2<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39598u, 15u)], 8u)], u_input.a.x), vec2<i32>(-4019i, -4730i)) ^ firstTrailingBit(u_input.a));
    global0 = array<vec4<f32>, 22>();
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(-13985i, u_input.a.x), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)] ^ ~0u, 8u)], ~(_wgslsmith_mult_i32(var_0.a.x, func_2()) | 17960i), -(1i ^ var_0.a.x));
    global2 = array<i32, 8>();
    return !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), !vec2<bool>(global4.x, false), all(vec2<bool>(false, global4.x))), any(select(vec4<bool>(arg_0, global4.x, arg_0, false), vec4<bool>(arg_0, arg_0, global4.x, arg_0), vec4<bool>(false, arg_0, false, true)))));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global0 = array<vec4<f32>, 22>();
    var var_0 = any(vec2<bool>(!(global2[_wgslsmith_index_u32(~8921u, 8u)] > -u_input.a.x), !(!(!global4.x))));
    var var_1 = global4.x;
    let var_2 = _wgslsmith_sub_i32(~max(0i, firstLeadingBit(29785i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-6047i, ~u_input.a.x, 2147483647i, global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 8u)]), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-6672i, -23165i, 2147483647i, 72999i), vec4<i32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 8u)], -26191i)) << (vec4<u32>(4294967295u, 52510u, 28969u, 51576u) % vec4<u32>(32u)), ~select(vec4<i32>(-1i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10842u, 15u)], 15u)], 8u)], -72617i, 43728i), vec4<i32>(global2[_wgslsmith_index_u32(16627u, 8u)], global2[_wgslsmith_index_u32(20993u, 8u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(93614u, 15u)], 8u)], u_input.a.x), vec4<bool>(false, global4.x, global4.x, global4.x)))));
    let var_3 = Struct_5(vec2<u32>(1u, 1u));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1024f - -1000f) * arg_0.x) - arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(242f)), arg_0.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1876f + -592f), _wgslsmith_f_op_f32(abs(-1931f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec2<bool>(!all(vec2<bool>(global4.x, true)), true), func_1(global4.x), false));
    var var_1 = Struct_3(firstLeadingBit(~(~1u)), Struct_1(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(13711u, 0u), 15u)], 8u)], -2147483647i), ~(-min(u_input.a, vec2<i32>(global2[_wgslsmith_index_u32(22843u, 8u)], -12184i))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1940f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1270f, 2042f, -1001f) - vec3<f32>(-124f, 925f, 983f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-408f, -1309f), vec2<f32>(-1284f, -1509f))), vec2<f32>(333f, -357f)))), _wgslsmith_div_i32(-(1i >> (global1[_wgslsmith_index_u32(4294967295u, 15u)] % 32u)), 27591i)), global0[_wgslsmith_index_u32(16742u, 22u)]);
    var_1 = Struct_3(~(~global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15104u, 15u)], 15u)]), 15u)]), var_1.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(var_1.b.d.x, -1917f))) - var_1.c.x) * var_1.b.c.x), var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * var_1.b.c.x))));
    var var_2 = Struct_4(var_1.c.x, Struct_1(-61525i, vec2<i32>(var_1.b.a, -70780i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.c * var_1.c.www)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.c.x + var_1.c.x), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1314f, var_1.c.x)))), var_1.b.a), _wgslsmith_f_op_f32(select(-637f, _wgslsmith_f_op_f32(f32(-1f) * -360f), func_1(true).x)), _wgslsmith_f_op_f32(-var_1.c.x), Struct_1(max(_wgslsmith_mod_i32(_wgslsmith_add_i32(18810i, u_input.a.x), var_1.b.a), u_input.a.x), ~(select(vec2<i32>(0i, -11560i), vec2<i32>(global2[_wgslsmith_index_u32(var_1.a, 8u)], -7525i), vec2<bool>(global4.x, true)) ^ var_1.b.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.c.xww))), var_1.c.yz, -_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.a.x, -2147483647i), ~vec3<i32>(35147i, u_input.a.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 8u)]))));
    var var_3 = Struct_1(1i, ~(var_2.b.b >> (~abs(vec2<u32>(var_1.a, var_1.a)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(var_2.b.c + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.c.xxy))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.e.c + var_2.b.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.e.c.yy)))), global2[_wgslsmith_index_u32(4294967295u, 8u)]);
    let var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(716f, var_1.a, ~(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.a, var_2.b.b.x, 1i), vec3<i32>(var_2.b.b.x, var_2.b.e, 1i)), reverseBits(-18844i)) << (~global1[_wgslsmith_index_u32(~1u, 15u)] % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-413f + -788f) + -1100f));
}

