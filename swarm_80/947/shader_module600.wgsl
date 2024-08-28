struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -955f;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> vec4<u32> {
    global1 = array<Struct_1, 9>();
    global2 = array<Struct_1, 22>();
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -126f), 490f)) - _wgslsmith_f_op_f32(abs(703f))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1048f, -517f, -2244f, 464f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1387f, 1059f, 1417f, -915f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(721f, 323f, -569f, 750f) - vec4<f32>(417f, 985f, -1549f, -979f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    global1 = array<Struct_1, 9>();
    return vec4<u32>(_wgslsmith_mult_u32(1u << ((_wgslsmith_sub_u32(29170u, arg_1) << ((44219u << (0u % 32u)) % 32u)) % 32u), 5024u), 4294967295u, max(arg_1, arg_0.a.x), 110427u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-392f, -804f));
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)))) - -1040f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-214f, 1024f)) - 638f), 1000f)));
    let var_2 = _wgslsmith_mod_u32(~select(~23558u, u_input.d, !arg_2.x), _wgslsmith_mod_u32(u_input.c, 48404u)) & u_input.d;
    var var_3 = ~_wgslsmith_add_vec4_u32((func_3(global2[_wgslsmith_index_u32(29920u, 22u)], var_2, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec2<bool>(arg_2.x, arg_2.x)) & ~vec4<u32>(24552u, 17225u, u_input.a, 4294967295u)) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(u_input.a, u_input.a, var_2, u_input.c)), ~vec4<u32>(var_2 ^ 902u, ~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(var_2, var_2)), abs(17807u)));
    return -_wgslsmith_sub_i32(arg_1.x, -25962i);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(16072u, 9u)];
    let var_1 = _wgslsmith_f_op_f32(-543f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = any(vec3<bool>(true, true, !(true != (u_input.e == var_0.b))));
    let var_3 = Struct_1(vec2<u32>(~77446u, _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(24634u, u_input.c, 47913u)), vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.a, arg_0.a), ~var_0.a.x, u_input.a))), func_2(vec2<bool>(true, false), vec2<i32>(var_0.b & u_input.e, arg_0.b | ~u_input.e), !vec3<bool>(false, select(true, false, false), true)));
    let var_4 = var_3;
    return Struct_1(vec2<u32>(u_input.b, abs(var_4.a.x)), max(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(var_3.b, 1i), -u_input.e), countOneBits(var_3.b)), reverseBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(50575i, -1i), var_4.b))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    global1 = array<Struct_1, 9>();
    let var_0 = global2[_wgslsmith_index_u32(arg_0.a.x, 22u)];
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~20293u, _wgslsmith_mult_u32(reverseBits(_wgslsmith_div_u32(19330u, var_0.a.x)), arg_0.a.x)), 22u)];
    global0 = 619f;
    var var_2 = _wgslsmith_mult_u32(var_1.a.x, ~func_3(arg_0, 1u, select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec2<bool>(true, select(false, true, false))).x);
    return ~max(abs(func_3(func_1(Struct_1(vec2<u32>(1u, var_1.a.x), 2147483647i)), 18427u | var_0.a.x, vec4<bool>(true, true, true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))).x), ~(~(~arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 9>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~(~select(4294967295u, u_input.a, true)), 42473u), _wgslsmith_div_u32(4294967295u, ~(u_input.c << (37332u % 32u)) << (u_input.a % 32u))), 22u)];
    var var_1 = func_4(func_1(Struct_1(max(firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)), var_0.a & vec2<u32>(var_0.a.x, 434u)), var_0.b)), -2042f, 927f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-306f - -1658f))))));
    var var_2 = firstTrailingBit(vec3<i32>(max(13414i, -2147483647i), _wgslsmith_mult_i32(var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(58680i, var_0.b, -10233i), vec3<i32>(1i, -1i, 54645i))), -15172i)) ^ vec3<i32>(u_input.e | (u_input.e | select(u_input.e, -8394i, false)), (var_0.b >> (~u_input.a % 32u)) << (4294967295u % 32u), _wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(u_input.e, var_0.b, 2147483647i)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, u_input.e, 2147483647i), vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(var_0.b, u_input.e, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(~var_0.a)), ~_wgslsmith_mod_u32(u_input.c, _wgslsmith_sub_u32(u_input.b, 1u) ^ _wgslsmith_sub_u32(u_input.c, 20381u)));
}

