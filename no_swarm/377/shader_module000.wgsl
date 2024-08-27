struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    return _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~_wgslsmith_sub_vec4_u32(vec4<u32>(88862u, 111u, 7234u, global0.x), u_input.b ^ u_input.b)), countOneBits(u_input.a));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: u32) -> f32 {
    global0 = _wgslsmith_sub_vec4_u32(~u_input.b | (min(vec4<u32>(u_input.b.x, 0u, u_input.a, 4294967295u), vec4<u32>(u_input.b.x, 75205u, u_input.b.x, arg_2)) & u_input.b), vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.wy, u_input.b.yw), func_2(!arg_1, vec2<bool>(true, true), -212f), 22141u, ~arg_2 | 40811u)) ^ u_input.b;
    let var_0 = ~(~max(vec2<i32>(1i, -1i), vec2<i32>(1i, 1i)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1835f)), select(global0.zww | u_input.b.wwy, reverseBits(~vec3<u32>(global0.x, u_input.b.x, global0.x)), !(!(!arg_0.wzz))));
    let var_2 = var_1;
    global0 = vec4<u32>(50648u, 1u ^ var_1.b.x, ~firstLeadingBit(~_wgslsmith_dot_vec3_u32(var_1.b, u_input.b.www)), u_input.a | _wgslsmith_sub_u32(_wgslsmith_add_u32(var_2.b.x, arg_2) >> (var_1.b.x % 32u), arg_2));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(624f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, var_1.a)))), 771f));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(-438f, vec3<u32>(1u, ~(~(~u_input.b.x)), func_2(false, select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1798f)) - _wgslsmith_f_op_f32(-668f * 1000f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1346f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(662f - var_0.a) + -1000f), 1235f, _wgslsmith_f_op_f32(481f - var_0.a))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-277f, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, false, true), true, u_input.a)), var_0.a) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -1890f, var_0.a), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(3708f, -480f, 619f)))))))), true));
    let var_2 = var_0;
    var var_3 = var_2;
    global0 = vec4<u32>(0u & (_wgslsmith_dot_vec3_u32(u_input.b.wxw, vec3<u32>(global0.x, var_3.b.x, var_3.b.x) ^ vec3<u32>(var_2.b.x, u_input.b.x, var_0.b.x)) >> (global0.x % 32u)), 1u, var_2.b.x, var_0.b.x);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 503f) - -800f)))), _wgslsmith_mod_vec3_u32(global0.xyx, select(u_input.b.yzy & var_2.b, vec3<u32>(_wgslsmith_sub_u32(global0.x, 1807u), ~21184u, ~var_0.b.x), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = func_1();
    global0 = vec4<u32>(~firstLeadingBit(~1u), ~(~var_1.b.x), 1u, ~48005u);
    global0 = u_input.b;
    let var_2 = func_1();
    global0 = ~max(select(u_input.b >> ((vec4<u32>(var_1.b.x, global0.x, u_input.a, 4294967295u) & u_input.b) % vec4<u32>(32u)), ~(~vec4<u32>(0u, 0u, 4294967295u, 30501u)), !(26298u >= u_input.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(121218u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 32453u), vec2<u32>(var_1.b.x, var_2.b.x)), ~u_input.a, 4294967295u), u_input.b >> (vec4<u32>(var_2.b.x, global0.x, 4294967295u, 0u) % vec4<u32>(32u))));
    let var_3 = -1763f;
    global0 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(30866i, 3804i), vec2<i32>(-36515i, -13765i), vec2<bool>(true, true)), reverseBits(vec2<i32>(1i, -7600i))) ^ ~(-28145i << (0u % 32u)), -_wgslsmith_add_i32(~(-2147483647i), firstLeadingBit(-2147483647i)), select(~(-24571i), ~1i, true), _wgslsmith_mod_i32(-43531i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, -4471i), vec4<i32>(1i, 1i, 1i, 1i)))), -876f, _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1043f, _wgslsmith_f_op_f32(f32(-1f) * -1367f))) + _wgslsmith_f_op_f32(f32(-1f) * -398f))));
}

