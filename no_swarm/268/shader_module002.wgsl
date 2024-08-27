struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false));

var<private> global1: array<f32, 30> = array<f32, 30>(-1000f, -685f, -1222f, -1000f, -1000f, 493f, 122f, -836f, 425f, -516f, -667f, -195f, 1967f, 679f, 274f, -1000f, 440f, 324f, 651f, 1530f, 1630f, -1148f, -639f, 1123f, 455f, -469f, 218f, -149f, -399f, 228f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = !global0[_wgslsmith_index_u32(u_input.b, 17u)];
    global0 = array<vec4<bool>, 17>();
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    global0 = array<vec4<bool>, 17>();
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(974f, _wgslsmith_div_f32(_wgslsmith_div_f32(2087f, global1[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_f_op_f32(select(432f, global1[_wgslsmith_index_u32(12655u, 30u)], true))), global1[_wgslsmith_index_u32(~56891u, 30u)])))));
}

fn func_2() -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b >> (~u_input.b % 32u), 30u)];
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(0u, 30u)], false, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1385f, global1[_wgslsmith_index_u32(50845u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)])))) - vec3<f32>(_wgslsmith_f_op_f32(min(735f, 1356f)), _wgslsmith_div_f32(-706f, -1298f), _wgslsmith_f_op_f32(-241f + global1[_wgslsmith_index_u32(0u, 30u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(false, 19102u, global0[_wgslsmith_index_u32(u_input.b, 17u)])))))), vec4<bool>(true, !any(vec2<bool>(true, false)), (1u | _wgslsmith_div_u32(u_input.c, 63192u)) <= 4294967295u, (u_input.c | 5638u) <= ~0u), 35784i);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(382f - -329f) - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 30u)]))), -735f) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-804f, 250f, global1[_wgslsmith_index_u32(u_input.c, 30u)]) + var_1.c) - _wgslsmith_f_op_vec3_f32(exp2(var_1.c))))))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(select(-834f, _wgslsmith_f_op_f32(-1056f * _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-1000f - -265f)))), true)), !any(vec3<bool>(true, var_1.d.x, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(604f - global1[_wgslsmith_index_u32(u_input.c, 30u)]), _wgslsmith_f_op_f32(f32(-1f) * -548f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.c))))), vec4<bool>(!var_1.d.x, true, !select(true, !var_1.d.x, false), !(!select(var_1.b, false, var_1.d.x))), ~(-6160i));
    var var_3 = ~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.e >> (_wgslsmith_add_u32(22512u, u_input.b) % 32u), 4774i, _wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, var_1.e, u_input.a.x, var_1.e), vec4<i32>(23942i, u_input.a.x, var_1.e, u_input.a.x)) << (abs(0u) % 32u)), -vec4<i32>(0i, 0i, 2147483647i, 16228i));
    return -(vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, var_1.e)), countOneBits(-1i), i32(-1i) * -1i, -33903i << (1u % 32u)) ^ vec4<i32>(var_1.e, 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), u_input.a), u_input.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    var var_0 = vec4<i32>(51242i, _wgslsmith_div_i32(firstTrailingBit(-1i), u_input.a.x) & -firstLeadingBit(u_input.a.x), ~u_input.a.x ^ 32795i, 1i) | countOneBits(_wgslsmith_mod_vec4_i32(-select(vec4<i32>(u_input.a.x, 0i, -15453i, arg_1.a.e), vec4<i32>(-2147483647i, arg_1.a.e, arg_1.a.e, -1i), false), ~vec4<i32>(0i, 19173i, -1933i, arg_1.a.e) << (~vec4<u32>(arg_1.c.b, 21904u, 4294967295u, 28261u) % vec4<u32>(32u))));
    var_0 = _wgslsmith_mult_vec4_i32(~(vec4<i32>(-1i) * -countOneBits(vec4<i32>(var_0.x, arg_1.a.e, u_input.a.x, 2147483647i))), vec4<i32>(-2147483647i | (~u_input.a.x & -arg_1.a.e), max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -7489i), var_0.wz), -max(-2147483647i, u_input.a.x)), 48970i, _wgslsmith_dot_vec4_i32(func_2(), vec4<i32>(-29124i, func_2().x, var_0.x, -2147483647i))));
    let var_1 = arg_1.a.e;
    var var_2 = any(arg_0.c.zw);
    let var_3 = u_input.a.yz;
    return select(arg_0.b, ~firstTrailingBit(_wgslsmith_sub_u32(10591u ^ u_input.b, u_input.b >> (arg_0.b % 32u))), any(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 17u)]));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_4(arg_0, !arg_0.d, Struct_1(true, u_input.c, !global0[_wgslsmith_index_u32(func_1(Struct_1(arg_0.b, arg_1.x, vec4<bool>(true, false, arg_0.d.x, arg_0.b)), Struct_4(Struct_3(-980f, false, arg_0.c, vec4<bool>(false, arg_0.d.x, false, false), u_input.a.x), vec4<bool>(true, true, false, true), Struct_1(true, 63675u, vec4<bool>(true, true, true, false)))), 17u)]));
    let var_1 = Struct_1(arg_0.e != _wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.xz), _wgslsmith_div_u32(~arg_1.x, 26825u), !(!vec4<bool>(arg_0.b, true, true, true)));
    global0 = array<vec4<bool>, 17>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_1.a, var_0.c.b << (~32412u % 32u), select(!var_1.c, select(var_0.c.c, var_0.c.c, arg_0.d.x), !arg_0.d)))));
    var var_3 = max(2147483647i, u_input.a.x << (~_wgslsmith_clamp_u32(~1u, 0u, _wgslsmith_mod_u32(1u, u_input.c)) % 32u));
    return Struct_2(var_1, 850f, countOneBits(arg_1.wyx), var_1.b, -vec4<i32>(countOneBits(-34904i), var_0.a.e, ~reverseBits(2147483647i), ~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_1(Struct_1(false, 0u, vec4<bool>(false, true, true, true)), Struct_4(Struct_3(global1[_wgslsmith_index_u32(0u, 30u)], true, vec3<f32>(-993f, 600f, global1[_wgslsmith_index_u32(58102u, 30u)]), global0[_wgslsmith_index_u32(u_input.b, 17u)], u_input.a.x), vec4<bool>(true, false, true, false), Struct_1(true, u_input.b, vec4<bool>(true, true, true, false)))), 30u)] + global1[_wgslsmith_index_u32(~1u, 30u)]))), !(u_input.b < u_input.c), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.c, 4294967295u), vec4<u32>(1u, u_input.b, u_input.c, 0u)), 30u)], _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.b, 30u)])), -1395f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.c, 30u)], global1[_wgslsmith_index_u32(u_input.c, 30u)]) - vec3<f32>(global1[_wgslsmith_index_u32(47543u, 30u)], -755f, 1234f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(86399u, 30u)], 463f, -803f))))), vec4<bool>(false, all(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 1u), 17u)]), !any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 30u)]) <= global1[_wgslsmith_index_u32(min(u_input.c, u_input.b), 30u)]), (_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) | 1i) | -1i), min(_wgslsmith_sub_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 9718u, u_input.b, 1u), vec4<u32>(u_input.c, u_input.c, 1u, 36213u)), ~vec4<u32>(116762u, 1u, 4294967295u, u_input.b), global1[_wgslsmith_index_u32(u_input.b, 30u)] != global1[_wgslsmith_index_u32(u_input.b, 30u)]), ~_wgslsmith_div_vec4_u32(vec4<u32>(87595u, 7653u, 92374u, 5856u), vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.c))), ~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.c), 23700u, ~1u, u_input.b)));
    var var_1 = ~vec4<i32>(-(~(-16989i)), 71098i, u_input.a.x, _wgslsmith_add_i32(min(var_0.e.x >> (u_input.c % 32u), 0i), 1i));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 30u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, -924f) * 1000f)))), all(var_0.a.c.xz) || true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-992f, var_0.b, var_0.b), vec3<f32>(-519f, -1000f, var_0.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 789f, global1[_wgslsmith_index_u32(4294967295u, 30u)]))))), !vec4<bool>(var_0.a.c.x, any(select(vec3<bool>(false, false, true), var_0.a.c.ywz, vec3<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x))), var_0.a.a, true), var_0.e.x);
    var var_3 = Struct_3(528f, func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.c.x, 30u)])), (false != var_2.b) == !var_0.a.a, _wgslsmith_f_op_vec3_f32(var_2.c * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(419f, 500f, 1028f), vec3<f32>(704f, var_2.c.x, global1[_wgslsmith_index_u32(104001u, 30u)])))), func_4(var_2, ~vec4<u32>(u_input.b, 5265u, var_0.c.x, 48909u)).a.c, abs(var_0.e.x) >> (var_0.c.x % 32u)), vec4<u32>(41997u, u_input.b, var_0.a.b, _wgslsmith_sub_u32(~u_input.b, u_input.c >> (0u % 32u)))).a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(891f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1701u, 30u)]), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(true, var_0.d, vec4<bool>(true, var_2.b, var_2.b, var_0.a.c.x)))).x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1003f, 156f, 873f) + vec3<f32>(global1[_wgslsmith_index_u32(var_0.a.b, 30u)], -872f, var_2.a)) + _wgslsmith_f_op_vec3_f32(-var_2.c))), vec4<bool>(var_2.d.x, true, true, true), -firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_0.e, vec4<i32>(-1i, var_1.x, -11i, var_0.e.x)), 19266i)));
    let var_4 = ~u_input.c;
    var_3 = var_2;
    var var_5 = Struct_1(all(var_0.a.c.yxx), ~4294967295u, vec4<bool>(_wgslsmith_mult_i32(~1i, var_2.e) <= ~max(2147483647i, var_1.x), select(!var_0.a.c.x | true, var_0.a.c.x, all(var_3.d)), all(vec2<bool>(var_0.a.c.x, true)), !var_0.a.c.x));
    global0 = array<vec4<bool>, 17>();
    global1 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec3<u32>(~var_0.c.x, min(47062u, 1u), _wgslsmith_mult_u32(u_input.c, var_5.b)), abs(var_0.c)));
}

