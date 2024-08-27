struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-1564f, -1052f, -1596f, -1702f), vec4<f32>(-665f, -3061f, 1056f, -816f), vec4<f32>(-818f, -343f, 1109f, -1000f), vec4<f32>(-647f, 2244f, -1612f, -478f), vec4<f32>(-305f, -373f, 580f, -233f), vec4<f32>(-610f, -766f, 801f, -1317f), vec4<f32>(850f, -137f, -1000f, -1273f), vec4<f32>(469f, -1759f, 415f, -851f), vec4<f32>(-360f, 310f, 660f, 585f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    let var_0 = ~(-select(_wgslsmith_dot_vec3_i32(vec3<i32>(36688i, arg_1.c, u_input.a.x), firstTrailingBit(vec3<i32>(2753i, 2147483647i, u_input.a.x))), -1i, all(select(vec4<bool>(true, false, false, arg_0.c.x), vec4<bool>(false, true, true, true), arg_0.c.x))));
    global0 = array<vec4<f32>, 9>();
    global0 = array<vec4<f32>, 9>();
    global0 = array<vec4<f32>, 9>();
    let var_1 = Struct_3(abs(-14031i), !arg_1.b.x);
    return _wgslsmith_f_op_f32(-471f + 1063f);
}

fn func_2() -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(738f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-508f - -102f) * _wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(12077u, 39727u, 1u), vec2<f32>(685f, -296f), vec2<bool>(true, false)), Struct_1(true, vec3<bool>(false, true, false), 0i, 1088f, vec2<f32>(-345f, 616f)), vec4<bool>(false, true, true, false))))))), _wgslsmith_f_op_f32(-1693f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-111f, 249f)), 202f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f), 249f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-384f, -738f))), _wgslsmith_f_op_f32(-206f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-182f, -518f))));
    global0 = array<vec4<f32>, 9>();
    var var_1 = Struct_2(vec3<u32>(~1u, ~1u, 4839u), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), vec2<bool>(false, !select(false, true, true)));
    var_1 = Struct_2(vec3<u32>(firstTrailingBit(~var_1.a.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.a.x, var_1.a.x), reverseBits(_wgslsmith_div_u32(35788u, 1u))), 1u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.b))), var_1.c);
    global0 = array<vec4<f32>, 9>();
    return vec3<u32>(40657u, countOneBits(1u), 4294967295u);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(firstTrailingBit(func_2()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-548f, 756f) + vec2<f32>(198f, -381f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(223f, 552f), vec2<f32>(490f, -1000f), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-757f, 409f))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1276f, -124f) * vec2<f32>(1895f, -665f))))))), vec2<bool>(!select(any(vec4<bool>(false, false, false, true)), true, true), true));
    var var_1 = u_input.a.x;
    let var_2 = all(select(!select(vec2<bool>(true, true), vec2<bool>(true, var_0.c.x), var_0.c.x), var_0.c, _wgslsmith_f_op_f32(147f - var_0.b.x) > _wgslsmith_f_op_f32(f32(-1f) * -345f))) && var_0.c.x;
    var var_3 = Struct_3(-1i, select(var_2, !var_0.c.x, true));
    var_3 = Struct_3(min(abs(48090i), reverseBits(var_3.a)) >> (1u % 32u), var_3.b);
    return Struct_2(func_2(), var_0.b, !select(var_0.c, select(vec2<bool>(var_3.b, var_0.c.x), !var_0.c, var_0.c), var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 9>();
    var var_0 = ~(~vec3<u32>(25342u, 1u, ~4294967295u));
    let var_1 = func_1();
    let var_2 = Struct_3(_wgslsmith_clamp_i32(~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))), -60415i, _wgslsmith_dot_vec4_i32(vec4<i32>(3762i, -10569i, min(u_input.a.x, u_input.a.x), -1i), vec4<i32>(~u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x | -2147483647i))), any(vec2<bool>(true, true)));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-103f, var_1.b.x), -1191f, _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(-var_1.b.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-396f, 439f, var_3.b.x, var_3.b.x))))), -749f, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a.x, 1i, 1i), -_wgslsmith_div_i32(var_2.a | var_2.a, u_input.a.x)));
}

