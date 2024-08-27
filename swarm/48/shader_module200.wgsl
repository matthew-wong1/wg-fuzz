struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f)))))), 657f);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(245f + 2341f), vec3<u32>(_wgslsmith_mod_u32(~u_input.b, 0u), ~abs(reverseBits(26054u)), ~58294u));
    var var_1 = Struct_1(u_input.c.x >= -2147483647i);
    let var_2 = Struct_1(var_1.a);
    let var_3 = false | (all(!select(vec2<bool>(var_2.a, var_1.a), vec2<bool>(true, false), vec2<bool>(false, false))) & true);
    return ~36553u;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_2(-284f, vec3<u32>(arg_0, ~func_3(), arg_1));
    return select(vec2<bool>(true, false), vec2<bool>(any(vec2<bool>(true, false)) || false, false), all(!select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = -562f;
    let var_0 = select(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), func_2(u_input.a.x, 0u), vec2<bool>(!all(vec3<bool>(false, false, false)), true)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), all(vec2<bool>(true, true)));
    global0 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -145f))));
    let var_1 = ~u_input.c.x << (~4294967295u % 32u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -1347f))) - _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(arg_0 * 1358f))) * -1029f));
    return Struct_2(arg_0, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(vec3<u32>(~(~u_input.b), countOneBits(abs(u_input.b)), u_input.b), vec3<u32>(~4294967295u, 79532u, abs(u_input.a.x)) | _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(94166u, 9786u, 21042u)), ~u_input.a), vec3<bool>(true, true, false));
    var var_1 = ~(-(u_input.c.x << (u_input.b % 32u)) | u_input.c.x);
    var var_2 = ~min(u_input.a.xx, ~(~reverseBits(u_input.a.yx)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(727f, 728f, -1700f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-495f, -1000f, -1022f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1299f, -472f, 549f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1107f, 590f, 1000f)))))))));
    var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b ^ var_2.x, 50238u), var_0.zy);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(f32(-1f) * -1788f)), -173f);
    var var_4 = func_1(var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-129f, 560f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_3.xx)))))), var_3, vec3<i32>(i32(-1i) * -1i, -((i32(-1i) * -9324i) & u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, abs(-2147483647i), ~u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<i32>(u_input.c.x, 4822i, u_input.c.x, u_input.c.x) ^ vec4<i32>(1i, -35331i, -1i, 2147483647i)))), ~_wgslsmith_clamp_u32(45329u, 1u, var_4.b.x));
}

