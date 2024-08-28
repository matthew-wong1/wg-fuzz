struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1806f + 1932f)) + -1106f) * -264f);
    let var_1 = true;
    return var_0;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: u32) -> bool {
    var var_0 = -768f;
    let var_1 = _wgslsmith_f_op_f32(trunc(-258f));
    var_0 = 1000f;
    var_0 = -451f;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-var_1));
    return true;
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) - _wgslsmith_f_op_f32(-1171f * _wgslsmith_f_op_f32(-850f - -145f))) + -875f));
    var var_1 = u_input.d;
    var var_2 = true;
    var var_3 = !vec3<bool>(!all(vec4<bool>(false, false, false, true)), func_3(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), -25190i == u_input.d), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, false)), u_input.e), any(vec4<bool>(true, true, true, true)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a))))) - vec3<f32>(-317f, 1575f, var_0.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1812f, var_0.a, 1136f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a))) * vec3<f32>(-196f, _wgslsmith_f_op_f32(-var_0.a), var_0.a))));
    return _wgslsmith_div_i32(~22558i, firstTrailingBit(u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-190f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-464f - -838f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2434f * -2114f)))))), _wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_clamp_i32(-2147483647i, countOneBits(-2147483647i), ~u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(206f, 257f, -843f))), _wgslsmith_mult_vec2_u32(~vec2<u32>(35416u, u_input.a.x), _wgslsmith_div_vec2_u32(u_input.a.zw, u_input.a.xx)), true, !select(vec2<bool>(false, false), vec2<bool>(true, false), false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - var_0.x) * _wgslsmith_f_op_f32(-1254f - _wgslsmith_div_f32(261f, 916f)))));
    var var_2 = select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.d, u_input.d)), -vec2<i32>(u_input.d, 24704i))), -vec2<i32>(33317i, -6480i)), max(vec2<i32>(func_2(u_input.a.zw), -2147483647i), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.d, u_input.d), -(vec2<i32>(0i, u_input.d) >> (vec2<u32>(62204u, u_input.e) % vec2<u32>(32u))))), any(select(vec3<bool>(false, any(vec4<bool>(false, false, false, false)), true), vec3<bool>(false, all(vec2<bool>(false, false)), u_input.c != 1u), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)))));
    var var_3 = u_input.b <= -37192i;
    var var_4 = !func_3(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, true))), vec3<bool>(true, any(vec3<bool>(true, true, false)), true), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(31863i, abs(~abs(select(u_input.a.x, 100845u, true))), u_input.d, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_1)));
}

