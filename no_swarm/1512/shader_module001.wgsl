struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: array<vec4<i32>, 26>;

var<private> global3: array<vec2<i32>, 20>;

var<private> global4: array<f32, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global1 = array<vec2<bool>, 13>();
    var var_0 = ~(~(~76932u));
    var var_1 = ~(u_input.a & (_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 0i), ~vec2<i32>(arg_0.x, u_input.a.x), -vec2<i32>(8127i, arg_0.x)) | u_input.b));
    let var_2 = Struct_4(global4[_wgslsmith_index_u32(u_input.e, 23u)], all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))));
    global3 = array<vec2<i32>, 20>();
    return min(~(1u | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.e, 0u), ~vec4<u32>(u_input.c, u_input.c, 4294967295u, 3113u))), ~u_input.e);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(705f * _wgslsmith_div_f32(global4[_wgslsmith_index_u32(99725u ^ arg_2.x, 23u)], _wgslsmith_div_f32(global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(arg_2.x, 23u)]))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-989f)) + -1576f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(38984u, 23u)], global4[_wgslsmith_index_u32(arg_2.x, 23u)]))), true))), -100f));
    var var_1 = ~vec4<u32>(~(~_wgslsmith_div_u32(arg_2.x, u_input.c)), 22828u, max(firstLeadingBit(1u), u_input.c), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_2.xzx), ~vec3<u32>(u_input.c, 8706u, 1u)));
    global0 = array<Struct_2, 21>();
    var var_2 = Struct_3(var_1.x, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -214f), -1010f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, var_0, 1000f), vec4<f32>(var_0, 1159f, -351f, global4[_wgslsmith_index_u32(u_input.c, 23u)]), true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2191f, var_0, -293f, 1254f), vec4<f32>(-619f, 1000f, var_0, -377f)))))), vec4<f32>(_wgslsmith_f_op_f32(-162f + _wgslsmith_f_op_f32(round(-434f))), var_0, _wgslsmith_f_op_f32(-2225f + _wgslsmith_f_op_f32(max(var_0, -1035f))), 856f), 77816u), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1160f), _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(floor(-631f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4[_wgslsmith_index_u32(var_1.x, 23u)], -1578f, -1702f, var_0), vec4<f32>(global4[_wgslsmith_index_u32(arg_2.x, 23u)], var_0, global4[_wgslsmith_index_u32(0u, 23u)], -1062f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -203f, 1000f, var_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(1u, 23u)], var_0, var_0, -539f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1126f, 1496f, global4[_wgslsmith_index_u32(arg_2.x, 23u)], global4[_wgslsmith_index_u32(var_1.x, 23u)]) + vec4<f32>(var_0, -779f, -1482f, var_0)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0, 845f, -689f) * vec4<f32>(global4[_wgslsmith_index_u32(59712u, 23u)], 1003f, var_0, var_0)), _wgslsmith_div_vec4_f32(vec4<f32>(-496f, -506f, 1000f, 433f), vec4<f32>(1381f, global4[_wgslsmith_index_u32(arg_2.x, 23u)], 1000f, 689f))))), ~(~(~0u))), ((countOneBits(-1i) & (1i & u_input.d.x)) & arg_1.x) << (_wgslsmith_clamp_u32(arg_2.x, abs(abs(56641u)), ~var_1.x & arg_2.x) % 32u));
    var var_3 = Struct_4(106f, true);
    return 36398u;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<u32>) -> bool {
    global4 = array<f32, 23>();
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(arg_0.x << (~u_input.c % 32u)), _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.e, arg_2.x, 26542u), vec4<u32>(arg_1, u_input.e, arg_1, 0u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, u_input.e, 1u), vec3<u32>(1u, 26169u, 4294967295u)), arg_2.x, firstTrailingBit(arg_2.x), ~40105u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 1u), arg_0.x), ~(arg_0.x | arg_0.x))), 23u)] <= 219f;
    let var_1 = Struct_2(vec3<f32>(-384f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-478f - global4[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(arg_0.x, 23u)], 934f)) * _wgslsmith_div_f32(-350f, global4[_wgslsmith_index_u32(u_input.c, 23u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(183f + global4[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(arg_0.x, 23u)]))))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(arg_2.x, 23u)], global4[_wgslsmith_index_u32(u_input.e, 23u)])) - vec2<f32>(-700f, 1326f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(arg_0.x, 23u)])), _wgslsmith_f_op_f32(-644f - -473f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_2.x, 23u)]), -1578f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1532f)), -2492f, -928f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_0.x, 23u)] + -427f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2222f, global4[_wgslsmith_index_u32(4294967295u, 23u)], -514f, global4[_wgslsmith_index_u32(12063u, 23u)]))), u_input.e & arg_2.x), _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(23346u, arg_2.x | (u_input.c >> (arg_2.x % 32u))), 23u)])));
    global2 = array<vec4<i32>, 26>();
    global1 = array<vec2<bool>, 13>();
    return var_0;
}

