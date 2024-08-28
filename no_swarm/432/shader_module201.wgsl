struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<f32>(-947f, 496f, -991f, -282f), 26757u, vec4<u32>(0u, 4294967295u, 27855u, 0u)), Struct_1(vec4<f32>(360f, -2067f, -1505f, 470f), 40182u, vec4<u32>(4294967295u, 29134u, 7093u, 10572u)), Struct_1(vec4<f32>(-1159f, 1532f, -1629f, 1097f), 56242u, vec4<u32>(0u, 46090u, 26707u, 0u)), Struct_1(vec4<f32>(913f, -159f, 969f, 2139f), 1u, vec4<u32>(1u, 0u, 8586u, 1u)), Struct_1(vec4<f32>(-921f, -376f, 195f, 591f), 4294967295u, vec4<u32>(0u, 73164u, 76858u, 0u)));

var<private> global1: array<f32, 20> = array<f32, 20>(220f, 786f, 751f, 871f, 720f, 229f, -347f, 334f, -578f, -328f, -929f, -321f, -870f, 847f, -1423f, -1319f, -1562f, -142f, 267f, 1315f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<i32> {
    global0 = array<Struct_1, 5>();
    return abs(vec4<i32>(~(i32(-1i) * -1i), u_input.a.x, -u_input.a.x, _wgslsmith_mult_i32(-u_input.a.x, -40247i))) | _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), abs(vec2<i32>(u_input.a.x, 12604i))), _wgslsmith_dot_vec2_i32(u_input.a.zy, countOneBits(u_input.a.ww)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.xz, u_input.a.xy), ~u_input.a.xz), _wgslsmith_clamp_i32(1i, u_input.a.x, 0i) | (2147483647i | u_input.b.x)), u_input.b);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = arg_2;
    global1 = array<f32, 20>();
    global1 = array<f32, 20>();
    global1 = array<f32, 20>();
    let var_1 = !any(vec3<bool>(true, true, true));
    return func_3(arg_0, select(select(!vec4<bool>(false, var_1, var_1, false), select(vec4<bool>(var_1, true, true, true), vec4<bool>(var_1, true, var_1, var_1), true), !vec4<bool>(true, var_1, false, true)), vec4<bool>(var_1, var_1, false, all(vec2<bool>(var_1, var_1))), !(!vec4<bool>(var_1, var_1, var_1, true))), var_0) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(abs(~u_input.a), firstLeadingBit(u_input.b) << (var_0.c % vec4<u32>(32u))), u_input.a.x, _wgslsmith_sub_i32(~(-u_input.a.x), ~13800i), -(_wgslsmith_sub_i32(u_input.a.x, 56088i) & ~u_input.b.x));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    var var_0 = -1152f;
    var_0 = _wgslsmith_f_op_f32(step(-587f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(77972u, 20u)] + global1[_wgslsmith_index_u32(u_input.c, 20u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 20u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 20u)]) + _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(1u, 20u)])))))));
    var var_1 = _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10215u, u_input.d.x, u_input.c), 5u)], -1531f, Struct_1(vec4<f32>(694f, 358f, global1[_wgslsmith_index_u32(u_input.d.x, 20u)], -234f), u_input.d.x, vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.c)), ~vec3<u32>(108496u, u_input.c, 1u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.b.x, 26313i), vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x))), reverseBits(vec4<i32>(u_input.a.x, select(-2147483647i, -35059i, false) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2978i, -2147483647i, u_input.b.x, u_input.a.x), vec4<i32>(-28396i, 0i, u_input.b.x, u_input.a.x)), -2147483647i, -21403i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -695f, -268f, global1[_wgslsmith_index_u32(u_input.d.x, 20u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1529f, 184f, -1087f, 947f))) + vec4<f32>(global1[_wgslsmith_index_u32(27127u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], -1260f, -1591f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(~26462u, 20u)], _wgslsmith_f_op_f32(sign(1000f)), -672f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(64954u, 20u)])) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 20u)], 1490f, global1[_wgslsmith_index_u32(3959u, 20u)], global1[_wgslsmith_index_u32(u_input.d.x, 20u)])), vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 20u)], global1[_wgslsmith_index_u32(u_input.c, 20u)], global1[_wgslsmith_index_u32(u_input.d.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), !vec4<bool>(false, arg_0, true, arg_1.x))))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.d.x, 5u)];
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1472f, _wgslsmith_f_op_f32(max(-248f, global1[_wgslsmith_index_u32(4294967295u, 20u)])), 2014f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 20u)] + -1294f))))), 4294967295u, vec4<u32>(func_1(any(vec3<bool>(true, true, true)), vec2<bool>(true, true)), ~1u, abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.d.x), 30055u)), 4294967295u));
    global0 = array<Struct_1, 5>();
    var var_1 = Struct_1(vec4<f32>(-183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 20u)] * 375f))) - _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~61274u, 20u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))), global1[_wgslsmith_index_u32(46750u, 20u)]), u_input.d.x, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, u_input.c), abs(var_0.b), 28553u, 1u), _wgslsmith_add_vec4_u32(abs(var_0.c), vec4<u32>(0u, 1u, var_0.c.x, u_input.d.x))), _wgslsmith_add_u32(5366u, u_input.c), _wgslsmith_add_u32(u_input.c, u_input.c), countOneBits(1u)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 5u)];
    var_0 = global0[_wgslsmith_index_u32(1u, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a.x, 12307i) | vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x)), func_2(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], _wgslsmith_f_op_f32(min(-146f, -293f)), global0[_wgslsmith_index_u32(~8572u, 5u)], vec3<u32>(u_input.c, var_2.b, var_2.c.x)).zxw), _wgslsmith_f_op_vec2_f32(-var_1.a.xy), 9041i);
}

