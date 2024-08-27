struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_div_u32(~(~(~59228u)), firstTrailingBit(_wgslsmith_div_u32(0u, u_input.c)) | 1u));
    let var_1 = all(!select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, var_0.a == global0.a, select(false, false, false)), true));
    global0 = Struct_3(var_0.a);
    global0 = Struct_3(global0.a);
    let var_2 = Struct_3(_wgslsmith_mult_u32(select(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a, u_input.c), vec2<u32>(6735u, 1u)), firstTrailingBit(vec2<u32>(var_0.a, 4294967295u))), 4294967295u, any(vec4<bool>(var_1, true, true, false))), abs(0u)));
    return ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 57520u, 0u, global0.a), ~vec4<u32>(83813u, var_0.a, var_0.a, var_2.a)) ^ vec4<u32>(_wgslsmith_sub_u32(15669u, reverseBits(u_input.c)), ~0u | _wgslsmith_mult_u32(global0.a, 25984u), reverseBits(reverseBits(1u)), ~(26743u << (var_2.a % 32u))));
}

fn func_2() -> vec4<bool> {
    global0 = Struct_3(u_input.c);
    let var_0 = reverseBits(_wgslsmith_mult_u32(countOneBits(~4294967295u >> (~u_input.c % 32u)), ~abs(16137u) | (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, u_input.c, 47733u), vec3<u32>(4294967295u, u_input.c, u_input.c)) | ~4520u)));
    let var_1 = Struct_2(~u_input.a, vec4<u32>(~(4294967295u << (u_input.c % 32u)), ~(~20019u), _wgslsmith_div_u32(u_input.c, global0.a), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(var_0, global0.a, global0.a, 50144u)), ~func_3())), !select(false, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1303f, 1195f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1846f, -219f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-977f, -1000f))))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(2540f, _wgslsmith_f_op_f32(trunc(418f))), vec2<bool>(true, true)))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(max(-1514f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1537f * var_1.d.x) + 177f))))));
    global0 = Struct_3(max(_wgslsmith_clamp_u32(abs(abs(var_0)), global0.a & (u_input.c & 0u), max(countOneBits(var_0), ~4294967295u)), ~firstLeadingBit(4294967295u)));
    return vec4<bool>(all(select(select(!vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, true), select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, var_1.c), var_1.c)), vec2<bool>(false, var_1.c), false)), true, !var_1.c, false);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: bool, arg_3: vec4<bool>) -> bool {
    global0 = Struct_3(arg_0);
    global0 = arg_1;
    global0 = Struct_3(15536u);
    global0 = Struct_3(func_3().x);
    global0 = Struct_3(abs(~1u));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1075f, _wgslsmith_f_op_f32(1000f + 1041f), all(arg_3)))), _wgslsmith_f_op_f32(-2370f + -781f)) > _wgslsmith_f_op_f32(713f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-130f))))));
}

fn func_1() -> vec2<bool> {
    var var_0 = !vec4<bool>(!select(true, false, true) || true, !func_4(~0u, Struct_3(13410u), false, func_2()), !(true | all(vec4<bool>(false, false, true, false))), 1u >= _wgslsmith_sub_u32(global0.a, abs(105596u)));
    global0 = Struct_3(func_3().x);
    let var_1 = vec2<bool>((_wgslsmith_f_op_f32(select(-1130f, -1635f, var_0.x)) >= -2661f) && true, !var_0.x);
    var_0 = !(!vec4<bool>(var_1.x, !(global0.a == 0u), true, var_1.x || var_0.x));
    return var_0.yz;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> vec4<f32> {
    global0 = Struct_3(17048u);
    var var_0 = global0.a;
    var_0 = u_input.c;
    var var_1 = vec2<bool>(false, all(select(!select(arg_1.wxy, arg_0, arg_1.xzx), vec3<bool>(!arg_2.x, any(vec4<bool>(true, true, arg_0.x, arg_1.x)), any(vec3<bool>(arg_2.x, arg_0.x, arg_1.x))), vec3<bool>(all(arg_1.zy), u_input.a == u_input.b.x, true))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-365f)))))), _wgslsmith_f_op_f32(-580f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1018f))) - -869f))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1342f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1585f - -1559f) + -1374f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -880f))), -1059f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(vec3<bool>(true, any(vec4<bool>(false, false, true, true)), (global0.a >> (global0.a % 32u)) != _wgslsmith_sub_u32(global0.a, 36885u)), vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), u_input.c >= 71258u, any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), all(vec4<bool>(true, true, true, true))), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), func_1()))));
    global0 = Struct_3(~0u);
    let var_1 = ~(~_wgslsmith_dot_vec4_u32(abs(countOneBits(vec4<u32>(45747u, 3635u, u_input.c, 13804u))), _wgslsmith_div_vec4_u32(vec4<u32>(80002u, global0.a, 24764u, 1u), vec4<u32>(global0.a, 0u, 1u, 7380u) & vec4<u32>(1u, global0.a, 4294967295u, 6215u))));
    var var_2 = any(func_2().xyy);
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, 6520u, (23561u >> (abs(var_1 ^ u_input.c) % 32u)) << (u_input.c % 32u), u_input.c, ((vec4<i32>(1i, 7403i, -48014i, 2147483647i) | abs(vec4<i32>(-65856i, 1i, 1i, u_input.a))) ^ vec4<i32>(-19067i, -28954i, u_input.b.x, abs(u_input.b.x))) << (select(~(vec4<u32>(0u, u_input.c, 51161u, 51655u) >> (vec4<u32>(global0.a, 1u, 3930u, 68978u) % vec4<u32>(32u))), vec4<u32>(global0.a, u_input.c, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(31094u, global0.a, 77036u, 4294967295u), vec4<u32>(7076u, u_input.c, var_1, var_1))), vec4<bool>(select(true, true, false), false, true, true)) % vec4<u32>(32u)));
}

