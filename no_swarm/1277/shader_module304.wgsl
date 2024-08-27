struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4>;

var<private> global1: array<vec2<bool>, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<u32> {
    global1 = array<vec2<bool>, 25>();
    let var_0 = Struct_1(max(reverseBits(~_wgslsmith_add_i32(1i, u_input.a.x)), 0i), u_input.a.x, ~vec3<u32>(35225u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.b, u_input.b), u_input.c), u_input.b, 27997u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, 104110u), vec3<u32>(_wgslsmith_sub_u32(~0u, ~0u), u_input.c.x, _wgslsmith_add_u32(0u, select(62883u, u_input.d.x, false)))));
    var var_1 = select(global1[_wgslsmith_index_u32(~(0u ^ _wgslsmith_mod_u32(0u, 17093u << (u_input.b % 32u))), 25u)], vec2<bool>(true, true), any(vec2<bool>(true, true)));
    var var_2 = -(~6961i);
    return firstLeadingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(30059u, 0u ^ u_input.d.x, var_0.c.x, 1u), select(vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, u_input.d.x), select(u_input.c, u_input.c, vec4<bool>(var_1.x, var_1.x, false, var_1.x)), var_1.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: i32) -> vec4<f32> {
    var var_0 = reverseBits(abs(~func_3()));
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(~abs(2147483647i), _wgslsmith_div_i32(2147483647i, arg_2)), arg_2);
    global1 = array<vec2<bool>, 25>();
    var var_2 = vec3<i32>(-8740i, 1i, 79142i);
    global1 = array<vec2<bool>, 25>();
    return arg_0;
}

fn func_1() -> u32 {
    global1 = array<vec2<bool>, 25>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, -1554f, 262f, -1107f)), vec4<f32>(-1000f, -936f, 2522f, -2149f))), vec2<i32>(-6412i, _wgslsmith_sub_i32(55218i, -1520i)), u_input.a.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-621f + _wgslsmith_f_op_f32(-939f + -2230f)), -839f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1796f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2257f, 1f, _wgslsmith_f_op_f32(180f + 548f), 623f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-879f, var_0.x, var_0.x, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-185f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(205f, 609f, -264f, 721f), vec4<f32>(661f, var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2047f, 428f, var_1.x, -340f))))))), !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), true)));
    return ~reverseBits(_wgslsmith_sub_u32(69288u, u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.d.x, ~(~(0u & u_input.b)), ~16074u), u_input.b);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

