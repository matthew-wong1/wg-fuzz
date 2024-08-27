struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1879f, -754f))))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)))) * _wgslsmith_f_op_f32(398f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -215f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -279f), var_0.x))))));
    var var_1 = vec2<bool>(select(any(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)), true, any(vec3<bool>(true, true, true))), true);
    let var_2 = Struct_1(~countOneBits(vec2<u32>(~74573u, abs(1u))), 142f, ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), abs(vec3<u32>(1u, 1u, 1u))), vec4<bool>(any(!vec2<bool>(true, var_1.x)), true && (countOneBits(u_input.a.x) >= max(u_input.a.x, u_input.a.x)), var_1.x, var_1.x));
    var var_3 = Struct_3(any(vec3<bool>(true, var_1.x, false)));
    return u_input.a.x;
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    let var_0 = arg_0;
    var var_1 = -1000f;
    var_1 = _wgslsmith_f_op_f32(-575f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1304f, -679f)), _wgslsmith_f_op_f32(select(490f, 454f, var_0.x))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-744f)))) + 131f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(706f, -1217f)))));
    var var_2 = _wgslsmith_div_f32(590f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-276f + _wgslsmith_f_op_f32(f32(-1f) * -128f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1678f * -363f))), _wgslsmith_f_op_f32(-935f - _wgslsmith_f_op_f32(509f + 1783f)), true))));
    return ~(~func_3());
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool) -> StorageBuffer {
    let var_0 = arg_0.a.d.yyz;
    var var_1 = ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x >> (13296u % 32u), -29150i, _wgslsmith_sub_i32(u_input.a.x, arg_1.x))), vec3<i32>(~1i, 0i & firstTrailingBit(u_input.a.x), select(u_input.a.x, 1i, arg_2) ^ func_2(vec3<bool>(arg_0.a.d.x, var_0.x, arg_0.a.d.x))));
    let var_2 = ~vec3<u32>(arg_0.a.a.x, 1u, arg_0.a.a.x);
    var var_3 = _wgslsmith_f_op_f32(step(-1624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b)))) > 293f;
    var var_4 = Struct_2(arg_0.a);
    return StorageBuffer(-vec4<i32>(u_input.a.x, min(_wgslsmith_add_i32(arg_1.x, arg_1.x), 1i), -2083i, reverseBits(arg_1.x)), -231f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_2(Struct_1(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(18937u, 95561u), vec2<u32>(1u, 1u), vec2<u32>(14717u, 65899u))), _wgslsmith_f_op_f32(667f - _wgslsmith_f_op_f32(1250f * -856f)), min(vec3<u32>(1u, 39319u, 4843u), vec3<u32>(0u, 2372u, 33165u)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)))), ~_wgslsmith_mod_vec3_i32(~abs(vec3<i32>(u_input.a.x, -1i, u_input.a.x)), vec3<i32>(~u_input.a.x, ~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)))), true);
}

