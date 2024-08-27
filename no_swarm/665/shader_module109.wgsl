struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<bool, 25> = array<bool, 25>(true, false, false, false, false, true, false, true, false, true, false, true, true, true, false, true, true, false, false, true, false, true, false, false, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    return global0[_wgslsmith_index_u32(~0u, 30u)];
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    var var_0 = vec4<i32>(-17198i, -1i, -27618i, ~u_input.a);
    let var_1 = Struct_1(13639i, 925f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1592f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 30u)])), global0[_wgslsmith_index_u32(arg_1.x, 30u)], global0[_wgslsmith_index_u32(27925u, 30u)], global0[_wgslsmith_index_u32(arg_1.x << (arg_1.x % 32u), 30u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(637f, -1835f, 716f, global0[_wgslsmith_index_u32(61367u, 30u)])))), vec4<bool>(global1[_wgslsmith_index_u32(0u, 25u)], all(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(arg_1.x, 25u)], arg_0)), select(true, any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], arg_0, false, true)), false), true))));
    let var_2 = firstTrailingBit(vec4<u32>(~arg_1.x, ~4294967295u, ~arg_1.x, firstTrailingBit(~arg_1.x)));
    var var_3 = global1[_wgslsmith_index_u32(arg_1.x, 25u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(var_1.d.yxy * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1797f, 1000f, _wgslsmith_div_f32(-187f, var_1.b))) + _wgslsmith_f_op_vec3_f32(var_1.d.zxw + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(var_1.d.xzx)))))));
    return max(arg_1.x, ~_wgslsmith_mod_u32(~(~var_2.x), var_2.x));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~63498u, 1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(26157u, 26002u, 1u, 27899u), ~vec4<u32>(62499u, 4294967295u, 1u, 20604u)), 30u)], _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(28722u, 30u)], -530f, global0[_wgslsmith_index_u32(91900u, 30u)]), vec3<f32>(651f, 1528f, 1000f))))))))));
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(3586u, 60295u, 4294967295u), vec3<u32>(44269u, 3547u, 32512u)) | ~func_3(global1[_wgslsmith_index_u32(42505u, 25u)], vec4<u32>(39135u, 1u, 61640u, 32571u)), 0u, 4294967295u);
    global1 = array<bool, 25>();
    let var_2 = Struct_1(u_input.a, 797f, 162f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1461f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(29306u, 30u)]))), global0[_wgslsmith_index_u32(var_1.x, 30u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 30u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-205f, -735f, -110f, 1217f), vec4<f32>(-1118f, global0[_wgslsmith_index_u32(1u, 30u)], -1195f, global0[_wgslsmith_index_u32(var_1.x, 30u)]))))));
    let var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, var_1.x, 4294967295u) & vec4<u32>(69266u, var_1.x, 36984u, 19785u), countOneBits(vec4<u32>(var_1.x, var_1.x, var_1.x, 32919u))), vec4<u32>(var_1.x, ~var_1.x, ~var_1.x, 56311u), firstTrailingBit(firstLeadingBit(vec4<u32>(var_1.x, 4294967295u, var_1.x, 0u)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.x, 4294967295u), vec4<u32>(1u, var_1.x, 4294967295u, 0u), countOneBits(vec4<u32>(var_1.x, 0u, var_1.x, 0u)))), vec4<u32>(var_1.x, firstTrailingBit(var_1.x ^ 118757u), var_1.x, _wgslsmith_clamp_u32(abs(firstTrailingBit(var_1.x)), 123313u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_1.zx), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_1.xx)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1548f) * 1436f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(25769u, 30u)], 241f)), -367f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(58098u, 30u)], -815f, global0[_wgslsmith_index_u32(0u, 30u)]) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(29878u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)])) * vec4<f32>(-922f, global0[_wgslsmith_index_u32(0u, 30u)], 176f, global0[_wgslsmith_index_u32(93622u, 30u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(21562u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(29312u, 30u)], 191f) * vec4<f32>(1185f, -811f, global0[_wgslsmith_index_u32(52943u, 30u)], 1100f))))), vec4<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 25u)], false)), global1[_wgslsmith_index_u32(54818u, 25u)], global1[_wgslsmith_index_u32(reverseBits(~9285u), 25u)]))));
    let var_1 = var_0.c;
    var var_2 = Struct_1(u_input.a, _wgslsmith_div_f32(648f, global0[_wgslsmith_index_u32(~0u, 30u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(888f - 688f)))), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 0u, 21244u), _wgslsmith_mod_vec4_u32(vec4<u32>(40780u, 22058u, 28018u, 0u), vec4<u32>(22443u, 4294967295u, 1u, 1u))), 30u)] + _wgslsmith_f_op_f32(-934f - var_1)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))), -1928f, 975f));
    global0 = array<f32, 30>();
    let var_3 = _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(~_wgslsmith_mult_u32(0u, select(0u, 1u, global1[_wgslsmith_index_u32(4294967295u, 25u)])), 0u), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~_wgslsmith_div_u32(~var_3, ~firstLeadingBit(1u)), _wgslsmith_f_op_vec3_f32(-var_0.d.zxx), var_3, (-_wgslsmith_clamp_i32(30711i, u_input.a, var_0.a) ^ ~1i) ^ -1i);
}

