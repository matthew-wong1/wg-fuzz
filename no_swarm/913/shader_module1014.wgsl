struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> u32 {
    var var_0 = ~u_input.a.zx;
    var var_1 = false;
    var_1 = true;
    var_1 = false;
    let var_2 = u_input.d;
    return abs(~46284u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<f32> {
    let var_0 = Struct_3(4294967295u, _wgslsmith_mult_vec2_u32(vec2<u32>(~func_3(Struct_1(arg_1, 36116i, u_input.b, arg_0.d, u_input.c), arg_0.d, Struct_2(arg_0.d, Struct_1(arg_0.a, arg_0.e, u_input.c, true, -1i), arg_0)), abs(1u)), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.a.x, 1u), vec2<u32>(4294967295u, u_input.d)), ~abs(vec2<u32>(4294967295u, u_input.d)), u_input.a.xx)), 1369i < firstTrailingBit(arg_0.c), 335f, Struct_2(arg_0.d, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), -717f, _wgslsmith_div_f32(arg_0.a.x, 1156f)), _wgslsmith_mod_i32(_wgslsmith_div_i32(-35799i, u_input.c), _wgslsmith_clamp_i32(u_input.b, arg_0.e, -2147483647i)), abs(_wgslsmith_sub_i32(u_input.b, -1i)), any(select(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), vec4<bool>(true, true, true, arg_0.d), vec4<bool>(true, false, arg_0.d, arg_0.d))), -countOneBits(arg_0.b)), arg_0));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xy, vec2<u32>(var_0.a, 3076u)), u_input.a.yy), reverseBits(var_0.b & u_input.a.zz))), var_0.b.x & ~firstLeadingBit(69583u));
    var_1 = _wgslsmith_div_u32(var_0.b.x ^ _wgslsmith_mult_u32(u_input.a.x, 0u), 30010u);
    var_1 = ~_wgslsmith_mult_u32(var_0.b.x, _wgslsmith_dot_vec2_u32(u_input.a.xx, _wgslsmith_add_vec2_u32(countOneBits(u_input.a.xy), vec2<u32>(u_input.d, var_0.a))));
    let var_2 = _wgslsmith_mod_u32(abs(0u), ~0u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d, var_0.d, var_0.d, -138f), vec4<f32>(arg_1.x, 911f, arg_0.a.x, var_0.e.b.a.x), arg_0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(530f, var_0.d, -1000f, 1017f) * vec4<f32>(827f, var_0.e.b.a.x, 106f, -767f))), select(select(vec4<bool>(true, true, arg_0.d, arg_0.d), vec4<bool>(false, true, true, var_0.c), arg_0.d), vec4<bool>(false, false, false, var_0.c), select(vec4<bool>(false, true, arg_0.d, true), vec4<bool>(var_0.e.b.d, arg_0.d, false, arg_0.d), var_0.c)))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: i32) -> f32 {
    let var_0 = Struct_2(arg_1.e.b.d, arg_1.e.c, Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(arg_1.e.b, vec4<f32>(arg_1.e.b.a.x, arg_1.d, -1166f, arg_1.e.b.a.x)))))), select(~arg_0.x, arg_1.e.b.c, true), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.e.c.c, 11412i, -55021i), ~firstTrailingBit(vec3<i32>(arg_2, arg_0.x, 2849i))), !(reverseBits(arg_1.e.b.e) <= countOneBits(arg_2)), -2147483647i));
    var var_1 = u_input.d;
    var var_2 = !(false && (all(!vec2<bool>(arg_1.c, var_0.b.d)) | arg_1.e.a));
    let var_3 = _wgslsmith_f_op_f32(-arg_1.e.b.a.x);
    var_2 = all(vec2<bool>(all(!select(vec3<bool>(var_0.b.d, true, false), vec3<bool>(arg_1.c, var_0.a, false), true)), false));
    return _wgslsmith_f_op_f32(-var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(-1i, -12681i), Struct_3(4294967295u, u_input.a.yx, true, -1055f, Struct_2(true, Struct_1(vec4<f32>(654f, -1000f, -408f, 1779f), 3253i, u_input.c, false, u_input.c), Struct_1(vec4<f32>(1212f, 640f, -171f, 883f), u_input.c, 8016i, false, u_input.c))), -37314i)) * _wgslsmith_f_op_f32(trunc(568f)))), -609f), _wgslsmith_div_u32(~u_input.d, min(37329u, u_input.a.x)), -191f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-298f - _wgslsmith_f_op_f32(select(-1000f, 1053f, u_input.c == -1i))) - _wgslsmith_f_op_f32(602f - -108f)));
}

