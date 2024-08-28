struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-1i, 5347i, i32(-2147483648), 59289i, 39252i);

var<private> global1: array<Struct_2, 30>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    global0 = array<i32, 5>();
    var var_0 = global1[_wgslsmith_index_u32(1u, 30u)];
    var_0 = global1[_wgslsmith_index_u32(9357u, 30u)];
    return 721f;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_2, 30>();
    let var_0 = 10737u;
    global0 = array<i32, 5>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-855f, -452f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(161f, -1520f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(543f, -1092f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(269f, 578f) * vec2<f32>(108f, 360f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-205f, 400f), vec2<f32>(144f, 582f))))))));
    let var_2 = global1[_wgslsmith_index_u32(reverseBits(~(~24738u | _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_add_u32(arg_0, 10501u), arg_0))), 30u)];
    return var_1.x;
}

fn func_1(arg_0: u32) -> vec2<i32> {
    var var_0 = 1f;
    global1 = array<Struct_2, 30>();
    let var_1 = ~vec4<i32>(global0[_wgslsmith_index_u32(8038u & firstLeadingBit(arg_0), 5u)], u_input.b.x, 0i, -2147483647i & _wgslsmith_div_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(arg_0, 5u)]), global0[_wgslsmith_index_u32(1289u, 5u)] & -1i));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1538f * _wgslsmith_f_op_f32(func_2())))) + _wgslsmith_f_op_f32(func_3(4294967295u, Struct_1(true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1130f - 809f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1417f + _wgslsmith_div_f32(-119f, 922f)))));
    let var_2 = Struct_1(true);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    var var_0 = ~(abs(func_1(1u)) & u_input.b);
    var_0 = vec2<i32>(firstTrailingBit(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 2147483647i, global0[_wgslsmith_index_u32(6813u, 5u)], 57740i), vec4<i32>(-12586i, -1638i, 14727i, global0[_wgslsmith_index_u32(4294967295u, 5u)])))), 1i);
    global1 = array<Struct_2, 30>();
    var_0 = ~(~reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(60780i, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(1u, 5u)], 19672i)))) ^ vec2<i32>(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(97462u, 1u), 8300u), 5u)], -8887i);
    var var_1 = ~0u;
    let var_2 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(18608u, min(35289u, 59918u)), 0u) == _wgslsmith_clamp_u32(~1u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(reverseBits(4294967295u), 47924u, 0u), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(725u, 17648u)), firstLeadingBit(vec2<u32>(28601u, 10297u)))), firstLeadingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(357f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
}

