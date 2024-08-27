struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec3<f32> {
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_0 = Struct_3(~_wgslsmith_sub_u32(87834u, 1u), ~1u, arg_0.x);
    var var_1 = firstTrailingBit(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(61770u, 1u), vec2<u32>(0u, var_0.b)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 69580u, 6915u, 16665u), vec4<u32>(var_0.a, 68252u, 0u, var_0.b)) % 32u), ~min(4294967295u, var_0.b), 1u, var_0.b)));
    let var_2 = Struct_2(var_1.x, countOneBits(var_1.x << (var_1.x % 32u)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -679f), _wgslsmith_div_f32(379f, 201f), arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-164f, arg_1, _wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(363f - arg_1), arg_1) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 288f) - vec3<f32>(-909f, -576f, arg_1)))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = Struct_1(1379f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) + arg_1.xz))), vec2<f32>(arg_1.x, -2098f), !(arg_0 > _wgslsmith_add_i32(arg_0, 1i)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), max(-12631i, arg_0) < 1i), !all(vec3<bool>(false, true, true)) | (arg_1.x < arg_1.x)));
    let var_1 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.a))) - -772f));
    let var_2 = global0[_wgslsmith_index_u32(~firstLeadingBit(7944u), 23u)];
    let var_3 = var_2.a;
    var var_4 = _wgslsmith_f_op_f32(-1321f - _wgslsmith_f_op_f32(step(arg_1.x, 1000f)));
    return select(var_0.c, !var_0.c, !(!var_0.c));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_2(arg_0.x, min(5107u, _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.x, arg_0.x, reverseBits(arg_0.x)), arg_0.xzy)));
    var var_1 = false;
    var var_2 = select(vec2<bool>(true, any(vec2<bool>(false, true))), select(func_4(-2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), 1000f)))), select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(all(vec4<bool>(false, true, false, false)), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), all(vec3<bool>(true, true, true))), func_4(u_input.a & -1i, vec3<f32>(1f, 1f, 1f)).x);
    var_2 = !vec2<bool>(true, var_2.x);
    var_2 = !select(func_4(~abs(4551i), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(509f, 160f, -1000f), vec3<f32>(-461f, 1000f, -2098f)))), select(vec2<bool>(func_4(u_input.a, vec3<f32>(-627f, -1000f, 1263f)).x, func_4(u_input.a, vec3<f32>(-1814f, -474f, 796f)).x), !(!vec2<bool>(var_2.x, var_2.x)), !select(var_2.x, var_2.x, true)), true);
    return 1u;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<i32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(1u << ((func_2(vec4<u32>(1u, 1u, 1u, 1u)) | 48733u) % 32u), 23u)];
    global0 = array<Struct_2, 23>();
    var var_1 = ~(~vec4<u32>(_wgslsmith_div_u32(46327u, 67180u), ~var_0.a, ~25541u, _wgslsmith_div_u32(var_0.b, var_0.b))) | ((vec4<u32>(var_0.b, 1u, var_0.a & var_0.b, _wgslsmith_clamp_u32(var_0.b, var_0.a, 1535u)) ^ ~abs(vec4<u32>(var_0.b, var_0.b, var_0.a, 4294967295u))) | ~vec4<u32>(var_0.a << (var_0.a % 32u), ~var_0.a, countOneBits(55022u), var_0.a & 17868u));
    let var_2 = abs(-_wgslsmith_dot_vec2_i32(arg_2.ww, arg_2.xy));
    var var_3 = Struct_3(var_0.a, max(func_2(vec4<u32>(var_0.b, ~var_1.x, max(0u, 0u), 0u)), var_1.x), -4666i);
    return 7829u;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>) -> vec2<bool> {
    global0 = array<Struct_2, 23>();
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(2228u), 23u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-167f, -2103f, u_input.a == arg_0.c))) + 387f));
    global0 = array<Struct_2, 23>();
    var var_2 = vec4<bool>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1235f)))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(832f)))), true);
    return select(vec2<bool>(true, true), vec2<bool>(true, !(!any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(37937u, 1u);
    let var_1 = vec2<bool>(-((-1i << (var_0 % 32u)) | -1i) <= -u_input.a, any(func_5(Struct_3(~4294967295u, func_1(true, vec2<f32>(-1302f, 262f), vec4<i32>(0i, u_input.a, -12181i, 1i)), -2147483647i), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)))));
    var var_2 = -315f;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(-(vec4<i32>(u_input.a, -15301i, u_input.a, 29338i) << (vec4<u32>(var_0, 8672u, var_0, var_0) % vec4<u32>(32u))), _wgslsmith_f_op_f32(ceil(-640f)))).x)), _wgslsmith_f_op_f32(abs(926f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(314f, _wgslsmith_f_op_f32(-399f - 208f), 1000f, -1407f), !(!vec4<bool>(true, false, true, var_1.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-604f, 288f, -443f, -146f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, -635f, 871f, -1807f)))), vec4<f32>(_wgslsmith_f_op_f32(501f - _wgslsmith_f_op_f32(2157f - 2841f)), -497f, -2044f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-696f, -636f)), _wgslsmith_f_op_f32(f32(-1f) * -432f)))), !vec4<bool>(var_1.x, false, var_1.x, var_1.x)))));
    var var_4 = -157f;
    var var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-399f - _wgslsmith_f_op_f32(-787f - var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, u_input.a, -u_input.a, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_3.x)), 616f, 1f == _wgslsmith_f_op_f32(round(var_3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1568f)));
}

