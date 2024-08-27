struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    var var_0 = ~2147483647i;
    global0 = reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-41130i, 2147483647i), vec2<i32>(global0.x, global0.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, 0i), vec2<i32>(-51080i, global0.x), vec2<i32>(global0.x, global0.x))), abs(global0.x ^ 1i)), min(~select(vec2<i32>(0i, -47467i), vec2<i32>(2147483647i, 9889i), true), -(~vec2<i32>(0i, -27857i))), abs(vec2<i32>(-1i) * -vec2<i32>(-37744i, global0.x))));
    var var_1 = ~(~reverseBits(vec2<i32>(-39891i, -1i)));
    var_1 = vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32((vec2<i32>(var_1.x, global0.x) >> (u_input.a.xy % vec2<u32>(32u))) >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)), -(vec2<i32>(-2147483647i, -2147483647i) & vec2<i32>(global0.x, global0.x)));
    let var_2 = vec2<i32>(-40046i | -min(var_1.x, var_1.x), var_1.x);
    return vec4<f32>(788f, _wgslsmith_f_op_f32(abs(-535f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-878f - _wgslsmith_f_op_f32(-2389f + -493f)), _wgslsmith_f_op_f32(ceil(-1372f))))), -321f);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-664f + -1000f)))), -388f, _wgslsmith_f_op_f32(select(-318f, _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(1000f, -337f)), true))));
    global0 = reverseBits(vec2<i32>(-3811i, max(14585i, global0.x)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, _wgslsmith_f_op_f32(select(var_0.x, -487f, true)), var_0.x, _wgslsmith_div_f32(-1035f, _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3()))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f * -1623f)), var_0.x, _wgslsmith_f_op_f32(floor(-2055f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1345f - 205f))))));
    var var_3 = select(true, any(select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), false), vec3<bool>(all(vec2<bool>(false, true)), true, 10770i >= global0.x), true)), !any(vec4<bool>(true, true, true, true)));
    return Struct_1(~countOneBits(1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_1.x)), _wgslsmith_f_op_f32(ceil(var_1.x)))), firstLeadingBit(~(-(~global0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x)))))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x ^ _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), min(4294967295u, ~34026u)), max(u_input.a.x, ~countOneBits(1u))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = Struct_4(func_2(), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -101f), 220f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d, 837f, -281f, arg_1.b), vec4<f32>(354f, 828f, 801f, -183f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1580f, -1056f, -937f, 717f), vec4<f32>(arg_1.b, arg_1.d, 1078f, -882f))))), func_2(), _wgslsmith_div_f32(-654f, 856f)), Struct_3(-1i, Struct_2(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.d, arg_1.d, arg_1.b, arg_1.d), vec4<f32>(arg_1.d, -703f, arg_1.b, -506f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -466f, arg_1.d, arg_1.b) + vec4<f32>(arg_1.b, -126f, arg_1.b, arg_1.b))), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-208f + -768f), firstLeadingBit(-13325i), arg_1.b, u_input.a.x), -936f), Struct_2(arg_1.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, arg_1.b, arg_1.b, arg_1.b) - vec4<f32>(arg_1.d, 290f, arg_1.b, -137f)))), arg_1, arg_1.b)), true, ~(u_input.a.x ^ ~u_input.a.x));
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(min(1i, 1i >> (u_input.a.x % 32u)), _wgslsmith_add_i32(_wgslsmith_div_i32(67166i, -1i), arg_1.c | -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.c), vec2<i32>(19662i, 0i)), abs(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 64003i, global0.x), vec3<i32>(var_0.a.c, -2147483647i, -40162i))), vec3<i32>(arg_1.c, -var_0.b.c.c, -2147483647i)), var_0.c.a & func_2().c, reverseBits(global0.x)) ^ ~reverseBits(abs(select(vec4<i32>(15573i, 77394i, global0.x, var_0.a.c), vec4<i32>(1i, var_0.a.c, 2147483647i, -2147483647i), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d))));
    var var_2 = abs(abs(vec3<i32>(arg_1.c, 0i, countOneBits(25221i))));
    var_2 = vec3<i32>(var_0.c.c.c.c, global0.x, global0.x ^ -12344i) << (~vec3<u32>(arg_0, 1u, ~1u) % vec3<u32>(32u));
    let var_3 = var_0.c.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_3.b)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -1089f, 162f, -498f))))) - _wgslsmith_f_op_vec4_f32(var_3.b * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.b.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.b.x, -397f, 738f, 340f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f + -1036f)), _wgslsmith_f_op_f32(-1993f + _wgslsmith_f_op_f32(trunc(-1598f))), 559f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-881f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(349f, 634f, -264f, 1005f) - vec4<f32>(-360f, 493f, 502f, 1000f))) + _wgslsmith_div_vec4_f32(vec4<f32>(550f, -809f, -1815f, -867f), vec4<f32>(2285f, -1206f, 684f, 871f)))) + vec4<f32>(-718f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-638f, 263f)))), _wgslsmith_f_op_f32(round(757f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-604f, 1421f)))))));
    let var_1 = 203f;
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(4294967295u, Struct_1(u_input.a.x, -556f, 1i, var_0.x, 0u))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_1, var_0.x, -1178f), vec4<f32>(-2727f, -308f, -516f, var_0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -1673f, -456f, var_0.x), vec4<f32>(-971f, 1228f, var_0.x, var_0.x), false)) - _wgslsmith_f_op_vec4_f32(func_3()))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(~1u, Struct_1(u_input.a.x, var_1, -46091i, var_0.x, u_input.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1323f, -286f, -707f, var_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, -1000f, 561f, 598f)))))));
    let var_2 = !all(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_3 = !var_2;
    var_3 = var_2;
    let var_4 = ~countOneBits(-select(vec4<i32>(global0.x, global0.x, global0.x, 1i) << (vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(-1i, 2147483647i, 28862i, 69666i), true));
    var_3 = var_2;
    var var_5 = Struct_5(false, var_2, _wgslsmith_clamp_u32(~u_input.a.x, ~(~1u), max(u_input.a.x, ~83225u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(var_0.wz)), -(~vec4<i32>(_wgslsmith_sub_i32(1i, -31815i), func_2().c, abs(1i), var_4.x)));
}

