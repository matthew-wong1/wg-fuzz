struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1579f;

var<private> global1: array<Struct_1, 30>;

var<private> global2: vec3<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 30>();
    var var_0 = true;
    global0 = 115f;
    global2 = vec3<u32>(arg_0.a, 4294967295u & (~18488u | _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(23777u, 1u, 30489u, 13344u), vec4<u32>(arg_0.a, 17127u, arg_0.a, global2.x)), vec4<u32>(25263u, 62599u, arg_0.a, arg_0.a) | vec4<u32>(global2.x, arg_0.a, arg_0.a, arg_0.a))), 7084u);
    global1 = array<Struct_1, 30>();
    return select(!vec2<bool>(false, all(vec3<bool>(true, true, true))), vec2<bool>(false, true), vec2<bool>(true, _wgslsmith_f_op_f32(trunc(1f)) < _wgslsmith_f_op_f32(f32(-1f) * -438f)));
}

fn func_1() -> Struct_1 {
    var var_0 = global2.x;
    let var_1 = Struct_1(~(37218u << (0u % 32u)));
    global0 = 148f;
    global1 = array<Struct_1, 30>();
    var var_2 = !func_2(Struct_1(global2.x));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.x, ~var_1.a), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -293f;
    let var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_2 = ~vec2<i32>(~_wgslsmith_sub_i32(0i, ~(-16702i)), _wgslsmith_mult_i32(0i, -(u_input.a >> (global2.x % 32u))));
    var var_3 = Struct_1(1u);
    var var_4 = ~4294967295u;
    var var_5 = 4294967295u;
    var var_6 = reverseBits(~countOneBits(abs(vec4<i32>(var_2.x, u_input.a, u_input.a, u_input.a))));
    var var_7 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, ~(_wgslsmith_add_u32(var_3.a, ~0u) ^ var_7.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), var_0))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_3.a, 0u, var_7.a, 1u), ~vec4<u32>(5409u, 142111u, global2.x, global2.x), ~(~vec4<u32>(var_3.a, global2.x, 18571u, 4294967295u))), reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_7.a, var_3.a, global2.x), vec4<u32>(4294967295u, var_3.a, 23723u, 1u))), firstTrailingBit(~select(vec4<u32>(var_7.a, 4294967295u, var_3.a, 1u), vec4<u32>(2676u, 15317u, var_3.a, var_7.a), var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(967f, 2127f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, var_0)))))));
}

