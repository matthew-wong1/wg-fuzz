struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    return select(~abs(select(vec2<u32>(12545u, u_input.a.x), vec2<u32>(u_input.c, 23766u), true)), u_input.a.zz, !vec2<bool>(select(true, true, true), true)) & ~u_input.b.zy;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1.x)))) - arg_0), u_input.a.x);
    let var_1 = vec2<u32>(~(min(_wgslsmith_add_u32(var_0.b, 12990u), var_0.b | 3256u) << (~_wgslsmith_mod_u32(27498u, 28660u) % 32u)), ~(u_input.b.x | 74263u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_1);
    let var_3 = var_0;
    let var_4 = ~(abs(reverseBits(~u_input.b.x)) | var_0.b);
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), -1156f), var_2.x, any(vec3<bool>(true, true, true)))), _wgslsmith_dot_vec4_u32(vec4<u32>(8216u, ~(~1u), ~_wgslsmith_sub_u32(4294967295u, u_input.a.x), _wgslsmith_dot_vec2_u32(~u_input.b.xz, func_3())), u_input.b));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1070f - 856f) + -2167f))), vec4<f32>(-660f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-558f * -875f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -520f), -113f))), 1808f, _wgslsmith_f_op_f32(f32(-1f) * -2386f)));
    let var_1 = !(var_0.a > 902f);
    var var_2 = max(vec3<i32>(20729i, -(~10381i), ~(-1i) << (firstLeadingBit(var_0.b) % 32u)), vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i));
    var_2 = select(vec3<i32>(countOneBits(2147483647i), var_2.x, max(_wgslsmith_sub_i32(var_2.x, var_2.x), var_2.x)) >> ((~(u_input.a & vec3<u32>(u_input.c, var_0.b, u_input.a.x)) & u_input.b.wwz) % vec3<u32>(32u)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, -1537i, _wgslsmith_clamp_i32(var_2.x, var_2.x, var_2.x)), countOneBits(vec3<i32>(-56346i, 16280i, var_2.x)) | vec3<i32>(1i, 1i, 1i), -_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, 1772i, -2801i), vec3<i32>(var_2.x, var_2.x, 20440i))), vec3<bool>(any(!select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, var_1, var_1), var_1)), true, var_1));
    var var_3 = min(vec2<u32>(_wgslsmith_clamp_u32(~(~var_0.b), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), u_input.a.xz)), u_input.a.x), abs(4294967295u)), vec2<u32>(firstLeadingBit(0u), ~var_0.b));
    return func_2(468f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(755f, var_0.a, var_0.a, -897f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 269f, -840f, -2119f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2009f, var_0.a, 1539f, 932f), vec4<f32>(-599f, 1407f, -1000f, var_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = true;
    var var_2 = 649f;
    var_2 = -1511f;
    var_2 = _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.a, 1000f)), var_0.a))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1349f * var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, -149f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2035f, -247f)))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(258f, 1596f))))))));
}

