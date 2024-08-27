struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true));

var<private> global1: array<f32, 22>;

var<private> global2: f32;

var<private> global3: vec3<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = vec3<u32>(~4294967295u, u_input.a, u_input.a);
    global1 = array<f32, 22>();
    let var_1 = 17521i;
    let var_2 = -132f;
    let var_3 = vec2<i32>(var_1, var_1);
    return -var_1;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -377f, arg_1.a))) - _wgslsmith_div_f32(1000f, 1292f));
    var var_2 = 1i;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-2157f * _wgslsmith_f_op_f32(-1719f - _wgslsmith_div_f32(_wgslsmith_div_f32(global3.x, global3.x), global1[_wgslsmith_index_u32(u_input.a & u_input.a, 22u)]))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 22u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, global1[_wgslsmith_index_u32(u_input.a, 22u)])))));
    var_1 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 22u)]);
    return 13440u;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(func_2(true, arg_0), 1i), vec2<i32>(1857i, _wgslsmith_mod_i32(-24821i, ~(-19000i))));
    global0 = array<vec4<bool>, 12>();
    let var_1 = select(vec2<u32>(_wgslsmith_div_u32(4294967295u, ~_wgslsmith_mult_u32(10328u, u_input.a)), u_input.a), vec2<u32>(u_input.a, (1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(5615u, u_input.a))) >> ((~u_input.a | 4294967295u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, 2259f))) == 582f);
    return vec3<u32>(var_1.x, func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1000f)))), arg_0, !vec2<bool>(true, arg_0.a), arg_0) & var_1.x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 12>();
    var var_0 = vec2<i32>(-1i, -2147483647i);
    var var_1 = select(vec3<u32>(~(76714u >> (u_input.a % 32u)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, 1u) | vec2<u32>(u_input.a, u_input.a)), ~_wgslsmith_add_vec2_u32(vec2<u32>(29538u, 1u), vec2<u32>(u_input.a, 124920u))), 56176u), vec3<u32>(1u, ~0u, 0u), any(!vec2<bool>(true, all(vec2<bool>(true, true)))));
    var_1 = _wgslsmith_div_vec3_u32(func_1(Struct_1(true)), reverseBits(vec3<u32>(min(0u, u_input.a), ~u_input.a, 69136u))) | ~(~vec3<u32>(1u, abs(var_1.x), abs(37522u)));
    let var_2 = Struct_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~vec4<i32>(2147483647i, -2147483647i, var_0.x | var_0.x, -var_0.x)), var_1.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a, 22u)])) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(60125u, 22u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x ^ 44891u, 22u)]), true)) - global1[_wgslsmith_index_u32(46944u, 22u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1190f, 932f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(44887u, 22u)]), global3.x, _wgslsmith_f_op_f32(250f + global1[_wgslsmith_index_u32(var_1.x, 22u)])) - vec4<f32>(global1[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_f_op_f32(1245f - global1[_wgslsmith_index_u32(u_input.a, 22u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 22u)] + global1[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_f_op_f32(global3.x - -953f)))));
}

