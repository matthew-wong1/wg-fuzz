struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<f32>) -> f32 {
    return 677f;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = select(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), all(select(vec3<bool>(false, u_input.d == 1i, any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, 13651u <= u_input.b.x, false))), any(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    var_0 = any(vec2<bool>(true, true)) | true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2222f, _wgslsmith_f_op_f32(-864f - arg_2.a))) - -1659f), 692f)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, arg_2.b.x, arg_2.b.x, 1072f)) * vec4<f32>(_wgslsmith_div_f32(2514f, 676f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(func_2(vec4<f32>(arg_2.a, arg_2.b.x, -466f, -1000f), Struct_3(vec4<i32>(2147483647i, -2147483647i, u_input.d, 5591i), vec2<bool>(false, true), u_input.b.xw, vec2<i32>(-37995i, arg_0), arg_1), vec4<f32>(var_1, 541f, 1279f, 350f))), arg_2.b.x)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -842f, var_1, -667f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-593f, arg_2.a, arg_2.a, arg_2.a) + vec4<f32>(var_1, arg_2.b.x, 546f, -689f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1, -293f, var_1) + vec4<f32>(109f, -597f, arg_2.a, var_1)))))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var_0 = 2274f;
    var_0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_add_i32(u_input.d, 2147483647i), u_input.b.x, Struct_1(arg_1, vec2<f32>(-583f, arg_1)))).x)))), _wgslsmith_f_op_f32(-arg_1)));
    var_0 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -881f)), 1224f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec4<i32>(~7652i, _wgslsmith_clamp_i32(i32(-1i) * -u_input.d, 18270i, u_input.d), _wgslsmith_sub_i32(u_input.d, u_input.d), ~(-u_input.d)), -(~firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -2147483647i, 6342i, u_input.d), vec4<i32>(7291i, -3563i, u_input.d, 2147483647i), vec4<i32>(0i, 30999i, 1i, -4089i)))));
    var var_1 = -5482i;
    let var_2 = ~vec2<u32>(~(~4294967295u), firstLeadingBit(45963u ^ _wgslsmith_sub_u32(u_input.a, 85585u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(0i, 12219u, Struct_1(1177f, vec2<f32>(-1153f, -383f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2146f, -418f, -182f, -395f) * vec4<f32>(206f, 799f, 745f, 267f))))));
    let var_4 = _wgslsmith_mod_vec4_u32(u_input.b, countOneBits(max(vec4<u32>(_wgslsmith_div_u32(0u, 1u), max(u_input.a, var_2.x), ~1u, var_2.x), vec4<u32>(var_2.x, ~4294967295u, u_input.b.x, countOneBits(4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~abs(vec3<i32>(u_input.d, -2147483647i, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, var_3.x, vec3<bool>(false, false, true)))))), firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.b.wx, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_4.x), u_input.b.wx, vec2<u32>(u_input.a, u_input.a))), _wgslsmith_div_vec2_u32(~var_4.wz, vec2<u32>(2644u, var_2.x) >> (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u))))));
}

