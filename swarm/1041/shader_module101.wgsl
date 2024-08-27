struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -291f, arg_0.x) + _wgslsmith_f_op_vec3_f32(-arg_0)))), ~1u, vec3<f32>(-201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x))))));
    var var_1 = 26240i;
    let var_2 = ~firstTrailingBit(_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(var_0.b & u_input.b.x, min(4294967295u, arg_1.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.a))), ~89422u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1236f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1391f), 1272f));
    var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~countOneBits(-u_input.d), ~u_input.d), u_input.d);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, arg_0.x, arg_0.x)))))) - vec3<f32>(var_0.a.x, arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x + 753f))))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1169f, 806f), -1094f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1434f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(936f * _wgslsmith_f_op_f32(f32(-1f) * -215f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_3.c.x)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = -681f;
    var_0 = 395f;
    var_0 = 398f;
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(605f, 706f, 726f), vec3<f32>(1432f, 1092f, 1000f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-686f, 170f, -720f)), ~u_input.b.xw))))), ~1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - -709f), _wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_div_f32(-399f, 524f))) * vec3<f32>(1019f, _wgslsmith_f_op_f32(f32(-1f) * -1423f), 1f)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(sign(739f));
    var var_1 = true;
    let var_2 = select(!(!vec3<bool>(all(vec4<bool>(true, true, false, arg_3)), all(vec3<bool>(false, false, arg_3)), all(vec3<bool>(true, false, true)))), !select(vec3<bool>(!arg_3, select(false, arg_3, true), true), select(vec3<bool>(arg_3, arg_3, arg_3), !vec3<bool>(true, arg_3, true), vec3<bool>(arg_3, arg_3, true)), arg_3), all(!select(vec3<bool>(true, arg_3, false), select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, arg_3, false)), !arg_3)));
    var_1 = true;
    let var_3 = _wgslsmith_div_f32(-209f, func_2().c.x) < arg_0.a.x;
    return _wgslsmith_f_op_vec2_f32(max(arg_0.a.yx, vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.c.x)), 1f)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(292f + _wgslsmith_f_op_f32(f32(-1f) * -1811f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-180f, 319f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_2(), func_2(), -abs(u_input.a), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, -936f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 834f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-932f, var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -652f, 1000f)), 1u, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(614f, -374f, 351f), vec3<f32>(-1000f, var_0.x, -367f)))), func_2(), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.wz, u_input.d.wy), firstLeadingBit(vec2<i32>(u_input.d.x, u_input.c))), any(vec2<bool>(true, true)))))));
    var var_1 = func_2();
    var var_2 = Struct_1(var_1.a, ~u_input.b.x, var_1.c);
    let var_3 = !all(select(vec3<bool>(false, 1552f < var_0.x, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(func_2().c.x)) + func_2().a.x));
    let var_2 = select(!(!(!(!vec4<bool>(false, var_0, false, var_0)))), !select(select(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, false, true, var_0), true), select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(var_0, true, false, var_0), vec4<bool>(var_0, var_0, var_0, true)), any(vec4<bool>(false, true, var_0, false))), vec4<bool>(true, true, all(vec3<bool>(var_0, true, false)), var_0), vec4<bool>(-1323i < u_input.e, true, any(vec3<bool>(true, false, var_0)), all(vec3<bool>(var_0, var_0, false)))), 1u > ~u_input.b.x);
    var var_3 = true;
    let var_4 = false;
    var var_5 = Struct_1(vec3<f32>(138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(906f)) * -347f) - func_2().a.x), 296f), u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f), _wgslsmith_f_op_f32(floor(-1417f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-906f, 689f) * 276f))), -660f));
    let var_6 = func_2();
    var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.c.x, _wgslsmith_f_op_f32(435f - -1000f), _wgslsmith_f_op_f32(var_5.a.x + _wgslsmith_f_op_f32(sign(-1077f))))), reverseBits(max(~var_5.b, 0u)), vec3<f32>(var_6.c.x, var_5.a.x, -1000f));
    var_3 = !(all(!select(vec2<bool>(false, var_0), vec2<bool>(var_4, true), var_0)) | (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-476f)), _wgslsmith_div_f32(var_5.a.x, var_5.a.x), true)) >= var_6.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yy, _wgslsmith_add_u32(min(min(var_6.b, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, var_6.b)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.b, 6552u, 10636u, 54129u), vec4<u32>(34959u, u_input.b.x, u_input.b.x, 1u))), 1u), _wgslsmith_div_u32(u_input.b.x, 100909u ^ (1u ^ reverseBits(var_6.b))), -vec3<i32>(u_input.e, ~firstTrailingBit(u_input.e), -1i), var_5.b);
}

