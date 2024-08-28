struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(-53200i, 0i, 1i), vec3<i32>(-17566i, -8017i, i32(-2147483648)), vec3<i32>(-23769i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), -25935i, -33507i), vec3<i32>(27349i, 0i, -36426i), vec3<i32>(2147483647i, 1i, -18786i), vec3<i32>(16500i, i32(-2147483648), 1i), vec3<i32>(-38813i, 0i, 8013i), vec3<i32>(20303i, -21182i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(-73785i, i32(-2147483648), 0i));

var<private> global1: array<vec4<u32>, 22>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> i32 {
    let var_0 = false;
    global1 = array<vec4<u32>, 22>();
    global1 = array<vec4<u32>, 22>();
    var var_1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(max(u_input.a, u_input.a), 16334u, u_input.a, ~22933u), vec4<u32>(_wgslsmith_sub_u32(u_input.e.x, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), u_input.e.zy), _wgslsmith_mult_u32(1u, 38813u), ~43540u)) ^ u_input.e;
    let var_2 = ~1u > u_input.e.x;
    return u_input.d.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(vec3<f32>(-702f, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(181f + _wgslsmith_f_op_f32(1311f * arg_1.a.x)))), ~reverseBits(arg_1.b ^ 0i) & -2147483647i);
    var var_1 = ~firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(arg_0.x, 22u)], u_input.e), u_input.e) >> (_wgslsmith_clamp_vec4_u32(reverseBits(u_input.e), vec4<u32>(10309u, arg_0.x, u_input.a, arg_0.x), vec4<u32>(1u, arg_0.x, 26866u, 44810u)) % vec4<u32>(32u)));
    var_1 = ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.x | 46852u, arg_0.x), _wgslsmith_mult_u32(~arg_0.x, var_1.x >> (0u % 32u))), _wgslsmith_clamp_u32(reverseBits(u_input.e.x) << (select(0u, u_input.e.x, false) % 32u), 0u, var_1.x), var_1.x, 15737u);
    global0 = array<vec3<i32>, 11>();
    global1 = array<vec4<u32>, 22>();
    return arg_1;
}

fn func_1() -> vec3<f32> {
    global0 = array<vec3<i32>, 11>();
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(305f, 221f)))), 1683f, 186f), u_input.d.x);
    let var_1 = func_3(vec2<u32>(4294967295u, _wgslsmith_div_u32(u_input.a, u_input.a)), Struct_1(var_0.a, 0i), _wgslsmith_add_i32(func_2(), -38403i));
    global0 = array<vec3<i32>, 11>();
    var var_2 = var_1;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, u_input.b, -5088i), u_input.d)), -func_2()));
    global1 = array<vec4<u32>, 22>();
    global1 = array<vec4<u32>, 22>();
    var var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_1.b & ~(-34379i), func_2() & _wgslsmith_dot_vec3_i32(~u_input.d, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, -34577i), u_input.d))));
}

