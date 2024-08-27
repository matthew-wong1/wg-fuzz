struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f), 1705f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.x, 470f)), arg_0.x)), arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(218f + -981f) + _wgslsmith_f_op_f32(f32(-1f) * -858f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1411f)))))));
    let var_2 = reverseBits(_wgslsmith_dot_vec3_u32(u_input.b, firstTrailingBit(u_input.b << (u_input.b % vec3<u32>(32u)))));
    var_0 = -1549f;
    return 68113i;
}

fn func_1() -> Struct_2 {
    var var_0 = -(_wgslsmith_add_vec3_i32(vec3<i32>(-u_input.a, u_input.a, 15442i), ~vec3<i32>(0i, 53354i, -76736i)) ^ abs(vec3<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(u_input.a, 25408i), func_2(vec2<f32>(632f, 801f), vec3<bool>(true, true, true)))));
    var_0 = vec3<i32>(~var_0.x, 12626i, _wgslsmith_add_i32(~(-9416i), var_0.x));
    let var_1 = Struct_2(true, var_0.x);
    var_0 = ~(~vec3<i32>(min(1i, firstLeadingBit(-15540i)), ~(-13905i), 20192i));
    var var_2 = var_1;
    return Struct_2(_wgslsmith_f_op_f32(363f * _wgslsmith_f_op_f32(round(766f))) != -2260f, ~(select(var_1.b, var_1.b, true) & var_1.b) ^ (-_wgslsmith_mod_i32(var_0.x, -2147483647i) ^ -2147483647i));
}

fn func_3() -> f32 {
    let var_0 = vec4<bool>(((_wgslsmith_clamp_i32(u_input.a, -15954i, u_input.a) ^ firstTrailingBit(-1i)) < u_input.a) && (any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))) && any(vec2<bool>(true, true))), u_input.b.x < (16555u & u_input.b.x), any(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, false, false)), true, any(vec4<bool>(false, false, true, true)), func_1().a))), !all(vec4<bool>(false, true, false, any(vec3<bool>(false, true, true)))));
    var var_1 = Struct_2(var_0.x, abs(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -27605i)) << ((vec2<u32>(62053u, 25328u) & u_input.b.xx) % vec2<u32>(32u)), ~vec2<i32>(u_input.a, 13269i) ^ vec2<i32>(u_input.a, 6516i))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    let var_0 = func_1();
    var var_1 = vec2<u32>(~abs(u_input.b.x), u_input.b.x ^ (min(36719u, u_input.b.x) ^ 4294967295u));
    var var_2 = func_1();
    var_1 = u_input.b.zy;
    var var_3 = vec2<i32>(-1i) * -max(_wgslsmith_mod_vec2_i32(firstTrailingBit(arg_0.a), vec2<i32>(arg_0.a.x, -14396i)), vec2<i32>(~var_2.b, -2147483647i));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_0.e.wzw)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(arg_0.e.x - 804f), _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1638f, 1868f, arg_1))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-295f - _wgslsmith_div_f32(1198f, -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-307f))))), _wgslsmith_f_op_f32(970f * 1267f), 1f), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec2<i32>(_wgslsmith_mod_i32(var_0.b, u_input.a), _wgslsmith_div_i32(-65373i, -74964i)), 130f, ~(1u ^ u_input.b.x), ~_wgslsmith_add_u32(16457u, 22165u), _wgslsmith_div_vec4_f32(vec4<f32>(522f, -1000f, -1535f, -539f), vec4<f32>(1973f, -287f, -1401f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(f32(-1f) * -943f))))), _wgslsmith_f_op_f32(select(378f, _wgslsmith_f_op_f32(922f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec2<i32>(u_input.a, -185i), 573f, 36584u, 38241u, vec4<f32>(-1555f, 407f, 881f, -468f)), 1138f)).x)), any(select(!vec4<bool>(var_0.a, var_0.a, true, true), select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(false, var_0.a, true, var_0.a), false), true)))));
}

