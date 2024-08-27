struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(722f, 545f), vec2<f32>(-1804f, 206f), vec2<f32>(1596f, -630f), vec2<f32>(219f, -2186f), vec2<f32>(-1078f, 963f), vec2<f32>(1000f, -378f), vec2<f32>(-592f, -309f), vec2<f32>(443f, -1309f), vec2<f32>(-1843f, 363f), vec2<f32>(-787f, 266f));

var<private> global1: vec2<i32>;

var<private> global2: array<vec3<u32>, 25>;

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = arg_0;
    global1 = vec2<i32>(1i, u_input.c);
    let var_1 = arg_0;
    var_0 = var_1;
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1060f, arg_1))), _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-var_1.a.x)))), var_0.a.x);
    return 9426u;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> u32 {
    var var_0 = vec4<bool>(true, true, true, true);
    let var_1 = arg_0.b.xyw;
    let var_2 = all(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(u_input.b.x | 76593u, func_3(Struct_3(vec3<f32>(840f, 347f, arg_2.a.x)), arg_2.a.x, Struct_2(9702u)))), _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(arg_0.b.yz, u_input.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(~(1u & var_1.x), _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.a, u_input.b.x), abs(u_input.a)), 1u), ~vec3<u32>(firstLeadingBit(25336u), ~0u, ~u_input.b.x)));
    var var_4 = _wgslsmith_sub_i32(30704i, 0i);
    return 4294967295u;
}

fn func_1() -> u32 {
    global0 = array<vec2<f32>, 10>();
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x))), -329f) + global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(func_2(Struct_4(u_input.a, vec4<u32>(1u, 37329u, 64117u, 4294967295u)), vec3<bool>(false, true, true), Struct_3(vec3<f32>(1817f, 1215f, global3.x)), false)), u_input.a << (abs(0u) % 32u)) ^ _wgslsmith_mod_u32(1u, 71169u), 10u)]);
    global2 = array<vec3<u32>, 25>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.x - global3.x))) - global3.x)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(274f, -676f, _wgslsmith_f_op_f32(floor(-1102f))))), vec2<u32>(1u, ~(~_wgslsmith_add_u32(34811u, 62219u))));
    return ~u_input.b.x;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> vec2<f32> {
    global3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-223f * -274f), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.x, arg_2)), -707f))), arg_3.a.x));
    var var_0 = Struct_1(vec3<bool>((false & !arg_3.a.x) & (_wgslsmith_f_op_f32(floor(arg_2)) <= _wgslsmith_f_op_f32(global3.x + arg_2)), arg_3.a.x, true), 4294967295u);
    let var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1526f)), _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), -382f))), select(true, false, arg_0.a <= ~1u)))));
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(213f, _wgslsmith_f_op_f32(trunc(1164f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(~u_input.a ^ ~(u_input.a | 4294967295u), countOneBits(~min(10119u, u_input.b.x))), u_input.b.x, 4294967295u, 10421u);
    global0 = array<vec2<f32>, 10>();
    global3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_4(func_1(), var_0), vec2<bool>(any(vec2<bool>(false, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(155f * global3.x)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), 4294967295u ^ u_input.b.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 466f)) * global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 38593u, 4294967295u), 10u)]) - global0[_wgslsmith_index_u32(~(~u_input.a), 10u)])), global0[_wgslsmith_index_u32(var_0.x, 10u)]));
    let var_1 = u_input.a;
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, _wgslsmith_f_op_f32(min(global3.x, global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1578f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, global3.x, -1000f), _wgslsmith_div_vec3_f32(vec3<f32>(911f, global3.x, 1337f), vec3<f32>(-335f, -1515f, global3.x)), var_1 <= var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -274f, 2103f) + vec3<f32>(global3.x, -1321f, -130f))), select(select(true, false, false), true, any(vec3<bool>(true, false, true)))))), var_0.wy);
    let var_3 = reverseBits(reverseBits(min(vec4<u32>(4294967295u, _wgslsmith_add_u32(var_0.x, 0u), ~4294967295u, ~var_0.x), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_1, 1u, var_0.x, 57945u), var_0)))));
    let var_4 = -2147483647i;
    var var_5 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(742f, -1866f, var_2.a.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, var_2.a.x, -332f)))))), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(5559i, global1.x), 14910i);
}

