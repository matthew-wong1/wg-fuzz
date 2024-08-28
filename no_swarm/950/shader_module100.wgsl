struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<i32> {
    let var_0 = !vec2<bool>(all(!(!vec3<bool>(false, arg_0, false))), arg_0);
    global0 = _wgslsmith_add_i32(~u_input.a.x, reverseBits(u_input.a.x | _wgslsmith_mult_i32(abs(-20250i), _wgslsmith_mult_i32(16775i, u_input.a.x))));
    let var_1 = Struct_3(vec4<i32>(_wgslsmith_mod_i32(~1i, 32765i), -min(i32(-1i) * -1i, 1i), _wgslsmith_div_i32(-27031i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 8787i), u_input.a.zy), u_input.a.x >> (0u % 32u))), ~(-658i) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(56455u, 15282u, 0u, 1u), vec4<u32>(1u, 63700u, 59519u, 23780u)) | 4294967295u) % 32u)), Struct_1(vec2<f32>(arg_1, _wgslsmith_f_op_f32(max(arg_1, 906f)))), arg_1, abs(u_input.a.x));
    var var_2 = var_1.b;
    var_2 = Struct_1(var_1.b.a);
    return abs(-vec4<i32>(1i, select(_wgslsmith_dot_vec2_i32(u_input.a.zz, var_1.a.yz), _wgslsmith_mod_i32(var_1.d, -21190i), false), -(~var_1.d), ~_wgslsmith_dot_vec3_i32(var_1.a.yyx, vec3<i32>(var_1.a.x, -16538i, -1i))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 32352i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), (u_input.a.x >> (arg_0.x % 32u)) | abs(-30655i)) ^ func_3(!all(vec3<bool>(true, false, false)), -1232f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) - vec2<f32>(arg_2, -770f)) - vec2<f32>(arg_3, -848f)))), arg_3, 2147483647i >> (_wgslsmith_sub_u32(firstTrailingBit(17375u) | ~arg_1.x, 0u) % 32u));
    var var_1 = -2147483647i;
    var_0 = Struct_3(~(-vec4<i32>(i32(-1i) * -1i, -1i, _wgslsmith_clamp_i32(0i, u_input.a.x, 1i), ~var_0.a.x)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) - -352f), _wgslsmith_f_op_f32(floor(1000f)))), 1261f, 13294i);
    var var_2 = Struct_2(any(vec4<bool>(true, true, true, true)), u_input.a.x, (vec4<i32>(-1i) * -var_0.a) & _wgslsmith_mod_vec4_i32(~abs(var_0.a), vec4<i32>(i32(-1i) * -1i, var_0.d, 59806i, min(var_0.d, var_0.d))));
    let var_3 = ~arg_0.xyz | ~arg_0.zxz;
    return 1000f;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    global0 = _wgslsmith_mult_i32(-29245i, 1i);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f) + _wgslsmith_f_op_f32(-1105f + _wgslsmith_f_op_f32(round(-886f))))) - -1489f);
    var_0 = 513f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(53790u, _wgslsmith_dot_vec3_u32(vec3<u32>(1322u, 42595u, 6288u), vec3<u32>(4294967295u, 0u, 13594u)), ~1u, ~64766u), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 4294967295u, 1u), !vec3<bool>(true, arg_0, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f - -1987f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(872f, -370f, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f) + -1697f)));
    var var_1 = u_input.a.yy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-717f - 2144f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(441f, -238f)), -424f, true))) - _wgslsmith_f_op_f32(f32(-1f) * -829f));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -249f);
    return vec3<bool>(all(!vec2<bool>(select(false, true, arg_0), all(vec4<bool>(arg_0, false, arg_0, false)))), true, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, 1i, u_input.a.zy))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1654f))));
    global0 = _wgslsmith_add_i32(0i, u_input.a.x);
    let var_1 = 3547u;
    var var_2 = Struct_4(Struct_3(-countOneBits(~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(f32(-1f) * -188f), 18236i));
    var var_3 = ~abs(abs(_wgslsmith_mod_u32(40897u, 73038u) ^ ~var_1));
    let x = u_input.a;
    s_output = StorageBuffer(27034u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-948f, -578f, _wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(-var_2.a.b.a.x))));
}

