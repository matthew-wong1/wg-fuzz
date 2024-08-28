struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = false;
    global0 = !(!all(select(!vec2<bool>(var_0, true), !vec2<bool>(var_0, true), select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(false, false)))));
    return select(vec4<bool>(!(var_0 || any(vec4<bool>(true, false, true, false))), any(vec4<bool>(true, true, true, true || var_0)), var_0, var_0), select(vec4<bool>(true, false, var_0, false), vec4<bool>(all(vec3<bool>(var_0, true, true)), any(select(vec3<bool>(var_0, var_0, false), vec3<bool>(true, false, var_0), var_0)), all(!vec2<bool>(false, var_0)), true), !var_0), select(vec4<bool>(true, var_0, true, !(false && var_0)), !(!select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(true, false, var_0, true), var_0)), var_0));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    global0 = !any(vec3<bool>(true, true, any(func_3())));
    let var_0 = 862f;
    var var_1 = any(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), true)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * -269f) * -1287f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1886f - var_0))), 1169f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(422f, var_0, -2036f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-450f, -704f, 750f))))));
    global0 = false;
    return abs(min(1u >> (1u % 32u), arg_1.x));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1441f * 1996f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1167f, 625f, true)))))));
    global0 = !(!arg_0);
    global0 = arg_1.a.a;
    let var_1 = -340f;
    var var_2 = arg_1.a;
    return Struct_1(any(select(select(vec2<bool>(true, true), !vec2<bool>(true, arg_1.a.a), !vec2<bool>(var_2.a, arg_1.a.a)), select(!vec2<bool>(arg_2.a, true), vec2<bool>(arg_2.a, arg_0), !vec2<bool>(arg_0, true)), vec2<bool>(true, arg_2.a))), var_2.b, abs(vec2<u32>(func_2(-22583i, vec3<u32>(4294967295u, 42551u, var_2.c.x), 30140u) << (reverseBits(arg_2.c.x) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(20987u, arg_1.a.c.x, 18187u), vec3<u32>(36576u, arg_2.d, 4294967295u)))), var_2.d);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    var var_0 = vec3<i32>(~(~arg_0 << (5204u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0, arg_2.b.x), vec2<i32>(-64323i, arg_1.b.x), true) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(20576i, 1i), arg_2.b.xy), _wgslsmith_sub_vec2_i32(~u_input.a.yw, vec2<i32>(-44334i, 1i))), 2147483647i, arg_1.b.x), -(~u_input.a.x));
    global0 = all(select(vec4<bool>(false, !(true || arg_2.a), true, false), vec4<bool>(!arg_2.a, true, true, arg_1.a), false));
    var_0 = vec3<i32>(29809i, max(-var_0.x, _wgslsmith_clamp_i32(0i, -56983i, -2147483647i)), _wgslsmith_dot_vec3_i32(-arg_1.b, vec3<i32>(~1i, arg_0, _wgslsmith_div_i32(-1i, -2147483647i))));
    let var_1 = abs(u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -1476f, 989f))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 396f, -788f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(676f, -1166f, -395f), vec3<f32>(-1218f, 286f, 1095f)))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-371f, 646f, 204f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(293f, -1193f, -600f), vec3<f32>(-838f, 260f, -1026f), true))), vec3<f32>(691f, _wgslsmith_div_f32(1896f, 379f), _wgslsmith_f_op_f32(step(-1328f, -876f)))))));
    return Struct_3(~func_1(arg_1.a, Struct_2(arg_1), arg_2).d, any(!select(!vec2<bool>(true, arg_1.a), vec2<bool>(true, true), arg_2.a)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = max(~(~vec3<u32>(0u, 22335u, _wgslsmith_mod_u32(0u, 4294967295u))), vec3<u32>(_wgslsmith_add_u32(abs(6725u), 1u << (1u % 32u)), ~_wgslsmith_sub_u32(arg_2.a.d, 0u) & ~_wgslsmith_add_u32(arg_1.a, arg_2.a.d), 2301u | arg_1.a));
    let var_1 = 0u;
    let var_2 = min(var_0.x, ~(func_4(0i, Struct_1(arg_1.b, arg_2.a.b, vec2<u32>(var_0.x, 1u), arg_2.a.c.x), Struct_1(true, u_input.a.zxx, arg_2.a.c, arg_2.a.d)).a | ~0u) >> (~arg_2.a.c.x % 32u));
    var var_3 = !vec4<bool>((var_1 < (var_0.x << (arg_1.a % 32u))) | false, false, true && all(func_3().zyw), !(!arg_1.b));
    var_3 = !(!(!vec4<bool>(true && arg_2.a.a, false, true, true)));
    return vec2<bool>(_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(var_2, arg_1.a, 0u))), _wgslsmith_clamp_u32(40872u, 1u, firstTrailingBit(arg_2.a.d))) > _wgslsmith_clamp_u32(25320u, func_4(0i, func_1(true, Struct_2(Struct_1(false, u_input.a.yxx, vec2<u32>(4294967295u, var_0.x), var_2)), arg_2.a), arg_2.a).a, var_2), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_5(~u_input.a.wxz, func_4(countOneBits(1i), func_1(u_input.a.x != -301i, Struct_2(Struct_1(false, u_input.a.wyx, vec2<u32>(1u, 51159u), 22825u)), Struct_1(true, u_input.a.yyz, vec2<u32>(1u, 30379u), 1u)), Struct_1(any(vec2<bool>(true, false)), -u_input.a.yxx, ~vec2<u32>(47845u, 39796u), ~1u)), Struct_2(Struct_1(true, -u_input.a.xxx, ~vec2<u32>(83942u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(51751u, 0u), vec2<u32>(21237u, 30426u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-741f - _wgslsmith_f_op_f32(floor(-1052f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(777f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + 108f))))));
    let var_2 = 5671u;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-408f + _wgslsmith_f_op_f32(f32(-1f) * -167f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2233f, -970f)) * _wgslsmith_f_op_f32(1006f + -415f))))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -956f), 2225f, false))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

