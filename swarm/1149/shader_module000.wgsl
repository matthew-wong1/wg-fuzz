struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(22640u, 4372u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(668f, _wgslsmith_f_op_f32(max(462f, -1491f)), _wgslsmith_f_op_f32(f32(-1f) * -1339f), _wgslsmith_f_op_f32(509f * -1152f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(157f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f) * _wgslsmith_f_op_f32(round(-187f))), 464f, 125f)));
    var var_1 = 1i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -886f) * _wgslsmith_f_op_f32(var_0.x - 1000f)), _wgslsmith_f_op_f32(floor(var_0.x)))));
    let var_3 = 369u;
    let var_4 = Struct_1(select(~(~abs(arg_0.a)), select(reverseBits(min(vec2<u32>(62272u, global0.x), vec2<u32>(global0.x, arg_0.a.x))), vec2<u32>(1u, ~arg_0.a.x), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))))));
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = u_input.b.zy;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 1667f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1202f, 232f), vec2<f32>(-1212f, -278f), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 757f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-921f, 1328f), vec2<f32>(-492f, -1882f)), vec2<f32>(1f, 1f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-557f, -1405f) + vec2<f32>(-721f, 562f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(249f, 509f), vec2<f32>(1054f, -212f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(612f, 453f))))));
    var var_1 = -2147483647i;
    var var_2 = true;
    var_2 = !any(vec4<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), true, true));
    return _wgslsmith_f_op_f32(var_0.x - -1185f);
}

fn func_1(arg_0: u32) -> vec3<bool> {
    var var_0 = func_2(Struct_1(firstTrailingBit(~vec2<u32>(global0.x, 1u) ^ u_input.b.yx)));
    var_0 = func_2(Struct_1(abs(u_input.b.zz) >> (vec2<u32>(_wgslsmith_mod_u32(u_input.c, global0.x), 5906u) % vec2<u32>(32u))));
    var_0 = Struct_1(u_input.b.yy);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-766f + _wgslsmith_f_op_f32(func_3(func_2(Struct_1(u_input.a.xw))))) - -370f);
    let var_2 = Struct_1(vec2<u32>(~_wgslsmith_add_u32(arg_0, 117816u), _wgslsmith_dot_vec3_u32(~u_input.a.www, vec3<u32>(reverseBits(global0.x), u_input.a.x, arg_0 ^ 50227u))));
    return select(vec3<bool>(true, true, true), select(vec3<bool>(!all(vec3<bool>(false, true, true)), true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), select(vec3<bool>(true, true, true), vec3<bool>(474f > var_1, true, true), vec3<bool>(true, select(false, true, false), all(vec2<bool>(false, false)))), true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = vec2<u32>(arg_3.a.x, 0u << (u_input.c % 32u));
    global0 = vec2<u32>(32060u, _wgslsmith_clamp_u32(~(~(4294967295u | u_input.b.x)), 0u, arg_3.a.x));
    global0 = u_input.b.zz;
    var var_0 = select(arg_2, arg_2, select(vec3<bool>(false, arg_2.x, !(arg_0 == 107f)), select(select(vec3<bool>(false, true, arg_2.x), !arg_2, true), arg_2, true), arg_2.x));
    global0 = ~u_input.a.yy;
    return Struct_1(~_wgslsmith_clamp_vec2_u32(arg_3.a, vec2<u32>(_wgslsmith_clamp_u32(125717u, u_input.b.x, 0u), u_input.c | u_input.c), ~vec2<u32>(u_input.b.x, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(1365f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(355f - 156f), _wgslsmith_f_op_f32(max(1100f, -1195f)), any(vec3<bool>(true, false, true)))))), -16676i, func_1(_wgslsmith_add_u32(global0.x, 4294967295u)), Struct_1(u_input.b.zz));
    global0 = u_input.b.xy & (_wgslsmith_mod_vec2_u32(abs(vec2<u32>(25784u, var_0.a.x)), _wgslsmith_clamp_vec2_u32(u_input.a.wx, func_4(559f, 33330i, vec3<bool>(true, false, false), Struct_1(u_input.a.zy)).a, vec2<u32>(global0.x, 19567u))) >> ((_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.xw, var_0.a), vec2<u32>(var_0.a.x, 0u)) & ~var_0.a) % vec2<u32>(32u)));
    global0 = u_input.a.xy;
    global0 = var_0.a;
    let var_1 = firstTrailingBit(firstLeadingBit(i32(-1i) * -19854i));
    let var_2 = u_input.a;
    global0 = max(select((select(vec2<u32>(u_input.b.x, 25769u), vec2<u32>(43895u, 1u), vec2<bool>(false, true)) & vec2<u32>(1u, 4294967295u)) | vec2<u32>(1u, _wgslsmith_clamp_u32(var_2.x, global0.x, 4294967295u)), u_input.b.yy, vec2<bool>(true, true)), countOneBits(~max(var_0.a, vec2<u32>(1u, 1u))) & ~select(vec2<u32>(global0.x, 4294967295u), vec2<u32>(var_0.a.x, 0u), func_1(0u).zy));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-819f, _wgslsmith_f_op_f32(sign(-196f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1405f, -350f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(465f, -429f), vec2<f32>(1000f, -548f), false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1432f, -953f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1544f * var_3.x), _wgslsmith_f_op_f32(-1000f - var_3.x)), var_3.x)), var_3.x, ~(~(-_wgslsmith_div_vec3_i32(vec3<i32>(var_1, var_1, 14260i), vec3<i32>(28051i, 0i, var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-689f, var_3.x))), abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(2147483647i, -1i)), ~(-1i))) ^ var_1);
}

