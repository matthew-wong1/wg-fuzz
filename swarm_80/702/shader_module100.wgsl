struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, false, false, true, true, false, true, false, true);

var<private> global1: u32 = 8130u;

var<private> global2: i32 = 0i;

var<private> global3: array<vec3<i32>, 25>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<u32> {
    global1 = firstTrailingBit(abs(~countOneBits(abs(1u))));
    global1 = 4294967295u;
    global0 = array<bool, 9>();
    global3 = array<vec3<i32>, 25>();
    let var_0 = !vec4<bool>(false, false, u_input.b.x <= (~u_input.b.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, -8992i), vec3<i32>(u_input.b.x, 20921i, -34110i))), true);
    return vec2<u32>(countOneBits(46853u), ~(u_input.a.x & min(0u, 69459u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>) -> f32 {
    var var_0 = Struct_1(vec3<bool>(false && any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], true, false, arg_0.x)), all(select(select(vec4<bool>(true, arg_0.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 9u)], arg_0.x, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], arg_0.x, arg_0.x, true)), select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(21892u, 9u)], true)), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], arg_0.x), vec4<bool>(arg_0.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false)))), false), 39993u, vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, 0u)) & abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<u32>(14782u, u_input.a.x, 2478u) ^ reverseBits(vec3<u32>(u_input.a.x, 19855u, 11489u))), 9u)]), arg_1.x);
    var var_1 = Struct_1(!var_0.a, abs(var_0.b) & 9708u, select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], var_0.c.x), vec2<bool>((false == global0[_wgslsmith_index_u32(0u, 9u)]) && (global0[_wgslsmith_index_u32(var_0.b, 9u)] && true), true | global0[_wgslsmith_index_u32(firstLeadingBit(var_0.b), 9u)]), !(arg_0.x & global0[_wgslsmith_index_u32(_wgslsmith_div_u32(58443u, 20009u), 9u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + -1000f))));
    var var_2 = arg_1.x;
    global3 = array<vec3<i32>, 25>();
    var var_3 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b.x, firstLeadingBit(u_input.b.x), (u_input.b.x >> (u_input.a.x % 32u)) << (var_1.b % 32u), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 0i))))), vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(u_input.b.x), u_input.b.x) & -(u_input.b.x >> (u_input.a.x % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(global3[_wgslsmith_index_u32(var_1.b, 25u)]), countOneBits(vec3<i32>(-44284i, u_input.b.x, -17217i))), -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), -31038i, -1i));
    return _wgslsmith_f_op_f32(-var_0.d);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    global2 = abs(-60369i);
    var var_0 = Struct_1(select(arg_2.a, arg_2.a, select(select(arg_2.a, vec3<bool>(global0[_wgslsmith_index_u32(24179u, 9u)], global0[_wgslsmith_index_u32(3107u, 9u)], global0[_wgslsmith_index_u32(arg_0.x, 9u)]), arg_2.a), !select(arg_2.a, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false, false), arg_2.a), all(vec3<bool>(true, arg_2.c.x, arg_2.c.x)))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), ~vec2<u32>(u_input.a.x, u_input.a.x))), vec2<bool>(true, !all(vec2<bool>(false, arg_2.c.x))), _wgslsmith_f_op_f32(sign(-677f)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1477f))), _wgslsmith_f_op_f32(1512f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d))))))));
    global3 = array<vec3<i32>, 25>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1906f, 171f) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1268f, arg_2.d)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, -1101f), vec2<f32>(486f, arg_2.d))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-323f, arg_2.d)));
    return Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(func_2().x, 9u)], true, true), ~52218u, !select(vec2<bool>(all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(31560u, 9u)])), true), vec2<bool>(!var_0.c.x, !arg_2.c.x), true), -1001f);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_2(), ~select(u_input.b, firstLeadingBit(-u_input.b), select(select(vec3<bool>(global0[_wgslsmith_index_u32(45813u, 9u)], global0[_wgslsmith_index_u32(18553u, 9u)], global0[_wgslsmith_index_u32(35741u, 9u)]), vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], false)), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false, true), global0[_wgslsmith_index_u32(min(12485u, u_input.a.x), 9u)])), Struct_1(select(vec3<bool>(false, global0[_wgslsmith_index_u32(~u_input.a.x, 9u)], !global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)] || false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(u_input.a.x, u_input.a.x)), 9u)]), ~u_input.a.x, vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u))), 9u)], (u_input.a.x > u_input.a.x) || all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), _wgslsmith_div_vec2_f32(vec2<f32>(-1773f, 888f), vec2<f32>(384f, 1000f)))), -198f)));
    let var_1 = vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(23181i, 21831i, u_input.b.x, -4662i) ^ vec4<i32>(5602i, u_input.b.x, -19051i, u_input.b.x), vec4<i32>(0i, u_input.b.x, u_input.b.x, -2147483647i)), firstTrailingBit(-vec4<i32>(36458i, -156i, 1i, -10556i)) << (~(~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, var_0.b)) % vec4<u32>(32u))), ~2147483647i, _wgslsmith_mod_i32(u_input.b.x & _wgslsmith_dot_vec3_i32(select(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(var_0.c.x, true, var_0.a.x)), vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), 1i));
    global3 = array<vec3<i32>, 25>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-978f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2051f), -846f))));
    let var_3 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.b | _wgslsmith_mult_u32(u_input.a.x, 1u), ~_wgslsmith_clamp_u32(13179u, u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_mult_u32(4294967295u, var_0.b)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, 100610u, 0u, 1u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 18959u), vec4<u32>(1u, 1u, 20788u, 21658u)) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 15031u), vec3<u32>(35342u, var_0.b, 0u)), _wgslsmith_mult_u32(4918u, 1u), countOneBits(var_0.b), ~var_0.b));
    return Struct_1(select(vec3<bool>(func_4(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(66241u, var_3)), _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(var_1.x, 30872i, -2147483647i)), func_4(vec2<u32>(1u, u_input.a.x), vec3<i32>(-2147483647i, var_1.x, -16553i), var_0)).c.x, !(!global0[_wgslsmith_index_u32(var_0.b, 9u)]), global0[_wgslsmith_index_u32(~var_0.b, 9u)] && (global0[_wgslsmith_index_u32(var_0.b, 9u)] && false)), var_0.a, func_4(vec2<u32>(var_0.b, var_3), vec3<i32>(-1i, -2147483647i, -1i), var_0).a.x || true), 87178u, !var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(890f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-907f)) - _wgslsmith_f_op_f32(step(var_0.d, var_0.d)))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    global2 = u_input.b.x;
    global2 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(countOneBits(u_input.b.x), 2147483647i, u_input.b.x) ^ -(u_input.b.x << (1u % 32u)), u_input.b.x), _wgslsmith_mod_i32(~_wgslsmith_sub_i32(-19597i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), u_input.b.x));
    var var_0 = arg_1.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(187f, arg_1.d), vec2<f32>(629f, arg_1.d))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, -1000f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.d, arg_1.d))))), !(!select(arg_1.a.zz, vec2<bool>(true, arg_1.a.x), arg_0.a.x)))));
    global3 = array<vec3<i32>, 25>();
    return vec2<f32>(func_4(~reverseBits(vec2<u32>(u_input.a.x, arg_1.b)), firstLeadingBit(-global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 25u)]), func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 30669u), _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(arg_1.b, arg_1.b))), vec3<i32>(1i, 2147483647i, reverseBits(u_input.b.x)), Struct_1(func_4(vec2<u32>(arg_1.b, 1u), global3[_wgslsmith_index_u32(4294967295u, 25u)], Struct_1(arg_1.a, 4294967295u, vec2<bool>(true, true), -1355f)).a, ~0u, vec2<bool>(arg_0.c.x, true), _wgslsmith_f_op_f32(-arg_1.d)))).d, _wgslsmith_f_op_f32(var_1.x + arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_1(), func_1()));
    global3 = array<vec3<i32>, 25>();
    var var_1 = 174f;
    global2 = u_input.b.x;
    var var_2 = Struct_1(vec3<bool>(func_1().a.x, any(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(27789u, 9u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(2000u, 9u)]))), !select(!global0[_wgslsmith_index_u32(u_input.a.x, 9u)], func_1().c.x, global0[_wgslsmith_index_u32(1u, 9u)] | false)), 16375u, select(vec2<bool>(false, false), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(35469u, 9u)])), func_4(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.b, Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false), 0u, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), var_0.x)).c, vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)], true, global0[_wgslsmith_index_u32(34753u, 9u)])), var_0.x != var_0.x)), !select(func_1().c, !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), false | global0[_wgslsmith_index_u32(u_input.a.x, 9u)])), -466f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(413f))) >= _wgslsmith_f_op_f32(trunc(var_2.d));
    let var_4 = Struct_1(var_2.a, _wgslsmith_sub_u32(var_2.b, _wgslsmith_add_u32(~u_input.a.x, 4294967295u)), func_4(u_input.a, _wgslsmith_add_vec3_i32(abs(u_input.b), vec3<i32>(u_input.b.x << (4151u % 32u), max(u_input.b.x, -2147483647i), 81397i)), Struct_1(var_2.a, func_1().b, var_2.a.xy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.d - -945f))))).a.yx, _wgslsmith_f_op_vec2_f32(func_5(func_1(), func_4(u_input.a, u_input.b, func_1()))).x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(-9744i, _wgslsmith_div_i32(abs(-36864i), min(1i, -6091i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

