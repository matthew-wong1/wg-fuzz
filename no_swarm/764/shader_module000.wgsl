struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, false, false, false, true, false, false);

var<private> global1: array<vec4<bool>, 20>;

var<private> global2: array<vec4<u32>, 20>;

var<private> global3: f32 = 1450f;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    let var_0 = vec4<bool>(true, !(abs(1u) < _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 46854u, 34503u), global2[_wgslsmith_index_u32(1u, 20u)]), firstLeadingBit(23296u))), u_input.a == 0u, !(!all(!arg_0)));
    global0 = array<bool, 8>();
    let var_1 = Struct_1(966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -549f)), 267f))), true, _wgslsmith_f_op_f32(trunc(-816f)));
    global1 = array<vec4<bool>, 20>();
    var var_2 = Struct_2(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, ~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), vec3<u32>(45831u, ~1u, 0u))), min(firstLeadingBit(_wgslsmith_add_u32(firstTrailingBit(u_input.a), u_input.a)), 14683u));
    return vec3<u32>(~abs(u_input.a), select(~6070u, 48672u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, _wgslsmith_div_u32(var_2.a.x, ~var_2.a.x)), 8u)]), abs(~1u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = array<vec4<bool>, 20>();
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b & 2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, -27638i, u_input.b), vec3<i32>(-21455i, 0i, u_input.b) | vec3<i32>(-2147483647i, u_input.b, 1i)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -40291i, -36030i), vec3<i32>(u_input.b, -1i, u_input.b)), vec3<i32>(u_input.b, 10306i, -24927i), !arg_1.c)), _wgslsmith_clamp_i32(-38673i, ~(-10972i), ~_wgslsmith_mult_i32(u_input.b, u_input.b))) << (_wgslsmith_mult_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 13498u), vec3<u32>(38u, 1u, 50623u))) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(27792u, u_input.a, 28273u), ~vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(66424u, 1u, 0u)), _wgslsmith_sub_vec3_u32(~func_3(vec3<bool>(arg_0.c, arg_0.c, true)), max(~vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(65178u, 1u, 52977u) & vec3<u32>(u_input.a, u_input.a, 0u)))) % vec3<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(414f))), _wgslsmith_f_op_f32(243f * arg_1.b), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1455f + arg_0.d) + _wgslsmith_div_f32(1566f, arg_1.d))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_f_op_f32(arg_0.a - -213f))) - _wgslsmith_f_op_f32(f32(-1f) * -257f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(1654f + 1000f)))));
    var var_2 = _wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.zx, abs(var_0.xx)), var_0.x, u_input.b, select(var_0.x << (4294967295u % 32u), abs(u_input.b), select(var_1.c, true, arg_0.c))), ~(~countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-35142i, 25636i, 13881i, -1i), vec4<i32>(-2147483647i, -13824i, u_input.b, -28882i)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(1058f + arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(floor(arg_0.d))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-803f, var_1.d)), var_1.d)) + arg_1.b), !(!(!arg_1.c) || true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d)))));
    return abs(u_input.a);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = all(vec4<bool>(true, all(!vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2, 8u)], arg_0)), arg_0, true));
    var var_1 = ~vec2<u32>(u_input.a, 71620u);
    var var_2 = countOneBits(_wgslsmith_mod_vec2_i32(abs(~countOneBits(vec2<i32>(u_input.b, 11644i))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, -11718i)), vec2<i32>(u_input.b, u_input.b))));
    let var_3 = Struct_2(~(~max(~vec3<u32>(119915u, 25699u, 1u), vec3<u32>(51106u, arg_2, 0u) << (vec3<u32>(var_1.x, u_input.a, 0u) % vec3<u32>(32u)))), var_1.x);
    var_1 = _wgslsmith_div_vec2_u32(min(~countOneBits(var_3.a.xz), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, var_1.x, 0u), var_3.a), arg_2 << (u_input.a % 32u)), u_input.a)), abs(vec2<u32>(1u, ~var_1.x)));
    return ~(-1i);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = func_4(true, 635f, func_2(arg_2, arg_2));
    global3 = arg_2.a;
    global0 = array<bool, 8>();
    let var_1 = ~15839i;
    let var_2 = arg_2;
    return select(select(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], false))), vec2<bool>(true | all(vec2<bool>(var_2.c, arg_2.c)), !arg_2.c), any(global1[_wgslsmith_index_u32(0u, 20u)])), vec2<bool>(true, true), vec2<bool>(-15725i >= max(-var_1, _wgslsmith_clamp_i32(24321i, 2147483647i, 1i)), arg_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 20>();
    global0 = array<bool, 8>();
    let var_0 = vec2<bool>(true, all(!func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, 14686i), vec3<i32>(1i, u_input.b, -25824i), vec3<i32>(57721i, u_input.b, u_input.b)), Struct_2(vec3<u32>(u_input.a, 0u, u_input.a), u_input.a), Struct_1(1620f, 153f, false, -952f))));
    global0 = array<bool, 8>();
    global3 = _wgslsmith_div_f32(-1997f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-252f - 456f))) * 1682f) * -521f));
    let var_1 = Struct_2(~vec3<u32>(12597u, 0u, 4294967295u | (5250u & u_input.a)), u_input.a);
    var var_2 = u_input.b;
    var var_3 = var_1;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-1530f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1381f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1293f) * -829f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-269f * 1654f), _wgslsmith_f_op_f32(-140f * 718f), u_input.a > 1u)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1751f))), _wgslsmith_f_op_f32(sign(-251f)))), true & (false || any(var_0)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(864f - _wgslsmith_f_op_f32(f32(-1f) * -1692f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(_wgslsmith_mod_i32(u_input.b, -10240i), min(u_input.b, -1i)), -u_input.b, u_input.b), u_input.b, ~13546u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.d, -915f, -651f), vec3<f32>(var_4.b, var_4.a, var_4.a), false)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, var_4.d, 1000f)))), vec3<f32>(var_4.a, var_4.a, _wgslsmith_f_op_f32(f32(-1f) * -675f)), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_4.d)))));
}

