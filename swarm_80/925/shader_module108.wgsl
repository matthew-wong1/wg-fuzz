struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(-1i), Struct_3(0i), Struct_3(27615i), Struct_3(i32(-2147483648)), Struct_3(39060i), Struct_3(2147483647i), Struct_3(i32(-2147483648)), Struct_3(-25371i), Struct_3(i32(-2147483648)), Struct_3(0i), Struct_3(0i), Struct_3(0i), Struct_3(2147483647i), Struct_3(25215i), Struct_3(1i), Struct_3(1i), Struct_3(0i), Struct_3(2147483647i), Struct_3(-11046i), Struct_3(0i), Struct_3(44921i), Struct_3(32642i), Struct_3(1i), Struct_3(31333i), Struct_3(1i), Struct_3(30079i), Struct_3(0i), Struct_3(i32(-2147483648)), Struct_3(23421i), Struct_3(-1i), Struct_3(0i));

var<private> global1: vec2<f32> = vec2<f32>(700f, 642f);

var<private> global2: array<vec2<i32>, 19>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    var var_0 = !select(select(vec4<bool>(arg_0.x, !arg_0.x, select(arg_0.x, arg_0.x, true), true), select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, false, arg_0.x), false), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), arg_0.x), vec4<bool>(false, true, _wgslsmith_f_op_f32(473f + global1.x) >= _wgslsmith_f_op_f32(-global1.x), true), arg_0.x);
    var_0 = vec4<bool>(!(!var_0.x) || true, false, var_0.x, u_input.b < (~(u_input.a.x << (1u % 32u)) << (4294967295u % 32u)));
    let var_1 = ~u_input.a.x;
    var var_2 = Struct_2(_wgslsmith_mod_i32((firstTrailingBit(41283i) >> (countOneBits(52706u) % 32u)) ^ _wgslsmith_mult_i32(~(-1i), abs(-1i)), countOneBits(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, -2147483647i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-40016i, -1i, -21729i), vec3<i32>(20669i, 1i, -9315i))))));
    global0 = array<Struct_3, 31>();
    return var_2.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~(~var_1), 4294967295u), u_input.a.xw) % 32u);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_4(true, arg_1.a, func_3(!select(select(arg_2.a.wxx, arg_2.a.wzz, vec3<bool>(arg_2.d, true, false)), vec3<bool>(arg_2.d, true, false), select(arg_2.a.xzz, vec3<bool>(arg_2.d, arg_2.d, true), arg_2.b))), -49766i, Struct_2(-_wgslsmith_add_i32(~18957i, min(arg_1.a, -1i))));
    var_0 = Struct_4(arg_2.d, -2147483647i, func_3(!arg_2.a.xww), -var_0.d, var_0.e);
    global2 = array<vec2<i32>, 19>();
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(127f, _wgslsmith_f_op_f32(trunc(arg_0)))))), -2850f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-184f, arg_0)))))));
    global1 = _wgslsmith_f_op_vec2_f32(step(var_1.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.xz + var_1.yz)))))));
    return vec2<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(abs(global1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-138f + global1.x) - var_1.x)), arg_0)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    global2 = array<vec2<i32>, 19>();
    let var_0 = ~(u_input.b & (u_input.a.x << (22354u % 32u)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(global1.x, Struct_3(1i), Struct_1(vec4<bool>(false, false, arg_0, true), !vec3<bool>(arg_0, arg_1.x, arg_1.x), ~u_input.a.x, arg_1.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(442f, global1.x))))));
    global1 = vec2<f32>(-154f, 106f);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(-3598f, -205f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(global1.x, global1.x)), global1.x)))));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(global1.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1359f - -1753f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2297f), _wgslsmith_f_op_f32(func_1(true, vec3<bool>(true, false, true), -15692i)))))), vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.zx, countOneBits(u_input.a.yy)), u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, 28399u), vec3<u32>(u_input.a.x, u_input.a.x, 1u) ^ u_input.a.xxz), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 28092u, 0u), u_input.a.yyx)), ~u_input.a.x));
}

