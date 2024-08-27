struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, false, true, false, true, true, false, false, true, true, true, true, false, true, false, true, true, true, false, true, false);

var<private> global2: array<f32, 27>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    global2 = array<f32, 27>();
    var var_0 = Struct_3(vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(1u, 1u), reverseBits(34355u)) >> (0u % 32u), 27u)], global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(38673u, _wgslsmith_add_u32(0u, 15713u)), 27u)], _wgslsmith_f_op_f32(780f - _wgslsmith_f_op_f32(506f - 341f))), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(13474u, 38049u, 14476u), ~vec3<u32>(68550u, 5213u, 0u)), _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_div_u32(0u, 40409u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(40980u, 8315u), 994u))));
    let var_1 = arg_0;
    return 0u;
}

fn func_3(arg_0: u32, arg_1: bool) -> vec2<f32> {
    let var_0 = ~(i32(-1i) * -40454i);
    global1 = array<bool, 22>();
    var var_1 = true;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-487f)) - -907f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 27u)] - 869f) * _wgslsmith_f_op_f32(f32(-1f) * -1471f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 27u)] * 1979f)))))), -697f);
    global1 = array<bool, 22>();
    return vec2<f32>(var_2, _wgslsmith_div_f32(459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-849f - global2[_wgslsmith_index_u32(16434u, 27u)]))));
}

fn func_1() -> Struct_1 {
    global0 = ~18181i;
    let var_0 = vec3<bool>(true && (u_input.a.x <= _wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 1i))), global1[_wgslsmith_index_u32(~func_2(vec3<bool>(false, false, global1[_wgslsmith_index_u32(27184u, 22u)])) | ~reverseBits(abs(25974u)), 22u)], !(-_wgslsmith_sub_i32(u_input.a.x, 32132i) == ~u_input.a.x));
    let var_1 = firstLeadingBit(~(~(~vec4<u32>(1u, 1u, 1u, 1u))));
    var var_2 = Struct_3(vec3<f32>(2087f, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(~var_1.x, 27u)]), ~vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1.x, var_1.x), _wgslsmith_add_u32(6822u, var_1.x), func_2(var_0)), var_1.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_3(var_2.b.x, ~41433u > (var_1.x ^ var_2.b.x)));
    return Struct_1(min(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i, u_input.a.x, u_input.a.x)) & 0i, 8679i), firstLeadingBit(9795u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * global2[_wgslsmith_index_u32(var_1.x, 27u)]), 260f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-543f, var_3.x, var_2.a.x)))))) - vec3<f32>(255f, _wgslsmith_div_f32(1041f, _wgslsmith_f_op_f32(-var_3.x)), 1515f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    global1 = array<bool, 22>();
    var var_0 = u_input.a;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 27u)] - -1591f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c.x)))) * _wgslsmith_f_op_vec3_f32(-arg_0.d)), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.b, arg_0.b), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b, 149u), vec2<u32>(16511u, 3571u)))) | firstLeadingBit(~min(vec2<u32>(32602u, arg_0.b), vec2<u32>(4294967295u, arg_0.b))));
    global1 = array<bool, 22>();
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 22>();
    let var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11093u), vec2<u32>(0u, 9045u)) ^ 4294967295u), 73936u);
    let var_1 = ~(~_wgslsmith_clamp_u32(min(var_0, ~4294967295u), func_4(func_1(), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(var_0, 22u)])), 4294967295u));
    let var_2 = vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(-u_input.a.x, 38910i, 14272i)), 1i, ~u_input.a.x, -28943i);
    global1 = array<bool, 22>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]) * vec2<f32>(-469f, 730f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(var_1, 27u)], 218f), vec2<f32>(1295f, global2[_wgslsmith_index_u32(var_0, 27u)]), vec2<bool>(global1[_wgslsmith_index_u32(99317u, 22u)], global1[_wgslsmith_index_u32(var_1, 22u)])))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1979u, 27u)], global2[_wgslsmith_index_u32(var_0, 27u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0, 27u)], global2[_wgslsmith_index_u32(var_1, 27u)]) - vec2<f32>(150f, -1751f))))));
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 18021u), ~var_1, var_1) ^ _wgslsmith_clamp_u32(~var_1, ~7673u, 8933u), var_1) >> (((countOneBits(abs(13482u)) << (_wgslsmith_mod_u32(max(27910u, 31750u), 1u) % 32u)) << (1u % 32u)) % 32u);
    let var_5 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(5840u, false)).x))));
    var var_6 = select(!select(vec2<bool>(global1[_wgslsmith_index_u32(min(var_0, var_1), 22u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(~0u, 22u)]), false), !vec2<bool>(false, any(select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_4, 22u)], false, global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_1, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], true, true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_4, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)])))), select(vec2<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(true, global1[_wgslsmith_index_u32(var_4, 22u)]), global1[_wgslsmith_index_u32(4294967295u, 22u)]))), select(select(!vec2<bool>(global1[_wgslsmith_index_u32(10249u, 22u)], global1[_wgslsmith_index_u32(var_1, 22u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(28581u, 22u)]), vec2<bool>(true, true)), select(vec2<bool>(true, false), select(vec2<bool>(global1[_wgslsmith_index_u32(var_4, 22u)], global1[_wgslsmith_index_u32(var_1, 22u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(var_0, 22u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 22u)])), all(vec3<bool>(global1[_wgslsmith_index_u32(21631u, 22u)], global1[_wgslsmith_index_u32(var_1, 22u)], global1[_wgslsmith_index_u32(var_0, 22u)]))), !select(vec2<bool>(global1[_wgslsmith_index_u32(var_1, 22u)], global1[_wgslsmith_index_u32(var_0, 22u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_4, 22u)], global1[_wgslsmith_index_u32(75567u, 22u)]), vec2<bool>(true, true))), !global1[_wgslsmith_index_u32(~(~var_4), 22u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(var_0, 4294967295u), var_4), ~vec2<u32>(~29044u, func_4(Struct_1(var_2.x, var_1, vec4<f32>(global2[_wgslsmith_index_u32(26382u, 27u)], 2727f, var_5, var_5), vec3<f32>(1427f, 710f, 261f)), vec2<bool>(var_6.x, global1[_wgslsmith_index_u32(var_1, 22u)])))), i32(-1i) * -1i);
}

