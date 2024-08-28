struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    let var_0 = vec4<bool>(!any(vec4<bool>(arg_0.x, true, arg_0.x, true)) && arg_0.x, true, false, all(select(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, true, true, arg_0.x), arg_0.x), vec4<bool>(arg_0.x, any(arg_0), true, false), (arg_1 >= 4294967295u) & all(vec3<bool>(arg_0.x, true, true)))));
    var var_1 = Struct_1(arg_0.x, _wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 87894u, arg_1, u_input.b), ~vec4<u32>(u_input.d.x, arg_1, u_input.b, 24716u))), select(~reverseBits(vec4<u32>(u_input.d.x, u_input.d.x, arg_1, arg_1)), vec4<u32>(_wgslsmith_add_u32(58210u, arg_1), arg_1, countOneBits(75064u), 1u), all(var_0))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-967f)) - _wgslsmith_f_op_f32(-1043f + _wgslsmith_f_op_f32(round(319f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1662f)), _wgslsmith_f_op_f32(-936f - -557f))))));
    let var_2 = -select(vec2<i32>(-u_input.e.x, abs(u_input.e.x)), u_input.e, vec2<bool>(true, all(vec4<bool>(false, var_1.a, var_1.a, arg_0.x))));
    var var_3 = Struct_1(!arg_0.x, _wgslsmith_mod_vec4_u32(~var_1.b, var_1.b), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c.x)) - _wgslsmith_f_op_f32(156f + 765f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1081f), var_1.c.x, any(!vec4<bool>(true, var_0.x, var_1.a, false))))));
    var var_4 = Struct_2(firstTrailingBit(~vec4<i32>(var_2.x, -19048i, u_input.a, -7954i) & vec4<i32>(0i, u_input.e.x, u_input.e.x, u_input.e.x)) >> (~(~var_3.b) % vec4<u32>(32u)), Struct_1(!all(!vec2<bool>(var_0.x, false)), _wgslsmith_add_vec4_u32(var_3.b | vec4<u32>(var_3.b.x, var_1.b.x, var_1.b.x, var_1.b.x), firstLeadingBit(vec4<u32>(u_input.b, 30011u, 0u, 53670u))), var_1.c));
    return countOneBits(_wgslsmith_dot_vec4_u32(var_4.b.b, var_3.b));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = u_input.d.x;
    let var_1 = !vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), (func_3(vec3<bool>(true, false, true), 26890u) < ~u_input.d.x) & true);
    var var_2 = Struct_1(select((var_1.x | true) && var_1.x, var_1.x, false) & false, vec4<u32>(~abs(u_input.b), u_input.d.x, 0u, ~u_input.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1219f)), _wgslsmith_f_op_f32(-146f * -165f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(888f, 1000f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1760f, -284f))) - vec2<f32>(134f, 658f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1716f, -546f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(658f, -1461f))))));
    var_2 = Struct_1(true, _wgslsmith_mult_vec4_u32(var_2.b, ~abs(var_2.b)), vec2<f32>(_wgslsmith_f_op_f32(-491f * _wgslsmith_f_op_f32(var_2.c.x - -1181f)), var_2.c.x));
    let var_3 = ~vec4<u32>(func_3(!vec3<bool>(var_1.x, true, false), _wgslsmith_mod_u32(0u, countOneBits(4294967295u))), ~countOneBits(var_2.b.x), func_3(select(select(vec3<bool>(true, var_2.a, false), vec3<bool>(false, true, true), var_1.x), select(vec3<bool>(false, var_2.a, var_2.a), vec3<bool>(var_2.a, var_1.x, false), vec3<bool>(var_1.x, true, var_1.x)), true), func_3(select(vec3<bool>(var_2.a, false, false), vec3<bool>(false, true, var_1.x), false), _wgslsmith_div_u32(var_2.b.x, 91050u))), ~firstLeadingBit(~var_2.b.x));
    return !(!var_1.x);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: bool) -> Struct_2 {
    var var_0 = !(!select(select(!arg_1.zxx, !arg_1.zxw, arg_1.xzw), select(arg_1.wxx, select(arg_1.wyx, vec3<bool>(true, arg_1.x, true), false), vec3<bool>(false, arg_2, arg_2)), vec3<bool>(any(vec2<bool>(arg_2, arg_1.x)), true, true)));
    var var_1 = true;
    return Struct_2(min(vec4<i32>(_wgslsmith_mod_i32(2441i, -44771i), -arg_0, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0), u_input.e)) >> (~vec4<u32>(u_input.b, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u)), reverseBits(-vec4<i32>(arg_0, arg_0, 22994i, arg_0))), Struct_1(all(arg_1), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, 4714u), vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 31849u)), vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.b)), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(695f, -737f)))))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = func_4(-2147483647i, vec4<bool>(select(!arg_3, arg_2.b.a, arg_2.b.a || true), func_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, arg_2.a.x, arg_2.a.x), vec3<i32>(0i, 0i, 13552i))), arg_0.b.a, false), arg_2.b.a);
    var var_1 = ~vec4<u32>(1u, ~60902u, ~_wgslsmith_dot_vec3_u32(min(arg_2.b.b.wyz, u_input.d), _wgslsmith_div_vec3_u32(var_0.b.b.yxw, vec3<u32>(4294967295u, var_0.b.b.x, 0u))), var_0.b.b.x);
    let var_2 = _wgslsmith_f_op_f32(-1068f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.c.x - -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -799f))))));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(arg_2.a, func_4(-1i, !vec4<bool>(var_3.b.a, arg_0.b.a, true, arg_1), arg_3).a), arg_2.a.x, u_input.a);
    return all(select(!(!(!vec2<bool>(false, var_3.b.a))), vec2<bool>(all(!vec4<bool>(false, arg_3, arg_2.b.a, true)), (47728u <= var_3.b.b.x) && var_0.b.a), !vec2<bool>(773f == var_3.b.c.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec3<bool>(true, true, func_1(Struct_2(vec4<i32>(u_input.a, u_input.c, -47169i, 1i), Struct_1(true, vec4<u32>(1u, 1u, u_input.d.x, u_input.b), vec2<f32>(221f, -587f))), true, Struct_2(vec4<i32>(47995i, 14041i, u_input.a, u_input.a), Struct_1(false, vec4<u32>(u_input.d.x, 29685u, u_input.b, u_input.b), vec2<f32>(1798f, -796f))), false) || (u_input.e.x == 1i)));
    let var_1 = select(!(!(!vec4<bool>(true, var_0, false, false))), !select(select(vec4<bool>(false, var_0, var_0, false), !vec4<bool>(false, var_0, true, false), vec4<bool>(true, true, false, true)), !(!vec4<bool>(var_0, false, true, var_0)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, var_0, var_0), var_0))), !var_0);
    var var_2 = false;
    var var_3 = Struct_2(-(~((vec4<i32>(-13387i, u_input.a, u_input.c, u_input.a) & vec4<i32>(u_input.c, -8888i, 21655i, 14358i)) ^ vec4<i32>(-46439i, u_input.a, 2147483647i, -37025i))), Struct_1(1u == u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(49035u, 21020u), func_4(u_input.e.x, var_1, var_0).b.b.x, u_input.d.x, ~u_input.d.x), vec4<u32>(46035u, ~u_input.b, reverseBits(u_input.d.x), _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, 1u, u_input.b, 103232u), vec4<u32>(12272u, u_input.d.x, u_input.d.x, 1u), var_1.x), min(vec4<u32>(1u, 0u, 68614u, 0u), vec4<u32>(1u, u_input.d.x, 1u, 67563u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1077f, -790f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(301f, 126f), vec2<f32>(-620f, -341f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 363f) - vec2<f32>(240f, -390f)), true)))));
    var_2 = !(!(6495u <= ~u_input.b));
    let var_4 = ~(-u_input.a);
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_3.b.c.x)))) * var_3.b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(func_4(43550i, vec4<bool>(!var_1.x, any(var_1.ywx), var_1.x, all(vec3<bool>(true, var_1.x, true))), true).b.c.x, _wgslsmith_div_f32(var_3.b.c.x, _wgslsmith_f_op_f32(step(var_3.b.c.x, _wgslsmith_f_op_f32(-var_3.b.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-832f)) - -292f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1000f, 167f, var_3.b.a)))) - _wgslsmith_f_op_f32(step(var_3.b.c.x, -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-266f * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_5)))), var_3.b.c.x, var_3.b.c.x), 953f);
}

