struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(674f, -1421f, -729f, -228f, -122f);

var<private> global1: array<u32, 18>;

var<private> global2: array<Struct_3, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global0 = array<f32, 5>();
    let var_0 = !select(!(!(!vec4<bool>(true, false, arg_0, true))), select(!(!vec4<bool>(false, false, false, arg_0)), select(!vec4<bool>(arg_0, arg_0, arg_0, true), !vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(true, false, true, arg_0)), select(vec4<bool>(false, true, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, true, true), arg_0 | arg_0)), vec4<bool>(true, all(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0))), arg_0, true));
    global0 = array<f32, 5>();
    global2 = array<Struct_3, 25>();
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, ~27201i & ~_wgslsmith_add_i32(u_input.a, -1i), -73904i), (_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, u_input.a, 1i)), vec3<i32>(u_input.d, -1i, 2147483647i)) & vec3<i32>(1i, abs(u_input.a), 1i)) ^ vec3<i32>(u_input.a, _wgslsmith_mult_i32(~2147483647i, u_input.a), ~(-u_input.d)));
    return -_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -61703i), vec2<i32>(-20699i, var_1.x)), vec2<i32>(-var_1.x, -u_input.d)) >> (vec2<u32>(countOneBits(~(~u_input.c)), u_input.b) % vec2<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32) -> u32 {
    global0 = array<f32, 5>();
    global2 = array<Struct_3, 25>();
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    global2 = array<Struct_3, 25>();
    return select(~(~_wgslsmith_sub_u32(~1u, reverseBits(12848u))), 81663u, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(-42159i), _wgslsmith_mod_i32(u_input.d, u_input.a)), ~func_3(false)) > 1i);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = ~(~global1[_wgslsmith_index_u32(func_2(true, false, global1[_wgslsmith_index_u32(~u_input.c, 18u)]), 18u)]) & ~func_2(true, arg_0.x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, ~u_input.b), 18u)]);
    var var_1 = select(arg_0.x, arg_0.x, 580f <= _wgslsmith_f_op_f32(1736f + _wgslsmith_f_op_f32(select(-1296f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(69341u, 5u)])), !arg_0.x))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2768u, 18u)], 5u)], 1260f, _wgslsmith_f_op_f32(step(-1185f, 485f)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_0, 5u)])))), ~global1[_wgslsmith_index_u32(u_input.c, 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 5u)] * global0[_wgslsmith_index_u32(0u, 5u)]) + 1522f) <= _wgslsmith_f_op_f32(f32(-1f) * -483f), ~(~vec4<i32>(-26140i, u_input.d, u_input.a, u_input.d) | vec4<i32>(u_input.d, -40201i, 38968i, u_input.d)), ~firstLeadingBit(select(vec3<i32>(-20628i, 2147483647i, u_input.d), vec3<i32>(-46356i, u_input.d, u_input.a), arg_0.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-826f * -2079f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 5u)] - _wgslsmith_f_op_f32(893f + global0[_wgslsmith_index_u32(var_0, 5u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 45370u, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.c, var_0, var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, 47117u), vec4<u32>(0u, var_0, 1u, var_0), vec4<u32>(global1[_wgslsmith_index_u32(0u, 18u)], var_0, 2743u, 18439u))), 5u)], _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(abs(1u), 5u)], 628f))), 0u, all(!(!vec3<bool>(false, arg_0.x, arg_0.x))), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -10289i, 2147483647i, 27811i), ~vec4<i32>(-2147483647i, 2147483647i, 32267i, -3163i)), -_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, 20250i, 24719i), ~vec3<i32>(u_input.a, u_input.a, u_input.d))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(70153u, 5u)], -1559f, 924f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71154u, 18u)], 5u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(1u, 5u)], -1422f, -533f, global0[_wgslsmith_index_u32(1365u, 5u)]), vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 5u)], 1627f, -1628f, -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, global0[_wgslsmith_index_u32(51009u, 5u)], global0[_wgslsmith_index_u32(59519u, 5u)], global0[_wgslsmith_index_u32(11095u, 5u)])))), 1u, all(vec2<bool>(arg_0.x, true)), min(vec4<i32>(1i, u_input.a, -u_input.a, _wgslsmith_div_i32(-30053i, u_input.a)), -vec4<i32>(u_input.d, -42518i, u_input.a, u_input.d)), firstTrailingBit(~vec3<i32>(-34313i, 1i, 54042i))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(var_0, 5u)], 1306f, -410f), vec4<f32>(322f, -1000f, 1301f, global0[_wgslsmith_index_u32(49620u, 5u)])))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], 118f, 1491f, -1614f), vec4<f32>(global0[_wgslsmith_index_u32(var_0, 5u)], -1572f, 872f, global0[_wgslsmith_index_u32(var_0, 5u)])), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-910f, global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(33253u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)]))))), countOneBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 18u)], 18u)]), all(vec2<bool>(!arg_0.x, all(vec2<bool>(false, true)))), vec4<i32>(~2147483647i, u_input.d, -(u_input.d & u_input.a), u_input.d), vec3<i32>(12628i, _wgslsmith_mult_i32(u_input.d | 1i, u_input.d), countOneBits(u_input.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-227f, -863f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 18u)], 5u)]))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(182f, global0[_wgslsmith_index_u32(46449u, 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 18u)], 5u)])))))));
    global2 = array<Struct_3, 25>();
    var var_3 = var_2.b;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1185f - global0[_wgslsmith_index_u32(76456u, 5u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.a.x, global0[_wgslsmith_index_u32(1u, 5u)]))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1370f))))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(89731u, 5u)], global0[_wgslsmith_index_u32(firstLeadingBit(var_3.b), 5u)])), 1u, select((_wgslsmith_dot_vec3_i32(vec3<i32>(23456i, 208i, 1i), vec3<i32>(var_2.c.d.x, var_3.d.x, 39867i)) << ((global1[_wgslsmith_index_u32(4294967295u, 18u)] & 0u) % 32u)) > u_input.a, false || !arg_0.x, true), vec4<i32>(~_wgslsmith_clamp_i32(abs(var_3.d.x), reverseBits(var_3.d.x), 1i), 20153i, u_input.d, -18227i), ~((reverseBits(var_3.e) ^ vec3<i32>(u_input.d, var_2.d.d.x, u_input.a)) >> (_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(13673u, 18u)], 12065u, 483u)), ~vec3<u32>(31759u, var_3.b, 0u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 18>();
    let var_0 = ~(~(~(~(u_input.c ^ u_input.b))));
    let var_1 = Struct_3(Struct_2(func_1(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(335f, global0[_wgslsmith_index_u32(0u, 5u)], -552f, 884f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1044f, global0[_wgslsmith_index_u32(67584u, 5u)], 1000f, global0[_wgslsmith_index_u32(39597u, 5u)])))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(global1[_wgslsmith_index_u32(0u, 18u)], 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(103212u, 1u), vec2<u32>(24588u, 2894u))), select(true, true, true), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, u_input.d, u_input.d, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -53364i), vec4<i32>(u_input.d, u_input.a, -44804i, u_input.a))), vec3<i32>(5285i, u_input.d, -21875i)), func_1(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 5u)]), _wgslsmith_f_op_f32(-776f - global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 5u)]), _wgslsmith_f_op_f32(round(-698f)), -506f), 4294967295u, any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec4<i32>(u_input.a, -2147483647i, ~u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, u_input.d, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(11399i, u_input.d, -1i), vec3<i32>(0i, u_input.a, u_input.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-461f, 763f, -661f), vec3<f32>(-1684f, global0[_wgslsmith_index_u32(39975u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)])))))), var_0 >= _wgslsmith_sub_u32(u_input.c, _wgslsmith_mod_u32(_wgslsmith_sub_u32(35933u, global1[_wgslsmith_index_u32(4294967295u, 18u)]), var_0)), -27477i, func_1(vec2<bool>(_wgslsmith_f_op_f32(select(824f, global0[_wgslsmith_index_u32(var_0, 5u)], false)) != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 5u)]), true)));
    let var_2 = -821f;
    global2 = array<Struct_3, 25>();
    var var_3 = firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~1u, 13416u & u_input.c, 30696u, ~0u), ~vec4<u32>(u_input.b, u_input.c, 51735u, var_1.a.a.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, 23187u, 83614u) ^ ~vec4<u32>(global1[_wgslsmith_index_u32(var_0, 18u)], 1u, 0u, u_input.c), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(4294967295u, var_0, 63106u, 0u)), vec4<u32>(u_input.c, var_0, 118087u, global1[_wgslsmith_index_u32(38756u, 18u)])))));
    global1 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0);
}

