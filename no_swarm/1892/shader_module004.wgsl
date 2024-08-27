struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 19>;

var<private> global2: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    global1 = array<vec4<bool>, 19>();
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~reverseBits(u_input.a), countOneBits(~u_input.a)), countOneBits(select(~vec2<u32>(29847u, u_input.a), reverseBits(vec2<u32>(4294967295u, 38065u)), vec2<bool>(arg_0.x, false)))));
    let var_1 = _wgslsmith_f_op_f32(1268f - -1200f);
    var var_2 = Struct_1(_wgslsmith_div_u32(u_input.a, 25561u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) * var_1))), ~(-1i));
    global2 = array<vec2<bool>, 3>();
    return ~u_input.a >= 35283u;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    global2 = array<vec2<bool>, 3>();
    let var_0 = 1u;
    var var_1 = Struct_1(u_input.a, -1000f, -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(8969i, arg_1.c), countOneBits(vec2<i32>(2582i, -1i))), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.c, -3540i), vec2<i32>(arg_0, arg_0))));
    var_1 = Struct_1(var_1.a ^ 4294967295u, _wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_clamp_i32(arg_1.c, arg_0, _wgslsmith_mod_i32(~(-1i), abs(-11129i))));
    global2 = array<vec2<bool>, 3>();
    return 1f;
}

fn func_1() -> StorageBuffer {
    let var_0 = any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), !func_2(global1[_wgslsmith_index_u32(u_input.a, 19u)])));
    let var_1 = u_input.b;
    var var_2 = ~(~4294967295u) & ~u_input.a;
    var var_3 = 45496u;
    global2 = array<vec2<bool>, 3>();
    return StorageBuffer(_wgslsmith_mult_u32(~max(firstLeadingBit(u_input.a), u_input.a), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(1i, Struct_1(u_input.a, -504f, 16608i), vec4<f32>(-987f, -251f, 929f, -1411f))))) * -1047f)), u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1747f)), 870f)), -239f)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 3>();
    global2 = array<vec2<bool>, 3>();
    global1 = array<vec4<bool>, 19>();
    var var_0 = 81130u;
    global2 = array<vec2<bool>, 3>();
    global2 = array<vec2<bool>, 3>();
    global0 = 4294967295u;
    let var_1 = !all(vec2<bool>(false, select(true, true, true)));
    var var_2 = select(vec2<bool>(select(all(vec4<bool>(var_1, true, false, false)), all(vec2<bool>(false, var_1)), true) | (u_input.d == u_input.e), false), vec2<bool>(var_1 && false, any(!vec2<bool>(var_1, var_1))), vec2<bool>(var_1, select(-18879i < u_input.d, false, false)));
    let x = u_input.a;
    s_output = func_1();
}

