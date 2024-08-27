struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 15670u, 4294967295u);

var<private> global1: vec2<i32>;

var<private> global2: vec2<i32> = vec2<i32>(-28274i, 578i);

var<private> global3: array<f32, 8> = array<f32, 8>(-336f, -1000f, 657f, -538f, -1676f, -315f, -1668f, 1000f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(arg_2.x, 8u)], 267f, -1000f, global3[_wgslsmith_index_u32(0u, 8u)]), vec4<f32>(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(u_input.a, 8u)], global3[_wgslsmith_index_u32(u_input.a, 8u)]))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3[_wgslsmith_index_u32(arg_2.x, 8u)], -1076f, global3[_wgslsmith_index_u32(42682u, 8u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(arg_2.x, 8u)], global3[_wgslsmith_index_u32(u_input.b, 8u)], global3[_wgslsmith_index_u32(12533u, 8u)]) - vec4<f32>(global3[_wgslsmith_index_u32(1u, 8u)], -1031f, global3[_wgslsmith_index_u32(66896u, 8u)], global3[_wgslsmith_index_u32(arg_2.x, 8u)]))), vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.x, 8u)] + 181f), -714f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 8u)] * -806f), -895f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(577f, global3[_wgslsmith_index_u32(arg_2.x, 8u)], global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(15255u, 8u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 8u)], global3[_wgslsmith_index_u32(global0.x, 8u)], global3[_wgslsmith_index_u32(global0.x, 8u)], global3[_wgslsmith_index_u32(global0.x, 8u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(30054u, 8u)], -1304f)))), select(vec4<bool>(true, true, true, arg_0), !vec4<bool>(true, arg_0, true, false), !vec4<bool>(true, false, true, arg_0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-328f, global3[_wgslsmith_index_u32(u_input.b, 8u)], global3[_wgslsmith_index_u32(global0.x, 8u)], global3[_wgslsmith_index_u32(global0.x, 8u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 8u)], 1387f, -754f, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 8u)], -727f, -1485f, 584f) - vec4<f32>(global3[_wgslsmith_index_u32(76565u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], 1019f, 209f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(arg_2.x, 8u)], 522f, global3[_wgslsmith_index_u32(u_input.b, 8u)]))), select(select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<bool>(true, false, true, arg_0), false))), select(select(select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(false, arg_0, arg_0, arg_0)), !vec4<bool>(true, true, true, arg_0), vec4<bool>(false, false, arg_0, arg_0)), !(!vec4<bool>(arg_0, false, true, false)), !vec4<bool>(false, arg_0, false, arg_0)))));
    let var_1 = Struct_4(-select(vec2<i32>(countOneBits(global1.x), _wgslsmith_mult_i32(1i, global1.x)), countOneBits(~arg_1), any(vec2<bool>(false, arg_0)) || true));
    let var_2 = var_1;
    global0 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(arg_2.x, u_input.b, u_input.b)), vec3<u32>(51484u, firstTrailingBit(20699u), 1u), firstLeadingBit(select(vec3<u32>(arg_2.x, u_input.b, 1u), vec3<u32>(arg_2.x, 0u, 88899u), vec3<bool>(true, arg_0, false)))), vec3<u32>(1u, _wgslsmith_add_u32(~4294967295u, abs(4038u)), 36090u)) ^ (~(~(~vec3<u32>(21134u, 4294967295u, global0.x))) << ((~(vec3<u32>(0u, 18955u, global0.x) << (vec3<u32>(33844u, 1u, 48157u) % vec3<u32>(32u))) & vec3<u32>(global0.x, global0.x, 1u)) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(997f, var_0.x, var_0.x, -404f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-521f, 713f, 1000f, 368f) + vec4<f32>(641f, global3[_wgslsmith_index_u32(19795u, 8u)], var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3[_wgslsmith_index_u32(81658u, 8u)], var_0.x, 562f, -529f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(arg_2.x, 8u)], var_0.x) + vec4<f32>(var_0.x, 423f, -2119f, global3[_wgslsmith_index_u32(4294967295u, 8u)])))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + 784f), _wgslsmith_f_op_f32(-274f * 808f), global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 8u)], _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, var_0.x, 470f)))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + var_0.x)), 603f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1969f, _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 8u)] + 1179f), all(vec4<bool>(arg_0, arg_0, false, arg_0)))))));
    return !(!vec4<bool>(global0.x < 4182u, arg_0, true, arg_0));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = all(select(!func_3(true, abs(vec2<i32>(global1.x, -2147483647i)), vec2<u32>(4294967295u, global0.x)), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false)), true));
    let var_1 = Struct_3(func_3(var_0, abs(firstTrailingBit(vec2<i32>(1i, 1i))), (vec2<u32>(1u, 51267u) & global0.zx) << ((global0.zx >> (_wgslsmith_div_vec2_u32(global0.xy, vec2<u32>(u_input.a, 35309u)) % vec2<u32>(32u))) % vec2<u32>(32u))).zzz, -(~_wgslsmith_div_i32(global2.x, -69752i)) >> (~_wgslsmith_dot_vec2_u32(~global0.zy, vec2<u32>(global0.x, 4294967295u)) % 32u), true, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 8u)] * _wgslsmith_f_op_f32(1000f - arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1222f)), -1521f), _wgslsmith_div_u32(67525u, 25473u));
    global3 = array<f32, 8>();
    let var_2 = false;
    global3 = array<f32, 8>();
    return !((u_input.b << (~(~global0.x) % 32u)) > u_input.a);
}

