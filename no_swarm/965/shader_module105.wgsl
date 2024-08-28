struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 35167i;

var<private> global2: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec3<bool> {
    return vec3<bool>(true, false, true);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = u_input.e.x ^ _wgslsmith_clamp_i32(-u_input.b.x, select(-92465i, -1i, arg_1.x), -u_input.c);
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~(~12227u), firstTrailingBit(arg_2.x)), arg_2.x, ~min(arg_3.x, 36366u)), ~arg_3.wxz);
    var var_1 = _wgslsmith_f_op_f32(-314f * arg_0);
    var var_2 = -15828i;
    let var_3 = Struct_1(false, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + 1260f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0)))), any(arg_1.yy)))));
    return var_3;
}

fn func_3(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(!((0u < u_input.a) | true), 784f, 691f);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-487f, 1911f, var_0.b))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, 815f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -2138f, 1603f) * vec3<f32>(948f, -1372f, var_0.c)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b) - vec3<f32>(var_0.b, 420f, var_0.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c, var_0.b, -953f), vec3<f32>(1550f, -1516f, -1000f))) - vec3<f32>(-489f, -1833f, var_0.c)) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(2079f + var_0.c)))), true));
    global0 = arg_0;
    var var_2 = Struct_1(!var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1095f, var_1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1227f + _wgslsmith_f_op_f32(step(var_0.b, var_1.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(843f + 233f)))))));
    global2 = false | !(u_input.d >= ~(~u_input.d));
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -171f)), _wgslsmith_f_op_f32(select(func_2(-383f, func_1(), firstTrailingBit(abs(vec3<u32>(97302u, 4294967295u, u_input.a))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.d, u_input.d, u_input.a), vec4<u32>(53573u, u_input.d, u_input.a, u_input.a), vec4<u32>(32075u, 58584u, 68857u, 0u)))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f)), select(true != all(vec2<bool>(var_2.a, var_0.a)), !all(vec2<bool>(true, var_2.a)), any(vec2<bool>(true, false))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<i32> {
    let var_0 = arg_2.b;
    var var_1 = arg_3.zy;
    var var_2 = abs(max(~vec4<u32>(~u_input.d, select(1u, arg_1, true), firstTrailingBit(57395u), 83276u), abs(vec4<u32>(~50428u, u_input.d, 1u, u_input.a))));
    var var_3 = vec4<bool>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0i).c * _wgslsmith_f_op_f32(floor(-241f)))), arg_3.xzy, var_2.xzx, vec4<u32>(max(var_2.x, ~u_input.a), var_2.x, _wgslsmith_div_u32(var_2.x, 39387u << (0u % 32u)), var_2.x | firstLeadingBit(var_2.x))).a, !(var_2.x < arg_1), arg_0.a, arg_2.b < -394f);
    let var_4 = ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_2.x), vec3<u32>(arg_1, 4294967295u, var_2.x)), var_2.wzz));
    return u_input.e.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1808f, -919f)))), -399f)), func_1(), vec3<u32>(_wgslsmith_mod_u32(1u, u_input.a), 30911u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 0u, u_input.a), vec4<u32>(u_input.a, 30977u, u_input.d, u_input.a)) & firstLeadingBit(u_input.d))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, u_input.d, 105922u, 20007u)), vec4<u32>(~u_input.d, 27871u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.d)), _wgslsmith_mod_u32(1596u, u_input.d))), vec4<u32>(~u_input.a & 1u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(13106u, u_input.a), vec2<u32>(u_input.a, 4294967295u))), u_input.d, abs(47047u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.b ^ func_4(func_2(var_0.c, vec3<bool>(var_0.a, true, false), vec3<u32>(44032u, u_input.d, u_input.d), vec4<u32>(u_input.a, 14901u, 1u, u_input.d)), ~96859u, func_3(-12354i), !vec4<bool>(true, var_0.a, false, var_0.a))));
}

