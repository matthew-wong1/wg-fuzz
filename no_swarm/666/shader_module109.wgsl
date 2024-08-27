struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: Struct_1;

var<private> global3: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> u32 {
    global3 = u_input.b;
    global2 = global1[_wgslsmith_index_u32(40680u, 7u)];
    global0 = array<bool, 2>();
    global1 = array<Struct_1, 7>();
    global0 = array<bool, 2>();
    return min(~global2.d, abs(~min(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_mod_u32(0u, global2.d))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~0u, 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - 821f) * _wgslsmith_f_op_f32(round(global2.c.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(158f - global2.c.x), 1472f, _wgslsmith_f_op_f32(ceil(global2.b)))))), reverseBits(~global2.d));
    let var_1 = var_0;
    var var_2 = !(false || !any(!vec2<bool>(true, global0[_wgslsmith_index_u32(10981u, 2u)])));
    global1 = array<Struct_1, 7>();
    global3 = reverseBits(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.e.x, u_input.e.x), ~u_input.b));
    return ~(~reverseBits(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(37694u, var_1.d, 1584u, u_input.c.x), vec4<u32>(1105u, 4294967295u, 0u, var_1.d)))));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(u_input.e >> (vec4<u32>(~(~u_input.c.x), u_input.d.x, func_2(), _wgslsmith_clamp_u32(28185u, global2.d, 0u) | func_3(0u)) % vec4<u32>(32u)), -select(vec4<i32>(_wgslsmith_mod_i32(u_input.e.x, u_input.b), u_input.e.x, _wgslsmith_mod_i32(u_input.e.x, u_input.e.x), max(-1i, u_input.b)), min(u_input.e, u_input.e), any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(global2.d, 2u)], global2.a, false), vec4<bool>(global2.a, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], false, false), global2.a))));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~30262u ^ u_input.c.x, firstLeadingBit(22462u)), _wgslsmith_div_u32(global2.d, global2.d), _wgslsmith_clamp_u32(1u | ~(u_input.d.x >> (global2.d % 32u)), abs(global2.d) ^ 22559u, ~(~24483u)));
    var_1 = 1u;
    let var_2 = vec3<bool>(1139f <= _wgslsmith_f_op_f32(-global2.b), false, any(select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(global2.d, 2u)], global2.a)), vec3<bool>(3522u > global2.d, 4294967295u > global2.d, global2.a), vec3<bool>(u_input.a.x < u_input.e.x, global0[_wgslsmith_index_u32(4294967295u, 2u)], any(vec2<bool>(global2.a, false))))));
    global3 = -firstTrailingBit(~countOneBits(0i));
    return -54812i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(func_1(), firstLeadingBit(reverseBits(~0i)), abs(2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2.d), abs(u_input.c))), vec4<u32>(global2.d, firstTrailingBit(global2.d), u_input.c.x, global2.d));
}

