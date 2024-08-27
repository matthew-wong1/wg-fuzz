struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 8>();
    let var_0 = ~abs(~(-countOneBits(vec3<i32>(u_input.c, u_input.a, u_input.b))));
    var var_1 = -21582i;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(221f, -364f, -1307f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(302f, 744f))), 129f))));
    var var_3 = Struct_1(51218i, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 5871i, ~_wgslsmith_sub_i32(1i, u_input.b), -1215i), vec4<i32>(var_0.x, -9934i, var_0.x, var_0.x)), vec4<bool>(!(!all(vec2<bool>(false, true))), true, true & any(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(round(-906f)), any(!vec4<bool>(true, all(vec4<bool>(true, false, true, true)), false, any(vec2<bool>(true, true)))));
    return Struct_1(-select(-42368i, u_input.a, !(!var_3.c.x)), vec4<i32>(-22520i, -2147483647i, var_3.a, _wgslsmith_clamp_i32(firstTrailingBit(var_0.x), countOneBits(var_3.a), _wgslsmith_mult_i32(-16090i, var_0.x))) | (-(~var_3.b) & _wgslsmith_mult_vec4_i32(var_3.b, firstLeadingBit(vec4<i32>(var_0.x, -2147483647i, -1i, -2147483647i)))), !(!var_3.c), -1648f, false);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    var var_0 = func_2();
    return 0i;
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(Struct_1(~arg_0.a | (max(u_input.c, 8385i) << (1u % 32u)), vec4<i32>(_wgslsmith_div_i32(select(1i, arg_0.a, arg_0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, arg_0.b.x, -2147483647i), vec4<i32>(-78449i, 45303i, arg_0.a, arg_0.a))), arg_0.b.x, ~u_input.b, -7659i), !func_2().c, arg_0.d, arg_0.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.d, 763f, 1104f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-525f, -336f, 525f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.d, arg_0.d, arg_0.d)))))), func_2().e, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~1u, 8u)], _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28332u, 8u)], 8u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(94591u, 8u)], 8u)], 0u, global0[_wgslsmith_index_u32(1u, 8u)]), vec3<u32>(global0[_wgslsmith_index_u32(36198u, 8u)], 4294967295u, 0u)))), 8u)], 8u)], 8u)] >> ((global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 8u)] ^ 43420u, 4294967295u), 8u)] >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(1u), 8u)], 8u)] % 32u)) % 32u));
    global0 = array<u32, 8>();
    let var_1 = Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.a.d)), -797f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.x - arg_0.d), _wgslsmith_f_op_f32(-672f + 1349f)))))), any(vec2<bool>(!arg_0.c.x, true)) || func_2().c.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(5152u, 0u, var_0.d, 4294967295u), ~vec4<u32>(global0[_wgslsmith_index_u32(8655u, 8u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31046u, 8u)], 8u)], 8u)], 1u) & select(vec4<u32>(var_0.d, var_0.d, var_0.d, 48170u), vec4<u32>(1u, 4294967295u, 44828u, 0u), var_0.a.e)), firstTrailingBit(~(0u >> (var_0.d % 32u)))), 8u)]);
    let var_2 = Struct_1(49816i, ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(var_0.a.b, var_1.a.b) | arg_0.b, ~var_0.a.b), vec4<bool>(arg_0.d == var_1.b.x, true, all(vec4<bool>(var_1.a.e, true, !var_0.a.e, select(false, var_1.a.e, true))), !(!(!arg_0.e))), arg_0.d, _wgslsmith_mult_u32(var_0.d, 4294967295u) <= global0[_wgslsmith_index_u32(9661u, 8u)]);
    global0 = array<u32, 8>();
    return any(var_1.a.c.xxy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.c, u_input.b, u_input.b, -1i) ^ vec4<i32>(2147483647i, u_input.a, -1i, u_input.c)), vec4<i32>(-2147483647i, u_input.c, -2147483647i, abs(-21602i))) | u_input.c, -vec4<i32>(func_1(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), u_input.a, -2639i, u_input.a), !func_2().c, -533f, func_3(Struct_1(u_input.b, firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) ^ abs(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), true), -273f, select(true, true, true))));
    global0 = array<u32, 8>();
    var var_1 = _wgslsmith_mult_vec4_i32(select(abs(var_0.b), var_0.b, vec4<bool>(var_0.e, var_0.e, !(var_0.d < var_0.d), true)), reverseBits(vec4<i32>(~var_0.a, _wgslsmith_dot_vec3_i32(var_0.b.wxx, vec3<i32>(-2147483647i, 1i, 6362i)) << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)] % 32u), -39310i, abs(2147483647i))));
    var_1 = var_0.b | ~vec4<i32>(i32(-1i) * -var_1.x, ~(-2147483647i), ~25724i, -_wgslsmith_dot_vec4_i32(var_0.b, var_0.b));
    global0 = array<u32, 8>();
    let var_2 = Struct_1(12869i, ~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_1.x, var_1.x), u_input.b & u_input.a, _wgslsmith_dot_vec3_i32(var_0.b.www, var_1.zwz), _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(var_0.b.x, -15250i, var_0.b.x, 1i))), -var_0.b), var_0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d))), ((_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(8564u, 8u)], 49119u) >> (_wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(1u, 8u)]) % 32u)) < global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(35704u, 8u)], 53318u, global0[_wgslsmith_index_u32(0u, 8u)]), vec3<u32>(0u, 0u, 72097u)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(0u, 8u)])), 8u)]) | !(-2147483647i < var_0.b.x));
    var_0 = var_2;
    let var_3 = Struct_1(2666i, -(vec4<i32>(var_0.b.x >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1242u, 8u)], 8u)], 8u)] % 32u), -34477i, _wgslsmith_clamp_i32(-2147483647i, -25431i, -2147483647i), max(var_0.b.x, u_input.c)) >> (vec4<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55616u, 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50628u, 8u)], 8u)], global0[_wgslsmith_index_u32(1u, 8u)]), global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(89060u, 8u)]), 8u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 4294967295u) % vec4<u32>(32u))), var_2.c, _wgslsmith_f_op_f32(-1046f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(340f, -178f)), _wgslsmith_f_op_f32(floor(-628f)))), var_2.c.x);
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(25878u, 2147483647i, var_0.d, ~countOneBits(abs(_wgslsmith_div_vec4_u32(vec4<u32>(25005u, global0[_wgslsmith_index_u32(var_4, 8u)], 1u, 23209u), vec4<u32>(28830u, 4294967295u, var_4, 37010u)))), var_3.d);
}

