struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-151f, 676f), vec2<f32>(-881f, 604f), vec2<f32>(-113f, 546f), vec2<f32>(360f, -186f), vec2<f32>(2388f, -1312f), vec2<f32>(237f, 518f), vec2<f32>(-556f, 1691f), vec2<f32>(487f, -299f), vec2<f32>(-306f, -1012f), vec2<f32>(-522f, -318f), vec2<f32>(1460f, 2065f), vec2<f32>(-281f, 1100f), vec2<f32>(-898f, -174f), vec2<f32>(1326f, -178f), vec2<f32>(-941f, 317f), vec2<f32>(-498f, 714f), vec2<f32>(-1269f, -166f), vec2<f32>(1247f, -927f), vec2<f32>(-1000f, 1151f), vec2<f32>(-458f, 817f), vec2<f32>(-1000f, 1000f), vec2<f32>(-320f, 998f), vec2<f32>(-2327f, 607f), vec2<f32>(-202f, -380f), vec2<f32>(1225f, 961f), vec2<f32>(220f, 1575f), vec2<f32>(-228f, 1647f), vec2<f32>(904f, 940f), vec2<f32>(524f, 794f), vec2<f32>(-1000f, 762f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    var var_0 = !vec2<bool>(arg_2 != false, all(select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, false))));
    let var_1 = arg_1;
    let var_2 = arg_1;
    global0 = array<vec2<f32>, 30>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_1.a)))))), (_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(var_2.b.x, 20842i, var_2.b.x, -1217i)), max(var_1.b, var_1.b)) & _wgslsmith_mod_vec4_i32(vec4<i32>(37188i, 2147483647i, var_1.b.x, 48917i) & vec4<i32>(var_2.b.x, -2147483647i, arg_1.b.x, -46035i), select(var_1.b, vec4<i32>(var_2.b.x, 37513i, -17224i, -3898i), vec4<bool>(true, true, arg_2, arg_2)))) << (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, var_1.c.x, 0u, 4294967295u)), arg_1.c, ~arg_1.c) % vec4<u32>(32u)), var_2.c);
    return ~arg_1.b;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-616f, -711f), global0[_wgslsmith_index_u32(u_input.a, 30u)])));
    let var_1 = -44709i;
    var var_2 = Struct_1(115f, func_3(97010u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -(~vec4<i32>(var_1, 13507i, var_1, -50452i)), ~countOneBits(vec4<u32>(16590u, 1u, u_input.a, 1u))), false), vec4<u32>(1u, ~33417u, _wgslsmith_div_u32(62564u, min(92334u, ~1u)), _wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_add_u32(u_input.b.x, u_input.a & u_input.a))));
    let var_3 = Struct_1(_wgslsmith_div_f32(-1069f, -614f), -(~(-func_3(u_input.a, Struct_1(var_2.a, vec4<i32>(-9217i, var_1, var_2.b.x, var_1), var_2.c), true))), vec4<u32>(min(_wgslsmith_sub_u32(0u, 9703u & u_input.b.x), 4294967295u), 1u, abs(countOneBits(_wgslsmith_div_u32(u_input.a, 0u))), ~(~var_2.c.x) | ~u_input.b.x));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1131f)) + 729f), var_2.b, firstLeadingBit(var_2.c));
    return var_2.a;
}

fn func_1() -> f32 {
    let var_0 = any(vec3<bool>(true, true, true));
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1695f * -771f), -2097f, _wgslsmith_f_op_f32(315f * 260f), 1140f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(732f, 2820f, 700f, -545f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(994f, 960f, 2412f, -333f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(368f, 688f, 621f, 1000f) - vec4<f32>(-638f, 655f, -804f, -533f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, 1000f, -1336f, 1136f)), true)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(997f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1271f + 528f) + -1898f), -2454f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1007f))), -678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-129f))))));
    let var_2 = ((~u_input.b & u_input.b) ^ ((~u_input.b << (u_input.b % vec2<u32>(32u))) | select(firstTrailingBit(vec2<u32>(30247u, 27722u)), u_input.b, select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), vec2<bool>(var_0, false))))) << (u_input.b % vec2<u32>(32u));
    return -609f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1789f - _wgslsmith_f_op_f32(func_1())), vec4<i32>(-countOneBits(97570i), ~1i, 12952i, -21838i), ~vec4<u32>(4294967295u, u_input.b.x & 73057u, 0u ^ u_input.b.x, u_input.b.x) ^ vec4<u32>(select(_wgslsmith_add_u32(u_input.a, u_input.a), ~9824u, true), 0u ^ u_input.b.x, u_input.a, _wgslsmith_mod_u32(countOneBits(0u), u_input.b.x << (u_input.a % 32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_1()), ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, -53914i, var_0.b.x, var_0.b.x), ~var_0.b) & firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, 1i, -2147483647i), vec4<i32>(2147483647i, var_0.b.x, -67349i, -8993i), vec4<i32>(var_0.b.x, 2147483647i, -2147483647i, var_0.b.x)), max(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 25999i), vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), func_3(36787u, var_0, true))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(min(1u, u_input.a), 80771u << (u_input.b.x % 32u), ~1u, select(58472u, var_0.c.x, false)), reverseBits(countOneBits(vec4<u32>(u_input.b.x, var_0.c.x, u_input.a, 0u)))));
    var var_2 = var_0.a;
    var_1 = var_0;
    var var_3 = ~var_1.c.yzx;
    let var_4 = var_0;
    let var_5 = select(select(vec2<bool>(any(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), vec2<bool>(true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)))), true), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(select(vec2<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, false))), vec2<bool>(all(vec4<bool>(false, false, true, true)), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec3<bool>(true, false, true))), vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, true)), false));
    let var_6 = var_4.c;
    var_3 = ~(~(~var_1.c.zxy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(900f - var_1.a), -var_0.b.x, max(vec2<i32>(_wgslsmith_dot_vec3_i32(var_4.b.wyz, var_1.b.wzz) ^ _wgslsmith_mod_i32(0i, var_0.b.x), ~select(var_0.b.x, var_4.b.x, var_5.x)), -vec2<i32>(select(var_4.b.x, var_4.b.x, false), firstLeadingBit(var_0.b.x))), vec3<u32>(~(~_wgslsmith_dot_vec3_u32(var_1.c.xxz, vec3<u32>(0u, var_6.x, 1u))), 4294967295u, reverseBits(var_4.c.x)));
}

