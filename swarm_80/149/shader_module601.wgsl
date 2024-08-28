struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = !(!vec2<bool>(any(vec2<bool>(false, true)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)))));
    let var_1 = arg_0;
    var_0 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1427f - 112f), -2095f) == _wgslsmith_f_op_f32(trunc(-842f)), true);
    global0 = ~(_wgslsmith_dot_vec2_u32(~(vec2<u32>(4294967295u, 23238u) | var_1.a.zy), var_1.a.wz ^ vec2<u32>(arg_1.a.x, 66205u)) | var_1.a.x);
    var var_2 = !select(!vec3<bool>(true, all(vec3<bool>(false, false, false)), var_0.x), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, false, false), var_0.x), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), false), vec3<bool>(var_0.x, false, var_0.x), true), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true), vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x))), select(select(vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, var_0.x, false), var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(var_0.x, false, var_0.x), select(!vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), true)));
    return var_1.a;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(~select(func_3(Struct_1(vec4<u32>(arg_0.a.x, arg_0.a.x, 90070u, 66368u), arg_0.b, 3018i), arg_0, vec2<f32>(-1940f, arg_0.b), vec2<i32>(-2147483647i, -1106i)), countOneBits(vec4<u32>(0u, 11033u, 54664u, arg_0.a.x)), false), reverseBits(arg_0.a), ~(arg_0.a << (arg_0.a % vec4<u32>(32u)))), -419f, 3409i);
    var var_1 = _wgslsmith_dot_vec2_i32(firstLeadingBit(~max(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-49504i, -1i), true), vec2<i32>(arg_0.c, u_input.a) & vec2<i32>(u_input.b, arg_0.c))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i) | vec2<i32>(var_0.c, arg_0.c), vec2<i32>(32336i, u_input.b)), var_0.c) << (vec2<u32>(max(_wgslsmith_sub_u32(var_0.a.x, arg_0.a.x), 1u), 10388u) % vec2<u32>(32u)));
    let var_2 = ~_wgslsmith_add_vec2_u32(firstTrailingBit(func_3(Struct_1(vec4<u32>(19973u, 37631u, 55363u, 64176u), 805f, -1i), arg_0, vec2<f32>(-755f, arg_0.b), vec2<i32>(62077i, -2147483647i)).yx & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_0.a.wz)), ~var_0.a.wx);
    let var_3 = arg_0;
    var_1 = 0i;
    return var_3.a.xyz;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = countOneBits(~max(_wgslsmith_sub_u32(1u, 1u >> (1u % 32u)), countOneBits(~4294967295u)));
    global0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, _wgslsmith_sub_u32(1u, var_0), _wgslsmith_div_u32(var_0, var_0)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(4101u, 4294967295u, 45199u)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_0, 1u), vec3<u32>(var_0, 1u, var_0)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(0u, var_0, var_0)), _wgslsmith_add_vec3_u32(vec3<u32>(29029u, 56219u, 0u), vec3<u32>(13773u, 1007u, var_0))), select(~vec3<u32>(var_0, var_0, var_0), func_2(Struct_1(vec4<u32>(var_0, var_0, var_0, 4294967295u), 240f, u_input.b)), arg_0.x)));
    var var_1 = arg_0.wxz;
    global0 = 1u;
    let var_2 = (~(~vec4<u32>(37591u, var_0, 0u, var_0)) ^ (~(~vec4<u32>(var_0, var_0, var_0, var_0)) & firstTrailingBit(vec4<u32>(42333u, 30486u, 38756u, var_0)))) << (vec4<u32>(var_0, var_0, ~(~(~45013u)), var_0) % vec4<u32>(32u));
    return Struct_1(var_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1454f))) * -1198f))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!select(vec4<bool>(true, select(true, false, true), false, any(vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), true));
    let var_1 = Struct_1(vec4<u32>(abs(~(77993u | var_0.a.x)), ~(~4294967295u), func_1(vec4<bool>(true, true, select(false, true, false), true)).a.x, (~var_0.a.x >> (~4294967295u % 32u)) << (~16442u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b, -1351f)) + _wgslsmith_f_op_f32(exp2(var_0.b))), min(-2147483647i, -u_input.b));
    var var_2 = var_0.b;
    var var_3 = _wgslsmith_div_u32(_wgslsmith_div_u32(~var_0.a.x, ~(4294967295u ^ var_0.a.x)), firstTrailingBit(_wgslsmith_div_u32(2202u, 1u)));
    var var_4 = ~(~var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(var_1.c, abs(var_1.c)), _wgslsmith_div_u32(~(~var_1.a.x), firstLeadingBit(var_1.a.x) << (_wgslsmith_add_u32(var_0.a.x, var_1.a.x) % 32u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(344f, var_0.b, 553f), vec3<f32>(var_0.b, -171f, -1821f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b, var_1.b, -670f))))), vec3<f32>(-438f, -488f, _wgslsmith_f_op_f32(var_1.b - 1190f))))), 0i);
}

