struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(54520u, 1u, 17412u, 4294967295u), vec4<u32>(1u, 90019u, 66582u, 31831u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(1u, 0u, 0u, 55806u), vec4<u32>(35845u, 51685u, 0u, 37868u), vec4<u32>(10171u, 31904u, 9282u, 1u), vec4<u32>(4294967295u, 17484u, 0u, 70678u), vec4<u32>(31170u, 32679u, 0u, 45287u), vec4<u32>(1u, 0u, 44010u, 1u), vec4<u32>(0u, 0u, 35201u, 1u), vec4<u32>(5553u, 73409u, 1u, 0u), vec4<u32>(0u, 4294967295u, 25812u, 4294967295u), vec4<u32>(10160u, 1u, 5191u, 4491u), vec4<u32>(39467u, 23960u, 32664u, 100687u), vec4<u32>(48263u, 997u, 1u, 1u), vec4<u32>(38044u, 6760u, 24319u, 42625u), vec4<u32>(4294967295u, 43046u, 4294967295u, 4294967295u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_mod_vec3_i32(~firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(-1i, 3177i, 0i), select(0i, 40188i, true), 3455i >> (u_input.a.x % 32u))), ~firstTrailingBit(-vec3<i32>(1i, 1i, 1i)));
    var_0 = firstLeadingBit(abs(_wgslsmith_mult_vec3_i32(max(vec3<i32>(0i, -1i, var_0.x), vec3<i32>(-8283i, -38047i, var_0.x)) & ~vec3<i32>(var_0.x, var_0.x, var_0.x), -_wgslsmith_sub_vec3_i32(vec3<i32>(15823i, -14994i, -1i), vec3<i32>(var_0.x, var_0.x, var_0.x)))));
    let var_1 = u_input.a.x;
    global0 = array<vec4<u32>, 17>();
    let var_2 = -1041f;
    return min(u_input.a.xy, vec2<u32>(~u_input.a.x, var_1));
}

fn func_2() -> bool {
    global0 = array<vec4<u32>, 17>();
    global0 = array<vec4<u32>, 17>();
    global0 = array<vec4<u32>, 17>();
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(425f)), _wgslsmith_div_f32(-170f, -271f)) - -1000f)), _wgslsmith_sub_vec2_u32(u_input.a.yz, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x)) >> (_wgslsmith_sub_vec2_u32(u_input.a.xx, u_input.a.zy) % vec2<u32>(32u)), func_3())), -1188f, ~(~_wgslsmith_sub_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, 12796u))));
    return true;
}

fn func_4(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(131f, -969f)), _wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(trunc(-1000f)), -387f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(423f, 199f, 452f, -1077f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(186f, -336f, 2650f, -383f)), vec4<f32>(-1908f, 783f, 669f, -1143f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(353f)), -1109f, -376f, _wgslsmith_f_op_f32(round(1169f)))))));
    var var_1 = all(vec2<bool>(any(select(select(vec3<bool>(false, false, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x), arg_0, arg_0.x)), arg_0.x));
    global0 = array<vec4<u32>, 17>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -130f), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-437f, 1043f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1522f, -960f, var_0.x) - vec4<f32>(var_0.x, 582f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 874f, -1037f, var_0.x))))));
    let var_2 = vec3<f32>(-133f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) - var_0.x)));
    return Struct_3((i32(-1i) * -1i) >> (u_input.a.x % 32u), -(vec3<i32>(-1i) * -vec3<i32>(-26088i, -50510i, 18574i)));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = func_4(select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(arg_0.x != arg_0.x, func_2(), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), true)));
    var_0 = Struct_3(arg_0.x >> (abs(~42439u) % 32u), var_0.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-203f - 679f))))));
    var_1 = _wgslsmith_div_f32(-311f, _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(288f - _wgslsmith_f_op_f32(f32(-1f) * -531f)), _wgslsmith_f_op_f32(f32(-1f) * -735f))));
    global0 = array<vec4<u32>, 17>();
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 17>();
    var var_0 = vec3<bool>(func_1(countOneBits(select(vec2<i32>(-54968i, -2147483647i), vec2<i32>(-13142i, 39364i), vec2<bool>(false, false)))) != u_input.a.x, all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false))), false);
    let var_1 = var_0.x;
    var var_2 = vec3<bool>(!(!(u_input.a.x != ~96448u)), ~54781i > (1i ^ func_4(vec3<bool>(true, var_0.x, var_0.x)).a), all(vec4<bool>((var_0.x && var_0.x) || any(vec4<bool>(var_0.x, true, var_0.x, true)), all(select(var_0.yz, var_0.yz, var_0.zx)), true, var_0.x)));
    var_2 = select(select(select(select(vec3<bool>(false, var_0.x, true), select(vec3<bool>(var_2.x, true, false), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false)), !var_2.x), select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_2.x, var_0.x, var_2.x), vec3<bool>(false, var_2.x, true), vec3<bool>(false, var_2.x, false)), !vec3<bool>(true, var_0.x, false)), select(vec3<bool>(var_0.x, var_2.x, false), select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_2.x)), !var_2.x)), select(!select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, true, false), vec3<bool>(var_0.x, var_2.x, true)), select(vec3<bool>(var_2.x, true, var_0.x), vec3<bool>(true, false, false), !vec3<bool>(var_0.x, var_2.x, false)), any(!vec4<bool>(var_2.x, var_0.x, false, var_0.x))), !vec3<bool>(select(true, false, var_2.x), !var_0.x, false)), select(select(vec3<bool>(var_0.x & var_2.x, var_0.x && var_2.x, u_input.a.x > u_input.a.x), select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, var_2.x), vec3<bool>(var_0.x, var_2.x, var_2.x)), !vec3<bool>(var_0.x, var_2.x, var_0.x), vec3<bool>(true, true, true)), vec3<bool>(!var_2.x, var_0.x, u_input.a.x > 4294967295u)), !vec3<bool>(!var_2.x, var_2.x | var_2.x, var_0.x), select(select(!vec3<bool>(var_2.x, true, var_0.x), !vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, true, false)), vec3<bool>(0u < u_input.a.x, !var_0.x, all(vec2<bool>(var_2.x, false))), _wgslsmith_f_op_f32(294f - 470f) > _wgslsmith_f_op_f32(trunc(710f)))), vec3<bool>(all(!select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, var_2.x, var_0.x, false), vec4<bool>(true, false, true, false))), var_2.x, var_0.x));
    var var_3 = func_4(select(select(vec3<bool>(all(vec3<bool>(var_2.x, true, false)), u_input.a.x < u_input.a.x, true), !select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_2.x, true)), select(true, var_0.x & var_2.x, true)), vec3<bool>(var_2.x, !(!var_0.x), true), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-428f, 2039f, 2013f, -173f), vec4<f32>(407f, -523f, 819f, -677f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_div_f32(-234f, 2246f), _wgslsmith_f_op_f32(-374f + -1219f), _wgslsmith_f_op_f32(abs(-102f)))) - vec4<f32>(_wgslsmith_f_op_f32(-648f * -1348f), 197f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-706f)))), _wgslsmith_f_op_f32(abs(-490f)))), var_3.a, u_input.a.x, ~(~select(u_input.a.xy, ~u_input.a.yy, !var_2.x)));
}

