struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_3,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(0i, 2147483647i, i32(-2147483648), 50062i, 2147483647i, 42978i, i32(-2147483648), -5699i);

var<private> global1: array<Struct_3, 12>;

var<private> global2: bool;

var<private> global3: array<vec4<f32>, 20>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(!vec4<bool>(true, all(vec2<bool>(true, false)), true, true)), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(0u, u_input.d.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.wy, vec2<u32>(12783u, u_input.d.x)), max(vec2<u32>(14474u, u_input.b.x), u_input.b)))), 8u)], Struct_1(vec4<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), all(vec3<bool>(false, false, false)) || true, false)));
    global2 = var_0.a.a.x;
    let var_1 = var_0;
    let var_2 = Struct_3(4294967295u, var_0.c, -199f, vec4<bool>(!any(vec3<bool>(var_1.a.a.x, var_1.a.a.x, false)), !(_wgslsmith_f_op_f32(f32(-1f) * -1291f) >= _wgslsmith_f_op_f32(step(-631f, 550f))), true, var_0.c.a.x));
    let var_3 = _wgslsmith_mult_vec4_i32(-(~firstLeadingBit(-vec4<i32>(1i, -1i, global0[_wgslsmith_index_u32(0u, 8u)], 16433i))), _wgslsmith_add_vec4_i32((vec4<i32>(u_input.c.x, var_0.b, var_1.b, 2147483647i) << ((vec4<u32>(u_input.b.x, 4927u, 4294967295u, u_input.b.x) & vec4<u32>(4294967295u, 4294967295u, 0u, var_2.a)) % vec4<u32>(32u))) ^ firstLeadingBit(vec4<i32>(var_0.b, u_input.c.x, 5574i, -63217i) | vec4<i32>(global0[_wgslsmith_index_u32(40356u, 8u)], -14290i, 11008i, 887i)), select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2825i, 2147483647i, 4972i) >> (u_input.d % vec4<u32>(32u)), vec4<i32>(4797i, -24671i, 25595i, 1i)), ~firstLeadingBit(vec4<i32>(u_input.a, -49967i, 2147483647i, u_input.c.x)), !var_0.a.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(251f + 323f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c)))))) - _wgslsmith_f_op_f32(-var_2.c));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_3()) >= 604f;
    return global0[_wgslsmith_index_u32(u_input.d.x, 8u)];
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(select(!vec4<bool>(all(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, false, true, true)), true, arg_2 <= 4294967295u), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    var_0 = Struct_1(select(select(var_0.a, vec4<bool>(all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), false, true, true), all(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)) & all(var_0.a.zxw)), var_0.a, !var_0.a.x & (var_0.a.x || var_0.a.x)));
    let var_1 = var_0.a.x;
    var_0 = Struct_1(!vec4<bool>(true, true, true, var_0.a.x));
    let var_2 = Struct_3(select(41582u, 48922u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1021f - -1098f) - _wgslsmith_f_op_f32(f32(-1f) * -519f)) > _wgslsmith_f_op_f32(floor(-1669f))), Struct_1(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1588f))), var_0.a);
    return Struct_1(var_0.a);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(func_4(1i, 55216u, ~(~_wgslsmith_mod_u32(u_input.b.x, 35797u)), func_2() ^ 1i), _wgslsmith_dot_vec3_i32(-(-vec3<i32>(-2147483647i, -7296i, 56201i) ^ vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], -19775i)), firstLeadingBit(~vec3<i32>(-19486i, u_input.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]))), func_4(select(firstTrailingBit(global0[_wgslsmith_index_u32(arg_1.x, 8u)]), u_input.a, !func_4(-12872i, 26967u, arg_1.x, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]).a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, ~9345u, u_input.d.x, ~u_input.d.x), vec4<u32>(countOneBits(arg_1.x), arg_1.x, ~0u, u_input.d.x ^ arg_1.x)), u_input.d.x, _wgslsmith_div_i32(u_input.a, 1i)));
    global1 = array<Struct_3, 12>();
    global0 = array<i32, 8>();
    var var_1 = var_0.c.a.x;
    let var_2 = Struct_4(Struct_3(_wgslsmith_dot_vec4_u32(firstLeadingBit(~u_input.d), select(u_input.d, vec4<u32>(0u, arg_1.x, u_input.b.x, 1u), false)), Struct_1(select(vec4<bool>(false, arg_0, arg_0, arg_0), var_0.c.a, arg_0)), 548f, select(var_0.a.a, !(!vec4<bool>(var_0.a.a.x, false, var_0.c.a.x, var_0.c.a.x)), select(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, var_0.a.a.x, var_0.c.a.x), vec4<bool>(false, arg_0, false, var_0.a.a.x)), select(vec4<bool>(var_0.a.a.x, false, arg_0, true), var_0.a.a, var_0.c.a), select(vec4<bool>(false, arg_0, false, var_0.c.a.x), vec4<bool>(true, arg_0, var_0.c.a.x, arg_0), false)))), arg_1, Struct_3(~(~(~8437u)), var_0.c, _wgslsmith_f_op_f32(993f + 2175f), var_0.a.a), _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, 1i, -7799i), vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 8u)], 0i, var_0.b, -30314i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_0.b, -37182i, -34055i), vec4<i32>(-40144i, -1i, var_0.b, global0[_wgslsmith_index_u32(12421u, 8u)])) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-8729i, 51610i, u_input.c.x, u_input.c.x), vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 8u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], 2147483647i))) << (~firstTrailingBit(reverseBits(u_input.d)) % vec4<u32>(32u)), vec4<i32>(u_input.a, 46814i, var_0.b, max(-23224i, 9308i)));
    return var_0.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    global0 = array<i32, 8>();
    let var_0 = u_input.c;
    global0 = array<i32, 8>();
    global2 = func_1(!arg_2.a.x, ~vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(108882u, u_input.d.x, u_input.d.x), u_input.d.wwx), 1u)).a.x;
    let var_1 = -u_input.c.x;
    return Struct_2(Struct_1(select(func_1(2147483647i < global0[_wgslsmith_index_u32(u_input.d.x, 8u)], ~vec2<u32>(u_input.b.x, u_input.d.x)).a, select(func_1(true, u_input.d.yx).a, !vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_2.a.x), !arg_2.a.x), func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], var_1, 3350i, 0i), vec4<i32>(var_1, -2147483647i, u_input.a, var_0.x)), _wgslsmith_mod_u32(u_input.d.x, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(37713u, u_input.d.x), u_input.d.wx), ~global0[_wgslsmith_index_u32(u_input.d.x, 8u)]).a)), global0[_wgslsmith_index_u32(u_input.b.x, 8u)], arg_2);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = firstLeadingBit(4294967295u << (u_input.d.x % 32u));
    global3 = array<vec4<f32>, 20>();
    global2 = false;
    return func_5(vec4<f32>(-379f, arg_2, -816f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -548f), _wgslsmith_f_op_f32(-arg_3)))), vec4<bool>(arg_1.c.d.x, arg_1.a.b.a.x, any(arg_0.a.a), !(!arg_1.a.d.x) != arg_0.a.a.x), arg_1.a.b);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = arg_1.c.a.x;
    let var_1 = true && all(arg_1.c.a);
    global2 = arg_1.a.a.x;
    var var_2 = ~1u;
    var var_3 = true;
    return _wgslsmith_div_f32(1275f, -740f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    let var_0 = _wgslsmith_f_op_f32(func_7(func_6(func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global3[_wgslsmith_index_u32(u_input.d.x, 20u)], vec4<f32>(463f, 1636f, 1000f, -956f), false)))), vec4<bool>(all(vec2<bool>(false, false)), true, true, true), func_1(all(vec3<bool>(false, true, true)), vec2<u32>(6011u, u_input.d.x) & u_input.d.wy)), Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 7170u, u_input.d.x, 0u), vec4<u32>(26412u, 35851u, u_input.d.x, u_input.b.x)), 12u)], vec2<u32>(_wgslsmith_add_u32(0u, u_input.d.x), u_input.b.x), global1[_wgslsmith_index_u32(39239u, 12u)], vec4<i32>(reverseBits(global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), global0[_wgslsmith_index_u32(8691u, 8u)], abs(u_input.a), select(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], false)), abs(abs(vec4<i32>(-47404i, 1i, u_input.c.x, 2147483647i)))), _wgslsmith_f_op_f32(select(-418f, _wgslsmith_f_op_f32(-512f + 1401f), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(trunc(-1274f))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1245f, 416f, 1000f, -1436f)), global3[_wgslsmith_index_u32(46347u, 20u)], true))), func_1(true, ~_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(1u, u_input.d.x))).a, Struct_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), func_6(func_6(Struct_2(Struct_1(vec4<bool>(true, true, true, true)), u_input.a, Struct_1(vec4<bool>(true, true, false, true))), Struct_4(global1[_wgslsmith_index_u32(min(u_input.d.x, 77691u), 12u)], u_input.d.xw, Struct_3(0u, Struct_1(vec4<bool>(true, true, true, true)), 491f, vec4<bool>(false, true, false, true)), abs(vec4<i32>(global0[_wgslsmith_index_u32(77221u, 8u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], -2147483647i)), select(vec4<i32>(u_input.c.x, 5171i, 0i, global0[_wgslsmith_index_u32(33535u, 8u)]), vec4<i32>(-17189i, -29929i, u_input.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), false)), -1077f, -488f), Struct_4(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 12u)], countOneBits(vec2<u32>(u_input.d.x, u_input.b.x)), global1[_wgslsmith_index_u32(1u, 12u)], select(vec4<i32>(13205i, -2327i, -2147483647i, -4865i), _wgslsmith_div_vec4_i32(vec4<i32>(13158i, 0i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<i32>(u_input.a, 1403i, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], 29260i)), func_6(Struct_2(Struct_1(vec4<bool>(false, false, false, false)), -35411i, Struct_1(vec4<bool>(false, false, false, true))), Struct_4(Struct_3(16079u, Struct_1(vec4<bool>(false, false, false, false)), -1503f, vec4<bool>(true, true, true, true)), vec2<u32>(u_input.d.x, u_input.d.x), Struct_3(u_input.d.x, Struct_1(vec4<bool>(false, false, false, false)), -1172f, vec4<bool>(false, true, true, true)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], 2147483647i, 1i, 2147483647i), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 1i, 77826i)), -1721f, 2142f).c.a), vec4<i32>(~1i, u_input.c.x, func_5(vec4<f32>(1193f, -170f, 1449f, -1211f), vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(false, false, false, true))).b, -5656i)), _wgslsmith_f_op_f32(f32(-1f) * -288f), 1f).c));
    global3 = array<vec4<f32>, 20>();
    global1 = array<Struct_3, 12>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.d.x, 12u)];
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(global0[_wgslsmith_index_u32(0u, 8u)] | _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(35263u, 8u)], u_input.a, -31241i, u_input.c.x), vec4<i32>(u_input.a, -7158i, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(38535u, 8u)])), vec4<i32>(u_input.a, -1192i, 2147483647i, u_input.c.x) << (u_input.d % vec4<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -2213f), _wgslsmith_f_op_f32(exp2(var_1.c)), _wgslsmith_div_vec2_i32(countOneBits(firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(314u, 8u)], 2147483647i)) ^ (u_input.c | u_input.c)), -u_input.c));
}

