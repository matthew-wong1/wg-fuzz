struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<bool, 18> = array<bool, 18>(false, true, false, true, true, true, false, true, false, false, true, false, false, false, false, true, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    global0 = array<bool, 20>();
    var var_0 = all(select(!vec2<bool>(!global0[_wgslsmith_index_u32(64014u, 20u)], any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(u_input.d, 18u)]))), vec2<bool>(true, true), !vec2<bool>(0u >= u_input.d, true)));
    let var_1 = 0i;
    global0 = array<bool, 20>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-184f)), 1410f)));
}

fn func_3(arg_0: i32) -> i32 {
    global1 = array<bool, 18>();
    return 2147483647i;
}

fn func_2(arg_0: f32) -> vec2<bool> {
    var var_0 = Struct_2(func_3(1i) | (i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(930f - arg_0))))));
    global0 = array<bool, 20>();
    var var_1 = Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1487f, 651f)), var_0.b.x)))));
    var_0 = Struct_2(var_1.a, vec2<f32>(_wgslsmith_div_f32(1031f, _wgslsmith_f_op_f32(var_1.b.x * -231f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(trunc(-1027f))))));
    var var_2 = 0i;
    return !select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 20u)], true), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 18u)]), false), !select(!vec2<bool>(global1[_wgslsmith_index_u32(57917u, 18u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), false), vec2<bool>(!any(vec4<bool>(true, true, global1[_wgslsmith_index_u32(95227u, 18u)], global0[_wgslsmith_index_u32(52462u, 20u)])), global0[_wgslsmith_index_u32(u_input.b.x, 20u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-362f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    var var_1 = vec3<u32>(min(~(u_input.b.x ^ u_input.c), _wgslsmith_div_u32(9892u, abs(abs(u_input.a.x)))), ~max(u_input.a.x << (~u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(40659u, 49469u, u_input.b.x, u_input.b.x), u_input.a) ^ (u_input.a.x >> (u_input.b.x % 32u))), _wgslsmith_sub_u32(~0u & ~u_input.d, ~(~4294967295u)));
    let var_2 = !select(!select(func_2(1553f), select(vec2<bool>(global1[_wgslsmith_index_u32(42507u, 18u)], global1[_wgslsmith_index_u32(var_1.x, 18u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 20u)]), true), select(global0[_wgslsmith_index_u32(var_1.x, 20u)], true, true)), vec2<bool>(all(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 18u)], false, global1[_wgslsmith_index_u32(15702u, 18u)], true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(var_1.x, 18u)], false, global0[_wgslsmith_index_u32(74336u, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(32039u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], true))), global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), !(!func_2(-389f)));
    let var_3 = vec4<i32>(0i, ~(-24825i), _wgslsmith_add_i32(_wgslsmith_div_i32(-5943i, ~0i), -46697i), -abs(17807i));
    global0 = array<bool, 20>();
    let var_4 = var_2;
    global1 = array<bool, 18>();
    var var_5 = abs(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1u, _wgslsmith_add_u32(u_input.d, 1u), var_3.wy >> (_wgslsmith_add_vec2_u32(~(~u_input.a.xy), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(4294967295u, var_1.x))) % vec2<u32>(32u)));
}

