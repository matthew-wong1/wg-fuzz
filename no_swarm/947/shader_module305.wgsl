struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(1i, -69898i, -40312i, 1i, i32(-2147483648), 2147483647i, 4691i);

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_2, 4>;

var<private> global3: i32 = -625i;

var<private> global4: array<bool, 6> = array<bool, 6>(false, true, true, true, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(countOneBits(global1.x), 6u)] && true;
    global4 = array<bool, 6>();
    global1 = ~(~abs(~vec2<u32>(1u, arg_1.a)));
    var var_1 = arg_1;
    var var_2 = select(vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(21600u, var_1.a) | countOneBits(25963u), 7u)] != -max(u_input.a, -2147483647i)), select(!(!(!vec2<bool>(true, var_0))), !vec2<bool>(arg_0, arg_0), global4[_wgslsmith_index_u32(arg_2.a, 6u)]), !vec2<bool>(arg_0, arg_0));
    return ~9677u;
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<i32, 7>();
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(~arg_0, arg_0), ~45789u) << (firstTrailingBit(global1.x) % 32u), 6u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1555f * 347f), -186f)))));
    var var_2 = 36651i;
    let var_3 = Struct_2(4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1917f * -941f))))) - -1000f);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = Struct_5(_wgslsmith_div_i32(93209i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global1.x, 45608u, 44480u), global1.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-731f, arg_0.x) - _wgslsmith_f_op_vec2_f32(select(arg_0, vec2<f32>(arg_0.x, arg_0.x), global4[_wgslsmith_index_u32(98965u, 6u)])))))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(3100u, ~60816u, 91227u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9927u, 422u), vec3<u32>(global1.x, global1.x, global1.x))), ~abs(vec4<u32>(57347u, global1.x, global1.x, global1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(39004u, global1.x, global1.x, global1.x))), select(vec4<u32>(global1.x, global1.x, global1.x | 4294967295u, 55041u >> (global1.x % 32u)), ~min(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(global1.x, global1.x, global1.x, 15899u)), select(vec4<bool>(false, global4[_wgslsmith_index_u32(0u, 6u)], global4[_wgslsmith_index_u32(18298u, 6u)], false), !vec4<bool>(false, arg_1, false, true), !vec4<bool>(global4[_wgslsmith_index_u32(global1.x, 6u)], arg_1, false, true)))), Struct_4(func_1(!all(vec4<bool>(global4[_wgslsmith_index_u32(global1.x, 6u)], arg_1, false, arg_1)), global2[_wgslsmith_index_u32(func_1(741f != arg_0.x, Struct_2(global1.x), Struct_2(1u)), 4u)], Struct_2(global1.x | 76051u)), Struct_2(global1.x), Struct_1(~(vec3<u32>(19597u, 56134u, 46207u) ^ vec3<u32>(global1.x, 24123u, 51615u)))));
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    var var_1 = var_0.e;
    var var_2 = abs(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2 & -u_input.a, 2147483647i, var_0.a), vec3<i32>(min(min(-957i, global0[_wgslsmith_index_u32(50352u, 7u)]), var_0.a), var_0.a, min(-var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_2), vec2<i32>(-45391i, u_input.a))))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_dot_vec2_u32(~vec2<u32>(min(0u, 1u), ~global1.x), min(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global1.x, 1u), ~vec2<u32>(39458u, 4294967295u), vec2<u32>(4294967295u, 7795u) ^ vec2<u32>(global1.x, global1.x)), ~reverseBits(vec2<u32>(global1.x, 20081u)))), func_1(global4[_wgslsmith_index_u32(~5165u, 6u)], global2[_wgslsmith_index_u32(1u, 4u)], Struct_2(global1.x)));
    global2 = array<Struct_2, 4>();
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(global1.x & global1.x, 7u)], 10416i, -u_input.a), u_input.a, _wgslsmith_mod_i32(-(u_input.a >> (57104u % 32u)), ~0i)), vec3<i32>(_wgslsmith_div_i32(~global0[_wgslsmith_index_u32(9797u, 7u)], i32(-1i) * -2147483647i), 1828i, ~1i) ^ vec3<i32>(func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1779f, 1667f), vec2<f32>(255f, 457f))), any(vec2<bool>(global4[_wgslsmith_index_u32(global1.x, 6u)], global4[_wgslsmith_index_u32(22920u, 6u)])), 1i), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 7u)]))), -4704i));
    let var_2 = (vec2<i32>(-1i) * -(vec2<i32>(-2147483647i, 39445i) >> (vec2<u32>(0u, global1.x) % vec2<u32>(32u)))) << (vec2<u32>(countOneBits(global1.x), _wgslsmith_div_u32(4294967295u, global1.x)) % vec2<u32>(32u));
    var var_3 = Struct_3(Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(85706u, 87561u, global1.x), vec3<u32>(0u, global1.x, 70831u)) | ~(vec3<u32>(34124u, global1.x, 4294967295u) ^ vec3<u32>(global1.x, global1.x, global1.x))), Struct_2(global1.x << ((global1.x >> (1u % 32u)) % 32u)), select(~vec2<u32>(global1.x, _wgslsmith_div_u32(global1.x, global1.x)), ~vec2<u32>(517u, global1.x), vec2<bool>(all(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 6u)], global4[_wgslsmith_index_u32(global1.x, 6u)], true)), global4[_wgslsmith_index_u32(~global1.x << (~global1.x % 32u), 6u)])));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a >> (global1.x % 32u)), var_3.b.a, 35178i, _wgslsmith_dot_vec2_u32(~select(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 1u), var_3.a.a.xz), ~var_3.c, !vec2<bool>(global4[_wgslsmith_index_u32(7603u, 6u)], false)), vec2<u32>(var_3.a.a.x, 1u) | var_3.c), ~min(abs(vec4<u32>(var_3.a.a.x, var_3.c.x, 68694u, 48660u) | vec4<u32>(var_3.b.a, global1.x, global1.x, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 70505u, global1.x, var_3.a.a.x) | vec4<u32>(global1.x, global1.x, 4294967295u, 16120u), ~vec4<u32>(var_3.b.a, var_3.c.x, 16111u, 24762u), vec4<u32>(var_3.b.a, 24137u, 38694u, 70996u))));
}

