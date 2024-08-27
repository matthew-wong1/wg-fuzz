struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1326f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-780f - -696f) * _wgslsmith_f_op_f32(761f + 3071f)))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1156f)) - _wgslsmith_f_op_f32(abs(-509f)))))), _wgslsmith_f_op_f32(round(-259f))));
    var var_1 = 1u;
    let var_2 = -385f;
    var_1 = 6525u;
    return u_input.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, -29421i) & _wgslsmith_add_vec4_i32(~vec4<i32>(0i, u_input.a.x, u_input.b.x, -1i), vec4<i32>(-77270i, -2147483647i, -1i, -24804i)), vec4<i32>(0i, func_3(), u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x)))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + arg_0.x)));
    var var_2 = vec4<bool>(any(vec4<bool>(true, _wgslsmith_f_op_f32(arg_0.x * arg_0.x) < _wgslsmith_f_op_f32(-172f - -416f), true, !all(vec2<bool>(false, true)))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), true)) | !((var_0 ^ 413i) >= 4130i), select(any(vec4<bool>(true, 1i >= u_input.b.x, true, true)), true, false), (_wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(floor(arg_0.x))) | select(any(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1962f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-766f * arg_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(-203f, -1059f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + 1605f)) + arg_0.x), arg_0.x));
    let var_4 = u_input.c;
    return Struct_1(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i) | vec2<i32>(var_0, var_0), reverseBits(vec2<i32>(var_0, var_0))), ~(21267i >> (var_4.x % 32u)))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(39075i & u_input.a.x, 8852i | var_0, ~u_input.b.x), _wgslsmith_clamp_vec3_i32(u_input.b, ~vec3<i32>(21107i, 2147483647i, u_input.a.x), vec3<i32>(var_0, u_input.b.x, u_input.a.x))), u_input.c);
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b.x;
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(589f, 1100f, 687f, 345f) - vec4<f32>(1000f, -389f, -769f, 915f)))))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1();
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(min(~(~u_input.a.x), func_2(vec4<f32>(914f, -801f, -871f, -1393f), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_0.c.x), var_0.c.yz)).a), _wgslsmith_add_i32(func_2(vec4<f32>(-164f, -829f, -1158f, 387f), var_1.c.x).a, var_1.a) | 1i), 32930i, u_input.a.x & abs(-var_0.b.x));
    var var_3 = u_input.a.x;
    var var_4 = !(!(41398u <= ~(~var_0.c.x)));
    var var_5 = var_0.c.x;
    let var_6 = vec4<u32>(u_input.d, u_input.c.x | 4294967295u, 23884u, reverseBits(u_input.c.x));
    var var_7 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, 947f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1553f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1356f, -230f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1754f, -869f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1200f, 846f))), true))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1456f, 1082f), vec2<f32>(695f, 649f), vec2<bool>(false, false)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_6.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-943f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_7.x), 625f))))));
}

