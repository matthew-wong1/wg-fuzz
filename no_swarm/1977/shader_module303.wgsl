struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(25143u, 4294967295u, 0u, 4294967295u);

var<private> global1: array<i32, 21> = array<i32, 21>(-1i, 13250i, -31415i, -9534i, 0i, 48701i, 2147483647i, 70983i, -13327i, -1i, 1i, -22139i, -1i, 11518i, -61314i, 1i, -1i, -1i, -1i, i32(-2147483648), -29578i);

var<private> global2: array<f32, 6>;

var<private> global3: u32 = 35915u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    let var_0 = 39782u;
    let var_1 = Struct_4(3287u, true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1125f + global2[_wgslsmith_index_u32(var_0, 6u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(3926u, 6u)])), 341f))))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(39532u, 6u)] * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~var_0, 6u)] - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 6u)] + 713f))))));
    let var_2 = Struct_5(var_1, var_1, _wgslsmith_f_op_f32(var_1.d * global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0, ~(~0u), firstTrailingBit(var_0 & var_1.a)), 6u)]), ~(~(global0.x ^ var_1.a)));
    global2 = array<f32, 6>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.c.wz));
    return vec2<bool>(any(!(!(!vec2<bool>(false, arg_0)))), false);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global0 = ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(61830u, arg_0.x), global0.x, ~_wgslsmith_div_u32(global0.x, arg_0.x)), ~global0.x, ~arg_0.x, 15496u);
    let var_0 = !(!func_2(false));
    global2 = array<f32, 6>();
    global3 = global0.x;
    global3 = arg_0.x;
    return Struct_1(!(~(~4294967295u) <= _wgslsmith_dot_vec2_u32(global0.zy | vec2<u32>(0u, 28882u), _wgslsmith_div_vec2_u32(arg_0.zy, global0.yw))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(758f * 1000f), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global0.x), 6u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-930f, 130f) - vec2<f32>(global2[_wgslsmith_index_u32(global0.x, 6u)], -2004f)))))), vec2<bool>(all(vec3<bool>(false, arg_0.a == false, true)), arg_0.a)));
    global2 = array<f32, 6>();
    var var_1 = Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global0.x, global0.x)), vec2<u32>(~global0.x, 1u)), 6u)], -1000f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 6u)]), var_0.x));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x | global0.x, 1u, 22593u), countOneBits(~countOneBits(global0.ywz)) << (global0.wyx % vec3<u32>(32u)));
    global0 = ~vec4<u32>(77243u & abs(var_2.x), global0.x | select(3663u, ~1u, arg_0.a), 0u, ~(~67326u));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_dot_vec3_u32(~vec3<u32>(firstLeadingBit(global0.x), global0.x, global0.x), ~vec3<u32>(_wgslsmith_div_u32(23498u, 1u), ~global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 10756u), vec2<u32>(global0.x, 4294967295u)))), true, vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(max(1u, global0.x)), 6u)] - _wgslsmith_f_op_f32(select(-1661f, 267f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 6u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 6u)] + -1114f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(110539u, 6u)])), _wgslsmith_f_op_f32(-697f + _wgslsmith_f_op_f32(func_3(func_1(vec4<u32>(45654u, 115659u, 0u, 17269u)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(714f)), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(firstLeadingBit(10699u) << (select(global0.x, global0.x, true) % 32u), 6u)], global2[_wgslsmith_index_u32(global0.x, 6u)])), true)));
    global0 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(global0.x, 1u, var_0.a, ~countOneBits(60449u))), select(vec4<u32>(global0.x, _wgslsmith_add_u32(~var_0.a, abs(global0.x)), ~var_0.a, (global0.x >> (global0.x % 32u)) & 1u), vec4<u32>(max(global0.x, _wgslsmith_add_u32(7488u, var_0.a)), 25286u, ~62870u, ~(~1u)), vec4<bool>(true, false && !var_0.b, all(!vec2<bool>(var_0.b, true)), func_2(var_0.b).x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.a, countOneBits(_wgslsmith_dot_vec3_u32(~global0.ywy, vec3<u32>(var_0.a, 42189u, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1608f)), var_0.c.yy);
}

