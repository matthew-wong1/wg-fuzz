struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_1(arg_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) * 1f), 936f)), !any(vec4<bool>(arg_3.x, false, false, false)) || !(!(!arg_3.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-867f, arg_0, -1565f), vec3<f32>(1139f, arg_0, -294f)))), vec3<f32>(_wgslsmith_f_op_f32(step(-812f, _wgslsmith_f_op_f32(1453f * arg_0))), _wgslsmith_f_op_f32(floor(2255f)), _wgslsmith_f_op_f32(-arg_0)))));
    var var_1 = false;
    var_1 = (false | arg_2) && var_0.c;
    var_1 = any(arg_3);
    let var_2 = Struct_1(!(!select(arg_3, !arg_3, true)), var_0.b, false, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.x, arg_0)) * 1407f), arg_0, 1283f));
    return abs(56803u);
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(603f, 1843f) + _wgslsmith_f_op_f32(374f - -301f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1144f)) + -286f) + -647f)), vec2<i32>(u_input.c, _wgslsmith_add_i32(u_input.c, u_input.d)), true, !vec2<bool>(false, select(true, true, true)));
    let var_1 = Struct_1(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(true, true)))), select(vec2<bool>(true, u_input.a < 9304i), vec2<bool>(true, all(vec4<bool>(false, true, true, false))), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, -346f, -470f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-834f, 1614f, -173f, 212f))))), select(any(vec3<bool>(all(vec3<bool>(false, true, true)), any(vec2<bool>(false, false)), true)), !any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1003f + 660f), _wgslsmith_f_op_f32(-753f + -1000f), _wgslsmith_f_op_f32(273f - 922f)))));
    let var_2 = -reverseBits(_wgslsmith_div_vec4_i32(~vec4<i32>(20660i, u_input.a, u_input.c, u_input.c), -vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)) >> (vec4<u32>(1u, func_3(var_1.b.x, vec2<i32>(-2147483647i, u_input.c), true, vec2<bool>(false, var_1.c)), firstTrailingBit(9079u), _wgslsmith_clamp_u32(3850u, 16664u, 4294967295u)) % vec4<u32>(32u)));
    var_0 = firstLeadingBit(~1u);
    var_0 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(0u, 52670u), select(max(16292u, 17831u), ~0u, true)), 1u);
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = select(select(!(!select(vec3<bool>(arg_1.c, arg_0.c, arg_1.c), vec3<bool>(arg_0.a.x, arg_1.c, arg_0.a.x), arg_1.c)), !select(!vec3<bool>(arg_0.c, true, arg_1.c), select(vec3<bool>(arg_0.c, arg_1.c, arg_1.c), vec3<bool>(true, true, false), false), select(vec3<bool>(arg_1.c, arg_1.a.x, false), vec3<bool>(false, arg_1.c, true), vec3<bool>(arg_0.c, false, false))), select(!vec3<bool>(arg_1.a.x, arg_1.a.x, false), select(vec3<bool>(false, true, arg_0.a.x), !vec3<bool>(false, arg_0.a.x, true), !vec3<bool>(arg_0.a.x, false, arg_0.c)), arg_0.a.x)), vec3<bool>(all(select(!arg_0.a, select(vec2<bool>(arg_1.a.x, false), arg_1.a, arg_0.c), arg_1.c)), arg_1.a.x, all(!select(arg_1.a, arg_1.a, vec2<bool>(arg_1.a.x, true)))), !select(vec3<bool>(true, any(vec2<bool>(true, false)), true), select(vec3<bool>(false, false, true), vec3<bool>(arg_1.c, arg_0.c, arg_1.c), select(vec3<bool>(false, arg_0.c, arg_0.c), vec3<bool>(false, false, arg_1.c), vec3<bool>(arg_0.a.x, true, true))), vec3<bool>(all(vec3<bool>(arg_1.a.x, arg_0.c, true)), false, arg_0.a.x)));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_0.b * arg_0.b);
    var var_3 = arg_1;
    let var_4 = func_2();
    return _wgslsmith_f_op_vec3_f32(-arg_0.d);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b.x))), -539f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-419f + -1017f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - 773f)) + _wgslsmith_f_op_f32(-arg_0.d.x))), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.d.x, 409f), _wgslsmith_f_op_f32(-arg_0.b.x), -1781f) * vec3<f32>(_wgslsmith_f_op_f32(trunc(1251f)), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))));
    var_0 = arg_0;
    var var_1 = firstTrailingBit(-countOneBits(~(~vec2<i32>(u_input.c, -15187i))));
    var_0 = Struct_1(func_2().a, _wgslsmith_f_op_vec4_f32(-var_0.b), arg_0.a.x, var_0.b.xwy);
    let var_2 = arg_0;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1453f, -1080f, -610f, 1000f)) + vec4<f32>(-566f, -786f, -869f, 460f))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1337f, -1047f, -799f), vec3<f32>(1530f, 509f, 421f)) * _wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec2<bool>(false, true), vec4<f32>(2645f, -792f, -665f, 1638f), true, vec3<f32>(-976f, -1247f, -1604f)), Struct_1(vec2<bool>(false, true), vec4<f32>(-1000f, -1593f, -728f, -850f), false, vec3<f32>(1019f, -1790f, -529f))))) + vec3<f32>(-382f, 958f, _wgslsmith_f_op_f32(f32(-1f) * -190f)))));
    let var_1 = var_0;
    var var_2 = var_1;
    var_2 = var_0;
    let var_3 = var_2.b;
    var var_4 = vec4<u32>(~select(~_wgslsmith_mult_u32(4294967295u, 0u), 1u, any(select(vec3<bool>(var_1.c, true, var_1.a.x), vec3<bool>(var_2.c, true, false), false))), ~_wgslsmith_clamp_u32(~45689u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 13388u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(609u, 0u, 0u))), ~1u >> (1u % 32u), _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(0u, 1u, 18414u, 4294967295u), ~vec4<u32>(24762u, 4294967295u, 62644u, 4294967295u), vec4<bool>(true, var_0.c, var_0.c, var_0.c)), vec4<u32>(1u, 1u, 1u, 1u), func_4(func_2()).a.x), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(1499u, 73297u, 36556u, 0u), vec4<u32>(3055u, 40584u, 29285u, 14661u)), max(vec4<u32>(1u, 4294967295u, 27891u, 4294967295u), vec4<u32>(4294967295u, 40140u, 18012u, 1u))), vec4<u32>(~0u, 64294u, 1u, abs(4294967295u)))));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, abs(~var_4.x) >> (~1u % 32u));
}