fn func_2(arg_0: vec4<i32>) -> vec4<bool> {
    var var_0 = all(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(801f * -898f), select(true, false, any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false))));
    global2 = array<vec4<i32>, 26>();
    let var_2 = Struct_4(_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 23u)])), global4[_wgslsmith_index_u32(max(u_input.e, u_input.e) << (firstTrailingBit(94506u) % 32u), 23u)])))), func_4(vec3<u32>(u_input.c, ~u_input.c, u_input.c), ~1u, vec3<u32>(~func_3(vec4<i32>(-2594i, -1i, u_input.b.x, arg_0.x), vec4<i32>(0i, 1i, arg_0.x, u_input.d.x), vec4<u32>(1u, u_input.e, u_input.e, 43474u)), u_input.c, ~4294967295u)));
    global0 = array<Struct_2, 21>();
    return select(select(vec4<bool>(true, var_1.b, var_1.b, var_1.b), !(!vec4<bool>(true, true, true, var_1.b)), !(!any(vec4<bool>(var_1.b, var_1.b, var_2.b, false)))), vec4<bool>(select(true, var_1.b, true | (var_2.b & var_1.b)), var_2.b, any(global1[_wgslsmith_index_u32(16230u, 13u)]), false), select(select(vec4<bool>(!var_1.b, arg_0.x > -2147483647i, true, true), select(select(vec4<bool>(var_1.b, var_1.b, var_1.b, var_2.b), vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), false), vec4<bool>(true, true, true, true), !vec4<bool>(var_2.b, var_2.b, var_2.b, false)), var_2.b), select(!vec4<bool>(var_2.b, var_2.b, false, true), !(!vec4<bool>(var_2.b, false, var_1.b, true)), !var_1.b), vec4<bool>(any(vec3<bool>(true, false, true)), all(!vec3<bool>(true, var_2.b, false)), var_2.b, all(select(vec4<bool>(false, false, var_1.b, var_1.b), vec4<bool>(var_2.b, var_2.b, true, var_2.b), var_2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 20>();
    global2 = array<vec4<i32>, 26>();
    let var_0 = global4[_wgslsmith_index_u32(1u, 23u)] <= _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(select(8923u, func_1(reverseBits(global2[_wgslsmith_index_u32(4294967295u, 26u)])), true), 23u)]));
    let var_1 = !select(true, var_0, !var_0);
    let var_2 = select(select(!(!(!vec4<bool>(var_0, var_0, var_1, true))), !vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 23u)] >= -2272f, true, !var_0, true), true), select(!select(!vec4<bool>(var_0, var_1, false, true), vec4<bool>(var_1, var_0, false, var_1), select(vec4<bool>(true, var_0, var_1, true), vec4<bool>(var_1, var_1, false, var_0), vec4<bool>(var_0, true, true, true))), func_2((vec4<i32>(u_input.a.x, u_input.d.x, u_input.b.x, -64437i) ^ global2[_wgslsmith_index_u32(u_input.c, 26u)]) ^ -global2[_wgslsmith_index_u32(u_input.e, 26u)]), any(!(!global1[_wgslsmith_index_u32(u_input.c, 13u)]))), !var_0 & select(var_0, true, select(all(vec3<bool>(true, var_1, false)), var_0, true)));
    let var_3 = _wgslsmith_f_op_f32(sign(-1097f));
    global0 = array<Struct_2, 21>();
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1299f) + var_3) - 577f), -2225f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)));
}

