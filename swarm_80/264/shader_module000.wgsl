struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = 62861u;
    var_0 = ~34244u;
    var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(0u, 0u, 28468u, 4294967295u)), ~vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(4294967295u, 45267u, 41798u, 46595u), vec4<u32>(52873u, 1u, 45519u, 4294967295u), false))), ~vec4<u32>(75009u, ~3162u, 4697u, ~1u) & (~(~vec4<u32>(4294967295u, 15315u, 25885u, 4294967295u)) ^ reverseBits(select(vec4<u32>(19745u, 4294967295u, 4294967295u, 3997u), vec4<u32>(6193u, 19195u, 12360u, 21965u), false))));
    let var_1 = _wgslsmith_f_op_f32(trunc(-722f));
    let var_2 = abs(-arg_1.b.wwz);
    return ~(~abs(vec3<u32>(1u, 1u, 1u)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 17808u), 36856u, 5892u), func_2(-vec2<i32>(1i, u_input.a), Struct_1(vec2<f32>(-498f, 275f), vec4<i32>(u_input.a, -26584i, u_input.a, u_input.a)))) << (33604u % 32u)) | ~(~1u);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1080f)))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-var_1.a));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(506f, var_1.a)), -543f, true))));
    var_1 = Struct_2(var_1.a);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-142f, -1000f))))), -_wgslsmith_mod_vec4_i32(-countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), firstTrailingBit(countOneBits(vec4<i32>(u_input.a, 0i, 1i, u_input.a)))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(-984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    let var_1 = Struct_3(_wgslsmith_mod_vec3_i32(~(vec3<i32>(-7037i, u_input.a, u_input.a) ^ vec3<i32>(-80i, u_input.a, u_input.a)), -(~vec3<i32>(-35091i, u_input.a, 6072i))) & vec3<i32>(u_input.a >> (_wgslsmith_sub_u32(2329u, 0u) % 32u), _wgslsmith_sub_i32(u_input.a, ~u_input.a), u_input.a), vec3<u32>(~max(~1u, 70105u), ~reverseBits(1u), _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 24727u), vec2<u32>(43947u, 4294967295u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 47848u, 0u, 0u), vec4<u32>(37421u, 32815u, 1u, 72603u)))), true);
    var var_2 = -(~(abs(abs(vec4<i32>(25851i, u_input.a, -18155i, 0i))) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, 23858u), vec4<u32>(21988u, var_1.b.x, 1u, 12495u)), vec4<u32>(63361u, var_1.b.x, var_1.b.x, var_1.b.x), vec4<u32>(0u, 1u, 73315u, 4294967295u)) % vec4<u32>(32u))));
    var var_3 = Struct_3(countOneBits(_wgslsmith_div_vec3_i32((var_2.xzw << (var_1.b % vec3<u32>(32u))) | vec3<i32>(43526i, -2147483647i, 45423i), var_1.a)), var_1.b, _wgslsmith_f_op_f32(-arg_0) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(var_0)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1689f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-631f - 1598f) * _wgslsmith_f_op_f32(f32(-1f) * -1079f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f + var_0)))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) - _wgslsmith_div_f32(-868f, var_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1186f, var_0) - vec3<f32>(-224f, var_0, var_0)))))));
    return -897f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.a >= u_input.a, true), any(vec2<bool>(false, false))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))))));
    var var_2 = func_1(vec4<bool>(true, !(var_1.a > _wgslsmith_f_op_f32(-var_0.a.x)), var_0.b.x >= (min(var_0.b.x, -16600i) ^ ~var_0.b.x), true));
    var_2 = var_0;
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1728f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -869f) * -1016f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1105f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f * _wgslsmith_f_op_f32(var_2.a.x * 989f)))));
}