fn func_1() -> i32 {
    var var_0 = !vec3<bool>(func_2(vec2<f32>(-1589f, global3[_wgslsmith_index_u32(1u, 8u)])) || func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 8u)], global3[_wgslsmith_index_u32(36702u, 8u)]))), true, global1.x > 35179i);
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global0.x, u_input.a), u_input.b, u_input.b, global0.x), min(min(~vec4<u32>(88740u, 5921u, u_input.b, 0u), vec4<u32>(1u, global0.x, global0.x, u_input.a) ^ vec4<u32>(20315u, 4294967295u, global0.x, u_input.a)), reverseBits(vec4<u32>(91179u, global0.x, 91579u, u_input.b)) | vec4<u32>(u_input.b, 8781u, global0.x, u_input.a)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, global0.x, 74676u, u_input.a), vec4<u32>(u_input.b, 25740u, global0.x, 38099u)), min(vec4<u32>(u_input.b, 58745u, 1u, u_input.a) ^ vec4<u32>(62431u, global0.x, u_input.b, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, global0.x, 11362u, 9615u), vec4<u32>(56014u, 4294967295u, 1u, global0.x)))) % vec4<u32>(32u)));
    global3 = array<f32, 8>();
    global1 = ~min(~min(countOneBits(vec2<i32>(-16920i, -10869i)), -vec2<i32>(global1.x, global2.x)), vec2<i32>(firstTrailingBit(global1.x & global2.x), 1i >> (u_input.b % 32u)));
    var_0 = vec3<bool>(var_0.x, true, false);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(-(vec2<i32>(-2147483647i, global1.x) >> (vec2<u32>(0u, global0.x) % vec2<u32>(32u))), -vec2<i32>(1i, 2147483647i)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, 1866i), vec2<i32>(global2.x, global2.x))), vec2<i32>(global2.x, func_1()), _wgslsmith_div_vec2_i32(vec2<i32>(global1.x, 36500i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.x, -4455i), vec2<i32>(30860i, global1.x), vec2<i32>(35402i, -29173i))))), vec2<i32>(11102i, _wgslsmith_div_i32(_wgslsmith_mod_i32(firstLeadingBit(global1.x), -2883i & global1.x), 1i)));
    let var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(~firstLeadingBit(global0.x), _wgslsmith_clamp_u32(~56503u, _wgslsmith_clamp_u32(9683u, global0.x, u_input.b), select(25845u, 0u, false))), vec2<u32>(u_input.a, u_input.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-628f, global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(u_input.a, 8u)]))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(global0.x, 8u)], global3[_wgslsmith_index_u32(43990u, 8u)], -1295f), vec3<f32>(global3[_wgslsmith_index_u32(var_0.x, 8u)], global3[_wgslsmith_index_u32(global0.x, 8u)], 2067f))))))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(~(~global0.x), 8u)], _wgslsmith_f_op_f32(-1131f - _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 8u)], 899f)), -638f), vec3<f32>(-192f, 1443f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 8u)])))));
    let var_2 = Struct_4((abs(~vec2<i32>(global1.x, 2147483647i)) >> (vec2<u32>(_wgslsmith_mult_u32(u_input.b, 7326u), global0.x) % vec2<u32>(32u))) << ((vec2<u32>(~u_input.b, global0.x >> (16887u % 32u)) ^ (vec2<u32>(global0.x, 3176u) ^ vec2<u32>(global0.x, 93175u))) % vec2<u32>(32u)));
    global3 = array<f32, 8>();
    let var_3 = -abs(vec3<i32>(-2570i, global2.x, firstLeadingBit(var_2.a.x)) >> (vec3<u32>(~74682u, _wgslsmith_mod_u32(11055u, var_0.x), 12353u) % vec3<u32>(32u)));
    let var_4 = Struct_2(!select(select(vec3<bool>(true, false, true), func_3(true, var_2.a, global0.yy).wxx, false), vec3<bool>(all(vec2<bool>(false, false)), all(vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true)), Struct_1(!select(func_3(true, vec2<i32>(-22067i, var_3.x), var_0), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(all(vec3<bool>(true, true, true)) && true, ~global0.x == 10444u, true, true), var_3.zy | var_2.a), Struct_1(func_3(true, vec2<i32>(_wgslsmith_sub_i32(global2.x, var_2.a.x), -90048i), var_0), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, true)), vec4<bool>(global0.x <= var_0.x, true, true, all(vec2<bool>(true, true))), vec4<bool>(func_2(var_1.zy), global0.x > 4294967295u, func_3(true, vec2<i32>(global1.x, global2.x), vec2<u32>(1u, u_input.a)).x, false)), var_3.yx), _wgslsmith_f_op_vec2_f32(floor(var_1.xx)), Struct_1(vec4<bool>((var_1.x < global3[_wgslsmith_index_u32(global0.x, 8u)]) || true, true, true, func_3(all(vec3<bool>(true, true, false)), var_3.zx, firstTrailingBit(var_0)).x), vec4<bool>(true, (var_2.a.x << (17254u % 32u)) < -1i, true, all(vec2<bool>(false, false)) != (-2147483647i != var_2.a.x)), _wgslsmith_mult_vec2_i32(~(~var_2.a), _wgslsmith_div_vec2_i32(vec2<i32>(var_3.x, -6199i), var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 207f, -380f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, global3[_wgslsmith_index_u32(0u, 8u)], -1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2112f, var_1.x, var_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(495f, 1997f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_4.d.x, -2605f)), 422f))), reverseBits(_wgslsmith_mult_vec4_u32(select(vec4<u32>(54789u, 0u, 142755u, var_0.x), countOneBits(vec4<u32>(1u, var_0.x, 26310u, u_input.a)), true), countOneBits(vec4<u32>(global0.x, 1u, u_input.b, var_0.x) >> (vec4<u32>(global0.x, 0u, 67086u, 1815u) % vec4<u32>(32u))))));
}

