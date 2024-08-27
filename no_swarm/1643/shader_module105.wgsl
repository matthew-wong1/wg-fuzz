struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(arg_2);
    global0 = array<i32, 25>();
    var var_1 = u_input.a.zxy;
    global0 = array<i32, 25>();
    let var_2 = !arg_2.a;
    return ~(i32(-1i) * -3959i);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    let var_0 = countOneBits(-u_input.a.zy);
    var var_1 = !all(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false))));
    let var_2 = vec2<u32>(arg_0 >> ((firstLeadingBit(arg_0) << (countOneBits(0u) % 32u)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(19299u, arg_0, 12698u), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, arg_0, 0u), ~vec3<u32>(0u, arg_0, 8814u)))) | ~(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_0), firstLeadingBit(vec2<u32>(arg_0, 12341u))));
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(select(~vec3<u32>(4294967295u, arg_0, arg_0), ~vec3<u32>(var_2.x, 1u, 4294967295u), var_2.x >= 41987u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0, 2986u) ^ vec3<u32>(arg_0, arg_0, var_2.x), ~vec3<u32>(66985u, 1u, arg_0))), _wgslsmith_mult_vec3_u32(~reverseBits(vec3<u32>(arg_0, 32443u, 4294967295u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(49326u, 4294967295u, 1u), vec3<u32>(var_2.x, arg_0, arg_0))) ^ (~(~vec3<u32>(var_2.x, arg_0, arg_0)) | vec3<u32>(8922u, 0u, abs(var_2.x))));
    var_1 = max(global0[_wgslsmith_index_u32(1u, 25u)], -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(37495u, arg_0, var_2.x), vec3<u32>(0u, var_2.x, 0u)), 25u)] & -17513i) > -10782i;
    return _wgslsmith_mult_u32(~(~abs(var_2.x)), 77611u);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_1 {
    global0 = array<i32, 25>();
    let var_0 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 0u)), vec4<u32>(_wgslsmith_add_u32(0u, 0u), ~88723u, arg_2.x, arg_2.x)) >> (0u % 32u);
    let var_1 = min(u_input.a.x, arg_1);
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    return Struct_1(all(!vec3<bool>(true, arg_0.a.a, true)) & arg_3.x);
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    global0 = array<i32, 25>();
    let var_0 = ~0u;
    global0 = array<i32, 25>();
    let var_1 = func_4(Struct_2(Struct_1(false)), firstTrailingBit(func_2(100f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(670f, 637f))), Struct_1(select(true, false, false)))), vec3<u32>(~1u, ~((var_0 ^ var_0) & 4294967295u), func_3(_wgslsmith_add_u32(var_0, var_0 & var_0), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1324f, -1288f, 278f), vec3<f32>(-1660f, 1545f, -2046f))))))), vec2<bool>(true, all(vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-874f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1125f, -1101f)), _wgslsmith_f_op_f32(-394f + -568f), 557f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(999f, -423f, -269f, -181f)) + vec4<f32>(-509f, -1134f, -244f, -544f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(696f, 738f, -900f, 1000f)))))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1396f, _wgslsmith_f_op_f32(784f + _wgslsmith_f_op_f32(abs(1125f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1396f, 880f))), _wgslsmith_f_op_f32(step(-312f, _wgslsmith_f_op_f32(f32(-1f) * -260f))))));
    return -1059f;
}

fn func_5(arg_0: f32) -> bool {
    var var_0 = select(vec3<u32>(38780u, ~0u, abs(5007u)), ~firstTrailingBit(~max(vec3<u32>(0u, 71911u, 1u), vec3<u32>(69700u, 4294967295u, 1u))), select(vec3<bool>(true, all(vec3<bool>(true, true, true)) & true, true), !vec3<bool>(all(vec4<bool>(true, false, false, true)), true, 1i < u_input.a.x), false | all(vec3<bool>(true, true, true))));
    global0 = array<i32, 25>();
    let var_1 = func_4(Struct_2(Struct_1(true)), _wgslsmith_clamp_i32(u_input.a.x, -_wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(7186i, global0[_wgslsmith_index_u32(4294967295u, 25u)]))), firstLeadingBit(~8169i)), _wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 69658u, var_0.x) | vec3<u32>(var_0.x, var_0.x, 33770u), ~vec3<u32>(var_0.x, 30658u, var_0.x)), vec3<u32>(~4294967295u, var_0.x, _wgslsmith_div_u32(38544u, var_0.x)) | vec3<u32>(~46854u, ~var_0.x, ~var_0.x)), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), !all(vec2<bool>(false, true))), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), arg_0 == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -1715f) - _wgslsmith_div_f32(1000f, 576f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(896f, 609f, -121f, arg_0) - vec4<f32>(arg_0, arg_0, arg_0, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1418f, -455f, -281f, arg_0), vec4<f32>(-434f, 184f, -270f, arg_0))) - vec4<f32>(arg_0, arg_0, 1055f, -1000f))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(742f * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-110f)))))));
    global0 = array<i32, 25>();
    return _wgslsmith_f_op_f32(func_1(~vec3<i32>(~u_input.a.x, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.x, 25u)], -532i), i32(-1i) * -9225i))) > _wgslsmith_f_op_f32(f32(-1f) * -337f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-474f + -176f))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-464f, 325f) + -421f)) || true);
    global0 = array<i32, 25>();
    var var_1 = var_0;
    let var_2 = vec2<bool>(true, func_5(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(1i, 2147483647i, -88611i))), _wgslsmith_f_op_f32(f32(-1f) * -277f)), _wgslsmith_f_op_f32(-597f - 260f), any(!vec3<bool>(false, false, var_1.a))))));
    global0 = array<i32, 25>();
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global0[_wgslsmith_index_u32(~(~38059u), 25u)]), max(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, 166683u)), firstTrailingBit(min(vec2<u32>(47985u, 1u), vec2<u32>(2389u, 4294967295u)))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(148897u, 41375u), ~vec2<u32>(84930u, 0u)), vec2<u32>(1u, 1u))), ~vec4<u32>(4294967295u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 1u, 23230u), vec3<u32>(0u, 15480u, 58752u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 17125u), vec3<u32>(1u, 1u, 0u), vec3<u32>(12862u, 4294967295u, 18710u))), ~(~85614u), ~abs(0u)), ~(~vec3<u32>(1u, 1u, 1u))));
}

