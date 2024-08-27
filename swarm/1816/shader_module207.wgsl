struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32, arg_3: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(arg_0.c.a.x + _wgslsmith_f_op_f32(min(arg_2, arg_0.b.a.x))), arg_0.b.a.x, -1909f) + vec4<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(max(800f, -288f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1209f)) + _wgslsmith_div_f32(-1132f, -213f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f))), arg_0.c.a.x));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(-468f, 1050f)), _wgslsmith_f_op_f32(abs(404f)), arg_0.b.a.x, -1507f);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1205f);
    let var_2 = arg_0.b;
    var var_3 = 19337i;
    return _wgslsmith_sub_vec3_u32(vec3<u32>(27940u, ~u_input.c, select(59691u, arg_3 ^ select(arg_3, 1u, arg_0.a), all(select(vec4<bool>(arg_0.a, true, false, false), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), arg_0.a)))), vec3<u32>(firstLeadingBit(513u), 0u, u_input.c));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), arg_1 > arg_1)));
    var_0 = !select(vec2<bool>(!var_0.x, !var_0.x), vec2<bool>(any(vec4<bool>(false, var_0.x, false, false)), true), false);
    global0 = any(select(vec2<bool>(var_0.x, var_0.x), !select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false)), any(vec3<bool>(true, true, var_0.x))), !var_0.x));
    let var_1 = vec2<bool>(!(!(arg_1 <= arg_1) | true), true);
    var_0 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -1000f)), -511f) + arg_1);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: u32) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1547f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-765f, -729f), _wgslsmith_f_op_f32(198f * 423f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-754f)) * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(u_input.a, arg_1.x, 4294967295u)), _wgslsmith_f_op_f32(1674f * -206f), Struct_1(vec3<u32>(arg_1.x, arg_0.x, arg_2))))) + 697f), -1000f, vec4<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x & -2147483647i, -1i, 2147483647i), _wgslsmith_sub_vec3_i32(u_input.b.zzz, vec3<i32>(-48608i, -2147483647i, u_input.b.x)) ^ firstLeadingBit(vec3<i32>(1i, 2147483647i, u_input.b.x))), abs(u_input.b.x) >> (reverseBits(reverseBits(0u)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c;
    global0 = true;
    let x = u_input.a;
    s_output = func_2(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_0, 68796u, u_input.a | 27734u)), ~select(vec3<u32>(21547u, u_input.a, var_0), vec3<u32>(var_0, u_input.a, u_input.c), vec3<bool>(true, false, true)) | firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 15692u, var_0), vec3<u32>(33794u, 9219u, 4294967295u)))), abs(~(~func_1(Struct_3(false, Struct_2(vec2<f32>(554f, -2224f)), Struct_2(vec2<f32>(1003f, 1653f))), vec3<i32>(-17993i, u_input.b.x, -16647i), 2499f, var_0))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(126867u, 35858u)), ~vec2<u32>(u_input.a, var_0)), vec2<u32>(~0u, _wgslsmith_clamp_u32(u_input.c, 4294967295u, _wgslsmith_div_u32(0u, 1u)))));
}

