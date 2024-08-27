struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-219f, 1716f), -1000f)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1172f)), -1151f)), 1f);
    var_2 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(floor(var_1.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_2.x) * var_1.x), 184f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-881f * var_2.x))));
    let var_3 = Struct_1(68523u);
    return var_1;
}

fn func_1() -> f32 {
    var var_0 = max(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, ~91568u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a ^ u_input.a, 0u), vec2<u32>(9152u, ~u_input.a))), ~0u);
    let var_1 = _wgslsmith_f_op_vec2_f32(func_2());
    var var_2 = Struct_1(u_input.a);
    var_2 = Struct_1(u_input.a);
    var_0 = var_2.a;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f * 1460f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1732f - var_1.x)), false)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = abs(vec3<u32>(1u, _wgslsmith_mult_u32(8009u, 39175u), arg_1.a));
    let var_1 = ~(~(1i >> (u_input.a % 32u)));
    let var_2 = _wgslsmith_clamp_u32(firstTrailingBit(abs(arg_0)), u_input.a, 70410u);
    var var_3 = Struct_1((countOneBits(arg_0) >> (~_wgslsmith_sub_u32(u_input.a, 31496u) % 32u)) >> (45786u % 32u));
    var_3 = arg_1;
    return abs(_wgslsmith_dot_vec2_i32(abs(max(select(vec2<i32>(20725i, u_input.b), vec2<i32>(u_input.b, 1i), false), abs(vec2<i32>(var_1, u_input.b)))), (vec2<i32>(var_1, u_input.b) & ~vec2<i32>(-15163i, u_input.b)) | _wgslsmith_sub_vec2_i32(select(vec2<i32>(-1i, u_input.b), vec2<i32>(var_1, -54081i), vec2<bool>(false, true)), vec2<i32>(-1i, 2147483647i) | vec2<i32>(u_input.b, u_input.b))));
}

fn func_4(arg_0: i32) -> vec2<bool> {
    var var_0 = vec4<i32>(u_input.b, 31305i, arg_0, i32(-1i) * -77651i);
    return vec2<bool>(!select(any(vec4<bool>(true, true, true, true)), true, true), !(var_0.x == (-1i ^ arg_0)) & (all(vec3<bool>(true, false, false)) | (firstLeadingBit(u_input.a) < (u_input.a >> (u_input.a % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(933f, 1000f, 1000f, -2528f), vec4<f32>(-1083f, -310f, -874f, -907f)) - vec4<f32>(_wgslsmith_div_f32(290f, -114f), 1001f, 459f, _wgslsmith_f_op_f32(-127f - -1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(852f, -1689f, -999f, -1000f))), vec4<f32>(_wgslsmith_div_f32(-773f, 1940f), -906f, -1942f, _wgslsmith_div_f32(1000f, 742f))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(814f - _wgslsmith_f_op_f32(var_0.x + -1047f)) * _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(round(295f))))), _wgslsmith_f_op_f32(ceil(-1000f)), 891f) * vec4<f32>(174f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x)) - _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(348f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-377f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 757f, var_0.x) - vec4<f32>(var_0.x, -1383f, var_0.x, 1384f))))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1760f, -1076f)), _wgslsmith_f_op_f32(-var_0.x), var_0.x), vec4<bool>(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), true, true, !all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))))));
    let var_1 = select(vec2<bool>(false, all(vec2<bool>(true, true))), select(func_4(func_3(4294967295u, Struct_1(u_input.a)) >> (~u_input.a % 32u)), func_4(12295i), select(vec2<bool>(true, true), vec2<bool>(var_0.x >= var_0.x, true), func_4(_wgslsmith_div_i32(u_input.b, -46084i)).x)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) != abs(1u), true)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-942f, -196f, 899f, -3121f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-761f, var_0.x, -661f, var_0.x) + vec4<f32>(160f, 315f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1262f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.x, var_0.x, -490f)), vec4<f32>(var_0.x, 807f, -1494f, -1448f), u_input.a > 23059u)), var_1.x & true)), !(!var_1.x))));
    var var_2 = false & (-2279i != u_input.b);
    var_2 = !var_1.x;
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(11469i, u_input.b, ~(-25695i), -_wgslsmith_div_i32(-56753i, 1i)), -max(~vec4<i32>(10786i, u_input.b, u_input.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-2147483647i, u_input.b, 42496i, u_input.b)))), _wgslsmith_mult_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -4163i, -1i, 1i), vec4<i32>(12537i, u_input.b, 28021i, u_input.b), firstLeadingBit(vec4<i32>(-22302i, -1i, u_input.b, u_input.b))), select(vec4<i32>(-58674i, abs(-6638i), ~u_input.b, _wgslsmith_clamp_i32(-2147483647i, u_input.b, u_input.b)), reverseBits(firstLeadingBit(vec4<i32>(u_input.b, 42632i, 12134i, 1i))), true)), max(_wgslsmith_div_i32(-u_input.b, 59232i), abs(_wgslsmith_clamp_i32(1i, -12722i, 1i))) ^ (reverseBits(u_input.b | u_input.b) << (~4294967295u % 32u)), u_input.a);
}

