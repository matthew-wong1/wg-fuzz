struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false));

var<private> global2: array<i32, 27>;

var<private> global3: u32 = 1u;

var<private> global4: i32 = -1i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = Struct_2(~vec3<u32>(u_input.b, 1u, 1u), Struct_1(u_input.b | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, u_input.b))), arg_2, select(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 33193u, u_input.b, 5425u), vec4<u32>(60505u, u_input.b, 22287u, 11560u)), vec4<u32>(0u, 42411u, u_input.b, 0u) & vec4<u32>(48529u, u_input.b, u_input.b, 1u)), vec4<u32>(min(u_input.b >> (15396u % 32u), u_input.b), max(select(u_input.b, 4294967295u, arg_2), select(u_input.b, 4294967295u, true)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 0u, 48464u)), ~vec4<u32>(u_input.b, 60366u, 73381u, 48148u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(104429u, 4294967295u))), any(vec2<bool>(false, all(vec4<bool>(arg_2, arg_2, arg_2, arg_2))))), !select(select(!vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, true), true), vec2<bool>(true, false), vec2<bool>(all(vec4<bool>(arg_2, arg_2, arg_2, arg_2)), arg_2)));
    let var_1 = Struct_1(abs(var_0.b.a));
    let var_2 = var_0.e;
    let var_3 = Struct_1(min(u_input.b, _wgslsmith_mod_u32(abs(u_input.b) << ((var_0.a.x & var_1.a) % 32u), var_0.b.a)));
    global1 = array<vec4<bool>, 2>();
    return var_1.a;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_2 {
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(32544u, func_3(max(global0[_wgslsmith_index_u32(89335u, 28u)], u_input.c), _wgslsmith_f_op_f32(-1000f + -962f), arg_0.c & true)) ^ (~(~arg_0.a.x) | _wgslsmith_add_u32(1u, arg_0.b.a)), 27u)];
    global1 = array<vec4<bool>, 2>();
    global2 = array<i32, 27>();
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> f32 {
    global4 = ~(-15638i);
    global4 = ~_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, ~2700i), -(~u_input.a.x) & min(global2[_wgslsmith_index_u32(u_input.b, 27u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_2.b.a, 28u)], u_input.a.x), vec2<i32>(-1i, -9374i))));
    var var_0 = -598f;
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(~(arg_2.b.a >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.a.xz, arg_2.a.yz, vec2<u32>(10649u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(22327u, u_input.b), arg_2.a.yy)) % 32u))), 2u)];
    let var_2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-396f))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, 0i, 15109i), vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.b, 28u)], 1i, -2147483647i))) >= -(_wgslsmith_div_i32(2147483647i, -1i) | _wgslsmith_add_i32(global2[_wgslsmith_index_u32(20372u, 27u)], 7989i)), any(select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false)), vec3<bool>(all(vec4<bool>(false, false, true, false)), true, all(vec3<bool>(true, true, true))), true)), func_2(Struct_2(vec3<u32>(~arg_1, 105597u, _wgslsmith_mod_u32(4294967295u, arg_1)), Struct_1(~arg_1), true, _wgslsmith_add_vec4_u32(vec4<u32>(16360u, u_input.b, arg_1, arg_1), ~vec4<u32>(4294967295u, u_input.b, arg_1, 1u)), vec2<bool>(true, true)), !(!(global0[_wgslsmith_index_u32(6947u, 28u)] > arg_2)), 2147483647i < arg_2)));
    global0 = array<i32, 28>();
    let var_1 = func_2(Struct_2(vec3<u32>(u_input.b, arg_1 >> (~1u % 32u), arg_1), func_2(func_2(Struct_2(vec3<u32>(u_input.b, u_input.b, u_input.b), Struct_1(4294967295u), false, vec4<u32>(arg_1, 0u, 0u, arg_1), vec2<bool>(false, false)), true, true), true, true).b, select(any(vec3<bool>(true, true, true)), any(global1[_wgslsmith_index_u32(arg_1, 2u)]) != any(vec2<bool>(false, false)), false), ~(select(vec4<u32>(u_input.b, 15884u, u_input.b, 71581u), vec4<u32>(4294967295u, arg_1, 66455u, 4294967295u), global1[_wgslsmith_index_u32(0u, 2u)]) ^ ~vec4<u32>(u_input.b, u_input.b, 73248u, arg_1)), vec2<bool>(true, select(true, global0[_wgslsmith_index_u32(32757u, 28u)] != u_input.c, true))), all(!vec4<bool>(true, true, any(global1[_wgslsmith_index_u32(u_input.b, 2u)]), true)), false);
    global2 = array<i32, 27>();
    let var_2 = func_2(var_1, true, all(!var_1.e));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f * -903f)))) - var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 2>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(590f, _wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1358f, -422f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(588f, 266f)), -436f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1371f - 1292f), _wgslsmith_f_op_f32(func_1(vec4<f32>(-115f, 840f, -1000f, 1000f), 1u, global2[_wgslsmith_index_u32(16752u, 27u)])), 1f, _wgslsmith_f_op_f32(floor(-1817f))))));
    let var_1 = func_2(func_2(Struct_2(firstLeadingBit(vec3<u32>(9808u, 4294967295u, u_input.b) & vec3<u32>(u_input.b, u_input.b, u_input.b)), func_2(func_2(Struct_2(vec3<u32>(1u, 1u, u_input.b), Struct_1(u_input.b), true, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<bool>(true, true)), false, false), true, false).b, false, vec4<u32>(select(67811u, u_input.b, false), func_2(Struct_2(vec3<u32>(36220u, u_input.b, u_input.b), Struct_1(38224u), true, vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec2<bool>(false, true)), false, true).d.x, u_input.b | u_input.b, 1u), vec2<bool>(true, true)), select(all(vec2<bool>(true, true)), true, true), true), any(vec3<bool>(21142i > (global2[_wgslsmith_index_u32(u_input.b, 27u)] << (u_input.b % 32u)), true, !select(false, false, true))), any(vec3<bool>(select(select(false, true, true), any(vec3<bool>(true, true, false)), true), false, firstLeadingBit(1u) < ~u_input.b))).b;
    let var_2 = Struct_2(func_2(Struct_2(abs(~vec3<u32>(var_1.a, 1u, u_input.b)), var_1, any(vec2<bool>(false, true)), vec4<u32>(reverseBits(var_1.a), 12241u, abs(var_1.a), reverseBits(1u)), func_2(Struct_2(vec3<u32>(0u, 61747u, var_1.a), var_1, false, vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec2<bool>(false, true)), all(vec3<bool>(true, false, false)), true).e), select(_wgslsmith_div_f32(var_0.x, var_0.x) < -1657f, false, !any(vec2<bool>(false, true))), true).d.yzw, var_1, all(vec3<bool>(true, true, true)) == (var_1.a != 1u), _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(0u, 4294967295u, var_1.a, var_1.a)), ~(~vec4<u32>(1u, 4294967295u, var_1.a, var_1.a))) & ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 15466u, 0u, var_1.a) & vec4<u32>(var_1.a, 18181u, 12031u, u_input.b), vec4<u32>(4294967295u, 1u, 17606u, var_1.a)), !select(select(func_2(Struct_2(vec3<u32>(51483u, u_input.b, 0u), var_1, true, vec4<u32>(1u, var_1.a, 1246u, var_1.a), vec2<bool>(true, true)), true, false).e, vec2<bool>(true, true), all(vec3<bool>(false, false, true))), vec2<bool>(any(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, true, true))), true));
    let var_3 = func_2(var_2, false, !(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1304i, 18928i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 28u)]), vec4<i32>(u_input.a.x, 30545i, global0[_wgslsmith_index_u32(20416u, 28u)], u_input.a.x)), firstLeadingBit(global2[_wgslsmith_index_u32(var_1.a, 27u)])) < min(abs(u_input.a.x), ~u_input.a.x))).b;
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(abs(301f))), _wgslsmith_div_f32(2274f, var_0.x), var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_0, var_0), var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(-569f, var_0.x, -902f, 1828f))), !vec4<bool>(true, false, var_2.c, true))), var_0, !vec4<bool>(true, var_2.e.x, all(vec2<bool>(true, var_2.e.x)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yy, _wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_clamp_i32(1i, u_input.a.x, global2[_wgslsmith_index_u32(~var_2.b.a & ~u_input.b, 27u)]));
}

