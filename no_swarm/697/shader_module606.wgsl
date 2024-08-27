struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * 1083f) * 198f), 867f);
    var_0 = vec3<f32>(1065f, _wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1873f * var_0.x) + -678f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a, var_0.x), arg_0.a, arg_1.x >= 1u))))));
    let var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(var_0.x, 216f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -396f)) * -175f), 396f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), arg_0.a, _wgslsmith_f_op_f32(max(arg_0.a, arg_0.a))))), !vec3<bool>(arg_0.b, !arg_2.x, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, 843f, arg_0.a), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -841f, -946f), vec3<f32>(var_0.x, var_0.x, arg_0.a))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, arg_0.a, 1074f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1691f, -1000f, 1000f), vec3<f32>(var_0.x, var_0.x, arg_0.a), arg_2.wzz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1415f, arg_0.a, -924f)), true))), select(arg_2.zyz, select(vec3<bool>(true, false, arg_0.b), !arg_2.wwy, arg_2.yzw), select(!arg_2.zzz, vec3<bool>(arg_0.b, arg_0.b, arg_0.b), false))))));
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~arg_1.wx, ~vec2<u32>(arg_1.x, 23213u)), arg_1.x), ~arg_1.zy), ~arg_1.wy);
    return var_2.x;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = arg_1.zyx;
    let var_1 = ~vec3<i32>(abs(-2147483647i), -18829i << (~firstTrailingBit(4442u) % 32u), -_wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, 34731i), arg_2));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1036f)), _wgslsmith_f_op_f32(max(-962f, _wgslsmith_f_op_f32(947f * -1516f)))))));
    var_0 = !arg_1.zxy;
    var var_3 = vec2<u32>(~abs(func_3(Struct_1(var_2, arg_1.x), vec4<u32>(1u, 1u, 1u, 1u), select(arg_1, vec4<bool>(arg_1.x, var_0.x, arg_1.x, false), vec4<bool>(false, false, true, false)))), ~1u);
    return Struct_2(Struct_1(692f, (~var_3.x ^ _wgslsmith_sub_u32(var_3.x, 17713u)) < ~min(var_3.x, 2499u)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -607f));
    var var_1 = func_2(~(~(-countOneBits(2147483647i))), vec4<bool>(!any(vec3<bool>(true, true, false)), !(!any(vec2<bool>(false, false))), (true == all(vec2<bool>(true, true))) || false, !all(vec4<bool>(true, true, true, true))), u_input.a.x, u_input.a);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 6979u, 19543u), vec4<u32>(16968u, 103498u, 4294967295u, 1u), vec4<u32>(1u, 28270u, 34791u, 32467u)) & vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = -496f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(var_1)), all(vec3<bool>(select(all(vec4<bool>(false, false, true, false)), true, true), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-422f * 562f) * _wgslsmith_div_f32(var_1, var_2.a))), _wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(abs(1370f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(212f, _wgslsmith_f_op_f32(var_1 + var_2.a))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(206f + var_2.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_1))))))));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(9240u, var_0.x, _wgslsmith_clamp_u32(var_0.x, ~var_0.x, ~var_0.x), var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, _wgslsmith_f_op_f32(var_2.a - func_1().a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3, 481f))), 299f)), _wgslsmith_dot_vec4_i32(u_input.a, select(vec4<i32>(46612i, 0i, abs(56896i), _wgslsmith_mod_i32(1i, u_input.a.x)), abs(~vec4<i32>(0i, -24356i, u_input.a.x, -39644i)), vec4<bool>(any(vec3<bool>(false, true, false)), !var_4.b, var_4.b, var_4.b))), var_0, vec3<i32>(1i, u_input.a.x, firstLeadingBit(u_input.a.x)) | max(_wgslsmith_add_vec3_i32(u_input.a.xyz, vec3<i32>(2147483647i, u_input.a.x, 2147483647i)), abs(u_input.a.zyx)));
}

