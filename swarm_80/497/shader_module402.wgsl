struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -915f;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1872f, 529f, -2055f, 323f), vec4<f32>(-1011f, -131f, -162f, 2136f), vec4<f32>(1415f, 1245f, -613f, 753f), vec4<f32>(-1319f, -931f, 683f, -1000f), vec4<f32>(1684f, -1041f, 287f, -657f), vec4<f32>(1686f, 1000f, -1532f, -455f), vec4<f32>(-1247f, 314f, -437f, -144f), vec4<f32>(2070f, 320f, 285f, 1882f), vec4<f32>(231f, -433f, -1093f, 1561f), vec4<f32>(1000f, 275f, -1392f, -1941f), vec4<f32>(-207f, 132f, 121f, 1889f), vec4<f32>(-436f, -602f, 714f, -463f), vec4<f32>(-650f, -534f, -1061f, -505f), vec4<f32>(309f, 1000f, 1481f, -921f), vec4<f32>(424f, 604f, 166f, 296f), vec4<f32>(374f, -203f, 616f, -284f), vec4<f32>(-592f, -738f, -1107f, 310f), vec4<f32>(-430f, -613f, -1726f, 1108f), vec4<f32>(919f, 940f, 214f, 549f), vec4<f32>(595f, -1165f, 213f, 838f), vec4<f32>(362f, -877f, -1380f, -532f), vec4<f32>(1562f, -1000f, 1814f, -1000f), vec4<f32>(598f, -531f, -943f, -685f), vec4<f32>(419f, -1197f, 468f, 281f), vec4<f32>(-550f, 1000f, 195f, -691f), vec4<f32>(-121f, 740f, -1676f, -1011f));

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, false));

var<private> global4: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    let var_0 = ~vec3<i32>(~_wgslsmith_mod_i32(0i, 15041i), _wgslsmith_clamp_i32(56124i, -2147483647i, 2147483647i) >> (u_input.a % 32u), ~1i) & abs(firstLeadingBit(min(~vec3<i32>(0i, 2147483647i, 0i), -vec3<i32>(22620i, 1i, -1i))));
    global2 = array<vec4<f32>, 26>();
    let var_1 = _wgslsmith_sub_vec2_i32(-var_0.yx, var_0.zx);
    var var_2 = Struct_5(u_input.a, ~u_input.a, true);
    var var_3 = Struct_1(global1.yx);
    return global3.a.x;
}

fn func_3() -> f32 {
    global0 = -1943f;
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-176f - 360f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(2204f, -362f)))) + _wgslsmith_f_op_f32(1f + -379f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-259f, _wgslsmith_f_op_f32(max(-518f, -481f)))), _wgslsmith_f_op_f32(abs(1000f)))));
    let var_1 = select(u_input.b, _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(82293u, u_input.a, u_input.b, 4761u), vec4<u32>(53405u, 33754u, u_input.b, 0u)), vec4<u32>(u_input.a, u_input.a, 1u, 17577u) | vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a))), vec4<u32>(u_input.b, u_input.a, ~firstTrailingBit(7186u), 4294967295u)), true);
    let var_2 = Struct_5(1u, 12409u, any(global3.a));
    var var_3 = u_input.b;
    return -847f;
}

fn func_1() -> i32 {
    global1 = !(!vec3<bool>(func_2(), true & (u_input.a > u_input.b), true));
    let var_0 = Struct_2(true, Struct_1(select(global1.yy, global4.xy, select(select(global4.yy, vec2<bool>(false, true), global3.a.x), global4.xz, vec2<bool>(true, true)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -451f), -110f, _wgslsmith_f_op_f32(func_3()), 1393f), 46192u);
    let var_1 = true;
    return -44441i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global3.a);
    var var_0 = true;
    var var_1 = vec2<i32>(reverseBits(-16803i), ~27394i);
    var var_2 = _wgslsmith_clamp_vec4_i32(abs(-abs(reverseBits(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)))), -_wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, -2147483647i, var_1.x, var_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, -17730i, var_1.x), vec4<i32>(1i, var_1.x, -2147483647i, -2147483647i))) | vec4<i32>(71699i >> (u_input.b % 32u), -_wgslsmith_clamp_i32(var_1.x, var_1.x, 1i), ~9697i | _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, var_1.x)), func_1()), vec4<i32>(-_wgslsmith_dot_vec2_i32(max(vec2<i32>(-56783i, 879i), vec2<i32>(var_1.x, -12947i)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, -46860i), vec2<i32>(-1i, var_1.x))), _wgslsmith_add_i32(var_1.x, 1i), 1i, -max(var_1.x, -2147483647i)));
    let var_3 = ~(-var_2.x & _wgslsmith_clamp_i32(-2147483647i, ~var_1.x, _wgslsmith_mod_i32(countOneBits(var_2.x), 28157i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(var_2.x, func_1(), var_2.x)), vec3<u32>(1u, _wgslsmith_mod_u32(~0u, u_input.a), _wgslsmith_clamp_u32(29070u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(98614u, u_input.b), vec2<u32>(11596u, 34522u)), ~vec2<u32>(u_input.a, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.a, 49935u)) >> (1u % 32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -361f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-558f, 608f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-275f)))), 1f) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1054f)), _wgslsmith_f_op_f32(257f * -2168f), global1.x)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_div_f32(301f, _wgslsmith_f_op_f32(f32(-1f) * -1276f)))));
}

