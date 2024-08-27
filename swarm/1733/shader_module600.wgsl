struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5>;

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(10518i, 1i), vec2<i32>(44376i, -1i), vec2<i32>(-683i, 2147483647i), vec2<i32>(-33615i, i32(-2147483648)), vec2<i32>(1i, -5877i), vec2<i32>(-1i, 14316i), vec2<i32>(1i, 0i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(~_wgslsmith_mult_i32(arg_0.b.x, arg_2.b.x)), -u_input.e), firstTrailingBit(-_wgslsmith_dot_vec4_i32(u_input.a, max(u_input.d, u_input.d))), 0i, _wgslsmith_mult_i32(arg_0.b.x >> (0u % 32u), firstLeadingBit(_wgslsmith_mult_i32(1i >> (arg_2.e % 32u), arg_2.b.x))));
    let var_1 = arg_0;
    let var_2 = vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(var_0.wx, var_0.xy), max(-9788i, select(-var_1.b.x ^ ~(-2147483647i), 1i, true)));
    global0 = array<vec4<u32>, 5>();
    global0 = array<vec4<u32>, 5>();
    return _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(abs(89826u), u_input.c, var_1.a, countOneBits(43539u))), vec4<u32>(arg_2.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_2.e, 0u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, var_1.a, var_1.e), vec3<u32>(0u, 92547u, 0u)), countOneBits(select(vec3<u32>(49915u, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), arg_3))), 0u, u_input.c));
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = Struct_1(u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b.x), vec3<u32>(28226u, u_input.c, 73540u)), ~vec3<u32>(17427u, u_input.c, 4294967295u)), max(func_3(Struct_1(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 7u)], arg_1, vec3<f32>(arg_1, arg_1, -323f), 72467u), arg_1, Struct_1(3628u, vec2<i32>(2147483647i, -2147483647i), -1537f, vec3<f32>(arg_1, 133f, 722f), u_input.b.x), false), 16634u), all(vec2<bool>(true, true))), 1u), 7u)], arg_1, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, 144f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(arg_1, -1386f, 700f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -736f, 905f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, -1056f, 1000f)), vec3<bool>(true, true, true)))))), ~(31222u & u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, var_0.c) * _wgslsmith_f_op_f32(select(-139f, arg_1, true)))))), _wgslsmith_f_op_f32(floor(437f))));
    let var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~(var_2.e >> (var_0.e % 32u)), countOneBits(17644u), 123u, max(4294967295u, min(4294967295u, 4294967295u))), min(abs(select(vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u), global0[_wgslsmith_index_u32(var_0.a, 5u)], vec4<bool>(false, true, false, true))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(1u, 5u)], vec4<u32>(var_0.e, 25914u, var_2.a, 22513u)), global0[_wgslsmith_index_u32(firstLeadingBit(0u), 5u)]))), _wgslsmith_div_vec2_i32(firstTrailingBit(select(-vec2<i32>(-12101i, -1i), var_0.b, all(vec2<bool>(false, false)))), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(1i, var_0.b.x)) ^ _wgslsmith_div_vec2_i32(u_input.d.wx, var_0.b))), var_0.d.x, var_0.d, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(u_input.c), firstLeadingBit(0u), 1u), ~(~vec3<u32>(var_2.a, 1u, 0u)))));
    let var_4 = Struct_1(~36144u, vec2<i32>(_wgslsmith_clamp_i32(max(reverseBits(var_2.b.x), 17423i), abs(var_2.b.x ^ u_input.e), -1i ^ arg_0), ~countOneBits(2147483647i) | ((2147483647i >> (var_2.e % 32u)) & ~var_0.b.x)), 426f, vec3<f32>(var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.c, -1049f)) - -1000f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(arg_1))))), _wgslsmith_f_op_f32(f32(-1f) * -844f)), _wgslsmith_mod_u32(4294967295u & ((69729u >> (u_input.b.x % 32u)) << (_wgslsmith_clamp_u32(26973u, 4294967295u, var_2.e) % 32u)), _wgslsmith_mod_u32(var_2.a, ~var_3.a)));
    return var_3.e;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    var var_0 = ~vec2<u32>(func_2(~u_input.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1929f)))), ~22395u);
    var var_1 = !select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec3<bool>(false, false, true))), vec2<bool>(true, true)), !select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), all(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), all(vec2<bool>(false, false)))));
    let var_2 = global0[_wgslsmith_index_u32(~firstLeadingBit(0u), 5u)];
    var_1 = vec2<bool>(any(!(!(!vec4<bool>(true, false, var_1.x, var_1.x)))), !(all(!vec3<bool>(var_1.x, true, var_1.x)) || false));
    let var_3 = Struct_1(~(~arg_0), vec2<i32>(u_input.d.x, firstLeadingBit(u_input.a.x)), 3543f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-124f, _wgslsmith_f_op_f32(-2057f * -210f), _wgslsmith_f_op_f32(-1272f * -894f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-189f, 2541f, 1000f))))), _wgslsmith_add_u32(reverseBits(var_0.x), ~(~(~23410u))));
    return !(!(!(!select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(true, false, var_1.x, false), vec4<bool>(true, true, var_1.x, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 399f;
    var var_1 = !(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), false));
    global1 = array<vec2<i32>, 7>();
    global0 = array<vec4<u32>, 5>();
    global1 = array<vec2<i32>, 7>();
    var_1 = func_1(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.e, u_input.d.x));
}

