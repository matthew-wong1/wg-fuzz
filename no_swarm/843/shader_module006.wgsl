struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: array<Struct_3, 6>;

var<private> global3: array<Struct_3, 32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    global3 = array<Struct_3, 32>();
    global3 = array<Struct_3, 32>();
    var var_0 = Struct_2(vec3<i32>(reverseBits(_wgslsmith_mult_i32(-13726i, u_input.d)), u_input.b, u_input.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, -1143f)))))));
    var var_1 = any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)]));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(74588u, firstLeadingBit(u_input.c.x)), u_input.c.xy);
    return 41663i;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> vec3<i32> {
    global2 = array<Struct_3, 6>();
    var var_0 = Struct_4(Struct_1(~countOneBits(global1[_wgslsmith_index_u32(~u_input.e, 20u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-523f)), -273f, 1000f)), vec3<bool>(false & global0[_wgslsmith_index_u32(u_input.a ^ u_input.c.x, 1u)], global0[_wgslsmith_index_u32(4294967295u << (firstLeadingBit(4294967295u) % 32u), 1u)], global0[_wgslsmith_index_u32(35246u, 1u)])));
    let var_1 = Struct_2(min(vec3<i32>(func_3(), abs(arg_0.x), arg_1), ~vec3<i32>(~arg_0.x, u_input.b, min(-1i, arg_0.x))), var_0.a.b.x);
    var var_2 = Struct_4(Struct_1(var_1.a, vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(985f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.b.x - 2377f)))), select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)], !global0[_wgslsmith_index_u32(u_input.a, 1u)]), select(var_0.a.c, vec3<bool>(true, var_0.a.c.x, false), var_0.a.c.x | false))));
    var var_3 = var_2.a;
    return ~var_2.a.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> f32 {
    global3 = array<Struct_3, 32>();
    var var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(5100i, arg_2.x, arg_2.x), ~(~firstTrailingBit(global1[_wgslsmith_index_u32(46675u, 20u)])), global1[_wgslsmith_index_u32(56318u, 20u)]), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(661f)))), 1282f), -1515f));
    global1 = array<vec3<i32>, 20>();
    global0 = array<bool, 1>();
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_0.a, ~var_0.a, vec3<i32>(u_input.b, 21967i, arg_2.x)), -func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(-19213i, -26657i), arg_2, vec2<i32>(1i, u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(9462i, 0i, -10295i, -2147483647i), vec4<i32>(-1i, 20114i, -1i, -16484i)))), 405f);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(452f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-292f - -1172f), -1195f)) + 1222f)));
    var_0 = _wgslsmith_f_op_f32(func_1(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(73118u, 1u)], all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)])))), select(vec3<bool>(~(-2147483647i) == u_input.d, false, true), select(vec3<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 1u)], true, true, global0[_wgslsmith_index_u32(21565u, 1u)])), !global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(55180u, 1u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 1u)])), all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], true, global0[_wgslsmith_index_u32(0u, 1u)]))), global0[_wgslsmith_index_u32(57399u, 1u)]), ~select(vec2<i32>(-1i, 7582i), max(vec2<i32>(2147483647i, -15437i), vec2<i32>(-1i, -808i)), true)));
    var var_1 = -2147483647i;
    global1 = array<vec3<i32>, 20>();
    global2 = array<Struct_3, 6>();
    let var_2 = -899f;
    var var_3 = Struct_4(Struct_1(vec3<i32>(-1i) * -vec3<i32>(0i, u_input.b, u_input.d), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(-1000f + 1696f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-737f, 532f))), _wgslsmith_f_op_f32(-596f - _wgslsmith_f_op_f32(var_2 + 766f))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(45095u, 1u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(28736u, 1u)], true), false), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(48343u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], true)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, abs(vec2<i32>(_wgslsmith_dot_vec3_i32(~var_3.a.a, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 23841i, 2228i), vec3<i32>(var_3.a.a.x, -2147483647i, var_3.a.a.x))), func_2(vec2<i32>(2147483647i, var_3.a.a.x), min(var_3.a.a.x, var_3.a.a.x)).x)));
}

