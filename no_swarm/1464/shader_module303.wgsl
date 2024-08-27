struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false));

var<private> global1: array<u32, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(738f, arg_0))), _wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, _wgslsmith_f_op_f32(select(arg_0, -1212f, false))))))));
    let var_1 = Struct_1(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(vec4<u32>(~1u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(29177u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], 12u)], 1u, 92192u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31819u, 12u)], 12u)], 12u)], 12u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(108463u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(17856u, 12u)], global1[_wgslsmith_index_u32(17545u, 12u)])), 12u)], ~1u), ~(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55613u, 12u)], 12u)], 12u)], global1[_wgslsmith_index_u32(12282u, 12u)], 41140u, 56599u)), _wgslsmith_clamp_u32(0u, 12146u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]) == select(1u, 46032u, false)) & vec4<u32>(~firstLeadingBit(4294967295u), abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)]), firstLeadingBit(1u), firstTrailingBit(global1[_wgslsmith_index_u32(1u, 12u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)])), vec4<f32>(var_0.x, var_0.x, -808f, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, !any(global0[_wgslsmith_index_u32(35811u, 17u)])))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * 861f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * var_0.x))), _wgslsmith_f_op_f32(min(991f, -565f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, arg_0, -1976f, var_1.c.x), var_1.c)))) + var_1.c));
    let var_3 = var_1;
    let var_4 = i32(-1i) * -1i;
    return _wgslsmith_div_u32(_wgslsmith_add_u32(56355u, 1u), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_3.b.x, var_1.b.x, var_3.b.x, var_3.b.x)), _wgslsmith_add_vec4_u32(var_3.b, vec4<u32>(_wgslsmith_div_u32(var_3.b.x, 57503u), _wgslsmith_add_u32(72831u, 1u), 1u, var_3.b.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> i32 {
    global1 = array<u32, 12>();
    var var_0 = func_2(1329f);
    var var_1 = !(!(!(arg_0.x | (arg_0.x || arg_0.x))));
    var var_2 = -2147483647i << (abs(_wgslsmith_div_u32(~arg_1, _wgslsmith_sub_u32(arg_1, 0u)) ^ ~arg_1) % 32u);
    global0 = array<vec4<bool>, 17>();
    return 18944i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 17>();
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    global0 = array<vec4<bool>, 17>();
    var var_0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_u32(abs(30069u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 12u)], 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(43932u, 12u)], 4294967295u)))), vec3<i32>(11796i, -2147483647i, 0i), 4294967295u, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x >> (2636u % 32u), func_1(vec2<bool>(false, true), global1[_wgslsmith_index_u32(0u, 12u)]), _wgslsmith_mod_i32(3894i, -45612i), ~1i), select(-vec4<i32>(u_input.a.x, 1i, var_0.x, u_input.a.x), vec4<i32>(var_0.x, 23959i, var_0.x, 2147483647i) | vec4<i32>(u_input.a.x, var_0.x, var_0.x, var_0.x), select(global0[_wgslsmith_index_u32(1u, 17u)], vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 17u)]))) ^ vec4<i32>(12645i, u_input.a.x, u_input.a.x ^ _wgslsmith_add_i32(14256i, u_input.a.x), reverseBits(~28168i)));
}

