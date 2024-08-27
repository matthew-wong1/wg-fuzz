struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<vec3<u32>, 7>;

var<private> global2: Struct_3;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(-238f), 41656i, 24198u, Struct_1(1646f)), Struct_2(Struct_1(1002f), i32(-2147483648), 1u, Struct_1(-1019f)), Struct_2(Struct_1(-107f), 0i, 99032u, Struct_1(-276f)), Struct_2(Struct_1(-508f), i32(-2147483648), 74152u, Struct_1(-1298f)), Struct_2(Struct_1(-606f), -1i, 4294967295u, Struct_1(1114f)), Struct_2(Struct_1(1000f), -16204i, 4294967295u, Struct_1(-679f)), Struct_2(Struct_1(-519f), -1582i, 4294967295u, Struct_1(-1020f)), Struct_2(Struct_1(537f), -1i, 4294967295u, Struct_1(-896f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(sign(324f));
    global1 = array<vec3<u32>, 7>();
    let var_1 = 614f;
    let var_2 = global2.b.d.a;
    var var_3 = _wgslsmith_div_vec3_i32(-max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), ~vec3<i32>(-2147483647i, u_input.d, 2147483647i)), vec3<i32>(u_input.a, ~u_input.a, u_input.a)), -(abs(vec3<i32>(2147483647i, 33959i, 0i)) ^ vec3<i32>(-global2.b.b, -53066i, _wgslsmith_sub_i32(21884i, global2.b.b))));
    return ~44878u;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f + 290f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b.d.a * global2.b.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f)), _wgslsmith_f_op_f32(trunc(364f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-658f, -127f, global2.b.a.a, global2.b.d.a), vec4<f32>(global2.b.d.a, global2.b.a.a, global2.b.d.a, 930f), false))))));
    let var_1 = vec4<u32>((u_input.c.x ^ ~35407u) | _wgslsmith_clamp_u32(abs(15185u), max(global2.b.c, 2803u), global2.c), ~(~global2.c), global2.a, ~func_3(!any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(var_0.a.yz - _wgslsmith_div_vec2_f32(var_0.a.wy, vec2<f32>(global2.b.d.a, var_0.a.x)))));
    global1 = array<vec3<u32>, 7>();
    global2 = Struct_3(_wgslsmith_mult_u32(global2.b.c, abs(1u)), Struct_2(global2.b.a, -2147483647i, ~4294967295u, global2.b.d), 35593u);
    let var_2 = ~var_1.wx;
    return max(max(~var_2.x, countOneBits(~(~4294967295u))), u_input.e);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    let var_0 = ~_wgslsmith_sub_u32(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.b, global2.b.b, -1i), vec3<i32>(-38838i, u_input.a, u_input.a)) & _wgslsmith_dot_vec2_i32(vec2<i32>(31735i, global2.b.b), vec2<i32>(0i, global2.b.b))), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u));
    global3 = array<Struct_2, 8>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 * -594f), _wgslsmith_div_f32(-465f, _wgslsmith_f_op_f32(-global2.b.a.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, arg_0.a))))));
    var var_2 = arg_0;
    var_2 = global2.b.a;
    return vec4<i32>(max(0i, select(global2.b.b, 0i, any(vec3<bool>(global0[_wgslsmith_index_u32(global2.a, 23u)], false, false)))), max(0i, 11142i), _wgslsmith_mult_i32(countOneBits(2147483647i), -31335i), -_wgslsmith_sub_i32(-u_input.a, _wgslsmith_sub_i32(31772i, u_input.d))) << (reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0, 1u, global2.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, global2.c, var_0), global1[_wgslsmith_index_u32(var_0, 7u)]), 54963u, u_input.e), min(vec4<u32>(u_input.b, u_input.e, global2.a, global2.c), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 76036u, 1u, 0u), vec4<u32>(4294967295u, global2.a, 0u, u_input.e))))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_3(~abs(arg_2.c | ~arg_3.b.c), Struct_2(global2.b.d, 2147483647i, reverseBits(~(~arg_3.c)), Struct_1(1067f)), 1u);
    let var_1 = func_1(arg_2.d, arg_3.b.d.a).x;
    global2 = Struct_3(1164u, var_0.b, ~_wgslsmith_mult_u32(firstLeadingBit(0u), u_input.b));
    global2 = Struct_3(~(~global2.a), global2.b, firstTrailingBit(firstLeadingBit(4294967295u)));
    global0 = array<bool, 23>();
    return Struct_3(~countOneBits(u_input.e), Struct_2(Struct_1(arg_3.b.d.a), -_wgslsmith_add_i32(-29754i & arg_3.b.b, -global2.b.b), ~_wgslsmith_dot_vec3_u32(~u_input.c, ~vec3<u32>(arg_2.c, 14843u, 7381u)), arg_3.b.a), _wgslsmith_mult_u32(arg_3.a, ~_wgslsmith_clamp_u32(0u, 47254u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 7>();
    var var_0 = Struct_3(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_mult_u32(global2.a, _wgslsmith_add_u32(global2.c, global2.a))), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(global2.b.d.a, -527f))), 2147483647i, _wgslsmith_mod_u32(93261u, 1u), global2.b.a), ~29940u);
    global1 = array<vec3<u32>, 7>();
    global2 = func_4(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-42784i, global2.b.b, global2.b.b, var_0.b.b), vec4<i32>(var_0.b.b, var_0.b.b, -8882i, global2.b.b)), ~vec4<i32>(global2.b.b, global2.b.b, 27789i, -23352i)), func_1(global2.b.d, _wgslsmith_f_op_f32(374f + 831f))) | vec4<i32>(u_input.a, u_input.a, global2.b.b, _wgslsmith_sub_i32(-2147483647i, -1i)), global0[_wgslsmith_index_u32(var_0.a, 23u)], global3[_wgslsmith_index_u32(countOneBits(var_0.a), 8u)], Struct_3(46825u, global2.b, ~firstTrailingBit(~global2.b.c)));
    global3 = array<Struct_2, 8>();
    var_0 = func_4(vec4<i32>(u_input.d, 0i, abs(1i), _wgslsmith_sub_i32(global2.b.b, global2.b.b)), true, func_4(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.b, u_input.d, -2147483647i, global2.b.b), vec4<i32>(-21439i, u_input.a, -10393i, global2.b.b) ^ vec4<i32>(11710i, global2.b.b, -2147483647i, 5475i)), global2.b.b < ~firstLeadingBit(u_input.a), func_4(vec4<i32>(-1i) * -vec4<i32>(-13185i, 1i, -36255i, global2.b.b), all(select(vec2<bool>(global0[_wgslsmith_index_u32(global2.a, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 23u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(37959u, 23u)]))), Struct_2(func_4(vec4<i32>(u_input.a, -1i, 3050i, u_input.a), true, Struct_2(var_0.b.d, var_0.b.b, 23569u, var_0.b.d), Struct_3(u_input.c.x, Struct_2(Struct_1(var_0.b.a.a), -2147483647i, u_input.e, Struct_1(-1260f)), 20912u)).b.d, firstTrailingBit(22212i), 1u | global2.a, Struct_1(-973f)), func_4(-vec4<i32>(u_input.a, global2.b.b, -25848i, var_0.b.b), any(vec3<bool>(true, false, false)), func_4(vec4<i32>(-12464i, -1779i, 3144i, var_0.b.b), false, global3[_wgslsmith_index_u32(21230u, 8u)], Struct_3(41065u, Struct_2(var_0.b.a, -47167i, var_0.b.c, Struct_1(-1041f)), 10002u)).b, Struct_3(4294967295u, Struct_2(Struct_1(2221f), -1i, 19901u, Struct_1(-341f)), 1u))).b, Struct_3(1u & (0u & var_0.c), func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.b, var_0.b.b, 1i, -1i), vec4<i32>(var_0.b.b, global2.b.b, u_input.a, u_input.a)), select(false, global0[_wgslsmith_index_u32(103211u, 23u)], global0[_wgslsmith_index_u32(23847u, 23u)]), Struct_2(global2.b.d, 28844i, global2.b.c, global2.b.d), func_4(vec4<i32>(u_input.a, 1i, u_input.a, 14751i), global0[_wgslsmith_index_u32(16993u, 23u)], Struct_2(Struct_1(var_0.b.d.a), var_0.b.b, 4294967295u, var_0.b.a), Struct_3(71473u, global3[_wgslsmith_index_u32(44381u, 8u)], 1188u))).b, ~(~global2.c))).b, func_4(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-39449i, var_0.b.b, var_0.b.b, 11996i), firstTrailingBit(vec4<i32>(u_input.a, -54889i, 46282i, -1i)))), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global2.b.c, min(u_input.e, 76315u)), 23u)], Struct_2(global2.b.a, var_0.b.b, _wgslsmith_div_u32(abs(0u), 35518u), global2.b.d), func_4(~(-vec4<i32>(-1i, -7598i, 2147483647i, global2.b.b)), all(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.b.c, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.b.c, 23u)], global0[_wgslsmith_index_u32(6491u, 23u)]))), global2.b, func_4(select(vec4<i32>(var_0.b.b, 2147483647i, 22835i, var_0.b.b), vec4<i32>(u_input.a, var_0.b.b, var_0.b.b, 26674i), false), u_input.e <= global2.c, func_4(vec4<i32>(60623i, 2147483647i, u_input.a, var_0.b.b), global0[_wgslsmith_index_u32(22282u, 23u)], Struct_2(Struct_1(global2.b.a.a), 33423i, 70203u, global2.b.d), Struct_3(u_input.c.x, global3[_wgslsmith_index_u32(global2.b.c, 8u)], var_0.a)).b, Struct_3(40823u, global3[_wgslsmith_index_u32(global2.c, 8u)], 15764u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-75060i, vec4<u32>(abs(1u), firstTrailingBit(1508u), _wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(u_input.c.xz, u_input.c.yz), _wgslsmith_div_vec2_u32(vec2<u32>(global2.c, global2.a), vec2<u32>(1u, global2.b.c)), 34601u == u_input.b), ~u_input.c.zz), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(111608u, global2.c, u_input.e, u_input.e), vec4<u32>(9234u, u_input.b, global2.c, u_input.b), vec4<u32>(1u, global2.a, var_0.c, global2.b.c)), firstLeadingBit(vec4<u32>(u_input.e, 4294967295u, global2.c, global2.a)) | ~vec4<u32>(1u, u_input.c.x, 0u, global2.a))));
}

