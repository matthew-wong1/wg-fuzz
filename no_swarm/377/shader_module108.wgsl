struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 32> = array<u32, 32>(1u, 1u, 4294967295u, 11319u, 1u, 4610u, 20031u, 4287u, 1u, 5952u, 4294967295u, 67349u, 8713u, 0u, 11139u, 4294967295u, 1u, 4294967295u, 58606u, 1u, 15266u, 6163u, 4294967295u, 0u, 47635u, 12329u, 3918u, 14298u, 19911u, 89877u, 4294967295u, 4190u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> u32 {
    global0 = vec4<i32>(2147483647i, _wgslsmith_div_i32(u_input.b, abs(_wgslsmith_dot_vec3_i32(global0.xzz | vec3<i32>(global0.x, u_input.b, 7834i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, -44202i), global0.xwy)))), u_input.a & u_input.b, -u_input.b);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f), -1134f));
    return ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3722u, 32u)], 32u)], 32u)];
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = arg_3;
    global1 = array<u32, 32>();
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -7612i, _wgslsmith_mult_i32(global0.x, ~abs(24436i)), -1i), ~vec4<i32>(_wgslsmith_sub_i32(arg_2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, u_input.b), vec2<i32>(1i, 1i))), arg_2.a.x, reverseBits(u_input.b), 1i));
    var var_1 = countOneBits(vec2<i32>(_wgslsmith_add_i32(reverseBits(u_input.a) | 1i, ~(-17308i)), max(arg_3.a.x, u_input.b)));
    var var_2 = ~firstLeadingBit(8560u) ^ ~(~((19336u >> (arg_3.c.b.a % 32u)) ^ ~var_0.c.d.x));
    return ~abs(~vec4<u32>(arg_3.c.b.a, _wgslsmith_mod_u32(arg_3.c.e.a, 1u), _wgslsmith_div_u32(38553u, var_0.c.e.a), 45375u));
}

fn func_2() -> Struct_1 {
    global0 = vec4<i32>(1i, global0.x, -58442i, -(~(-1i)));
    let var_0 = !(!(!(!(u_input.a <= 2147483647i))));
    let var_1 = Struct_3(vec3<i32>(-global0.x, global0.x, select(u_input.b, max(global0.x, 0i), true)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-589f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f))))), Struct_2(_wgslsmith_f_op_f32(trunc(282f)), Struct_1(global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33793u, 32u)], 32u)], 32u)], 32u)], 32u)] >> (global1[_wgslsmith_index_u32(121474u, 32u)] % 32u)), 32u)]), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1731f + -847f), _wgslsmith_f_op_f32(-1580f * 626f))), _wgslsmith_f_op_f32(f32(-1f) * -2398f), -2255f), func_3(1f, _wgslsmith_f_op_f32(floor(1119f)), Struct_4(reverseBits(vec4<i32>(u_input.b, global0.x, u_input.a, -2147483647i)), -1107f), Struct_3(vec3<i32>(0i, -30481i, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -2130f), Struct_2(110f, Struct_1(86025u), vec3<f32>(-525f, 1706f, -1000f), vec4<u32>(2330u, global1[_wgslsmith_index_u32(84663u, 32u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)]), Struct_1(30123u)))), Struct_1(28240u)));
    let var_2 = !(!(!vec2<bool>(-27380i <= var_1.a.x, var_0)));
    let var_3 = vec4<bool>(any(vec3<bool>(true, true, true)) || true, select(true, var_2.x, all(!var_2)), false, var_0);
    return var_1.c.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global0 = countOneBits(vec4<i32>(global0.x ^ -10695i, 2147483647i, ~countOneBits(0i), 17400i));
    global1 = array<u32, 32>();
    let var_0 = arg_1 >= 4322u;
    let var_1 = arg_2.b.a;
    global1 = array<u32, 32>();
    return arg_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(-42936i, global0.x, u_input.b | u_input.b, -1i), ~vec4<i32>(global0.x, global0.x, 1i, countOneBits(_wgslsmith_mult_i32(-20675i, 1i))));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(926f)), Struct_1(max(~1u, global1[_wgslsmith_index_u32(99007u, 32u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-625f, -309f, -1652f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-370f, -954f, 818f), _wgslsmith_f_op_vec3_f32(vec3<f32>(474f, 103f, 1586f) - vec3<f32>(-413f, -449f, -1440f))))), reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(func_1(), 32u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(44184u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25368u, 32u)], 32u)], 32u)], 4294967295u, 35708u), select(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], 1u, global1[_wgslsmith_index_u32(17201u, 32u)], global1[_wgslsmith_index_u32(36140u, 32u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 32u)], 19505u, global1[_wgslsmith_index_u32(45446u, 32u)]), vec4<bool>(false, true, true, true))), 32u)], 4862u, _wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(1u >> (global1[_wgslsmith_index_u32(1u, 32u)] % 32u), 32u)]))), func_4(~(~(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46405u, 32u)], 32u)], 32u)], 32u)], 32u)], 99839u) >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 1u, global1[_wgslsmith_index_u32(115965u, 32u)]) % vec3<u32>(32u)))), 1u >> (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55639u, 32u)], 32u)], 32u)]), 32u)], ~global1[_wgslsmith_index_u32(4294967295u, 32u)]) % 32u), Struct_2(144f, Struct_1(abs(global1[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-201f, 496f, 129f))), abs(vec4<u32>(19015u, global1[_wgslsmith_index_u32(1u, 32u)], 1u, 73923u)), func_2())));
    let var_1 = 922f;
    global1 = array<u32, 32>();
    global0 = vec4<i32>(-1i, -_wgslsmith_sub_i32(2147483647i, u_input.b), 2147483647i, -global0.x);
    let var_2 = min(global0.x, countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 12288i, u_input.b, global0.x), vec4<i32>(u_input.b, -1i, u_input.a, -1i)), ~u_input.b) >> (_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(64755u, 32u)], 32u)]) % 32u)));
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, u_input.b >> (var_0.e.a % 32u), max(~_wgslsmith_div_vec4_u32(vec4<u32>(9567u, 22338u, global1[_wgslsmith_index_u32(4294967295u, 32u)], var_0.b.a), var_0.d) & ~vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(var_0.d.x, 32u)], 42030u), var_0.d));
}

