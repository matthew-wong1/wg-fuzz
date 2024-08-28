struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(564f, 573f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(102f, -1105f)), _wgslsmith_f_op_f32(412f - 290f)))), _wgslsmith_f_op_f32(select(-985f, 267f, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: u32) -> vec2<f32> {
    let var_0 = Struct_1(vec3<bool>(!all(vec2<bool>(arg_0.a.x, true)), true, true));
    let var_1 = Struct_1(arg_0.a);
    var var_2 = abs(7702u);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1636f))))))));
    var_2 = abs(u_input.d);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(214f, -411f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, var_3), vec2<f32>(-841f, -445f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(322f, var_3) - vec2<f32>(727f, var_3))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-731f, var_3))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-139f, var_3)), vec2<f32>(var_3, var_3)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) * vec2<f32>(-906f, var_3)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 865f)))));
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(abs(u_input.a), -2147483647i))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, arg_1, true), false)), _wgslsmith_div_i32(abs(u_input.b), -u_input.a), -(~vec3<i32>(u_input.b, u_input.b, u_input.b)), 1u))));
    var var_1 = reverseBits(~vec3<u32>(arg_0, 1u ^ firstTrailingBit(86306u), 0u));
    var_1 = ~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(~0u, reverseBits(var_1.x), arg_0)), ~(~(~vec3<u32>(34028u, var_1.x, var_1.x))));
    var_1 = _wgslsmith_clamp_vec3_u32(select(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(arg_0, var_1.x, arg_0) ^ vec3<u32>(25987u, 29231u, 1u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.x, arg_0), vec3<u32>(var_1.x, arg_0, u_input.d)), ~min(vec3<u32>(63262u, 62627u, arg_0), vec3<u32>(13592u, 37419u, 1u))), vec3<u32>(_wgslsmith_div_u32(u_input.d, 4294967295u) >> (~5479u % 32u), select(25073u, ~u_input.d, !arg_1), ~arg_0 >> (~var_1.x % 32u)), true), vec3<u32>(var_1.x, ~22111u, ~var_1.x), _wgslsmith_sub_vec3_u32(min(vec3<u32>(59996u, min(0u, u_input.d), ~0u), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_0, u_input.d, u_input.d), vec3<u32>(arg_0, 0u, u_input.d))), vec3<u32>(9237u, max(54176u, u_input.d), 1u & arg_0)));
    var_1 = vec3<u32>(_wgslsmith_add_u32(var_1.x, countOneBits(_wgslsmith_clamp_u32(arg_0, 0u, 76413u))) & (countOneBits(abs(60707u)) << (~u_input.d % 32u)), arg_0, ~51846u >> (u_input.d % 32u));
    return vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)), 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(1i, u_input.c)), ~vec2<i32>(-1i, u_input.b)))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(!any(vec3<bool>(false, true, false)) || true), !((u_input.d <= ~u_input.d) || true), any(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, false, false, true), true)), !all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-386f)))), _wgslsmith_div_f32(-1539f, 829f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(499f, 137f))) - 1168f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(-1359f)), 715f, -1133f, -1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1691f, -1354f, 716f, -527f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1006f, 589f, -380f, -2104f), vec4<f32>(124f, 1000f, 1000f, -287f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.d ^ (u_input.d >> (0u % 32u)), var_0.x)) * vec4<f32>(149f, -282f, 337f, 926f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1525f * -924f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1488f)) - 1840f))));
}

