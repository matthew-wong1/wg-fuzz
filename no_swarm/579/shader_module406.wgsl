struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15>;

var<private> global1: array<Struct_3, 16>;

var<private> global2: i32;

var<private> global3: array<f32, 21>;

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec2<bool> {
    global0 = array<vec3<bool>, 15>();
    let var_0 = arg_1;
    let var_1 = arg_1;
    global3 = array<f32, 21>();
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, arg_1, 4294967295u, var_1), vec4<u32>(u_input.b, arg_1, var_0, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1, arg_1), vec4<u32>(u_input.b, 61888u, u_input.b, var_0))), ~(~arg_1)), 4294967295u) | 0u, 21u)];
    return vec2<bool>(true, !(!(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(112416u, 21u)], global3[_wgslsmith_index_u32(var_1, 21u)]) <= _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 21u)])))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global1 = array<Struct_3, 16>();
    global4 = array<Struct_1, 3>();
    global2 = -60282i;
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(5462u, 21u)], -1528f) - vec2<f32>(-1175f, global3[_wgslsmith_index_u32(u_input.b, 21u)])) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global3[_wgslsmith_index_u32(u_input.b, 21u)]))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 21u)], global3[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1449f, 385f))))))), select(!vec2<bool>(arg_0, arg_0 || false), vec2<bool>(arg_0, firstTrailingBit(u_input.a.x) <= firstLeadingBit(u_input.a.x)), !select(vec2<bool>(arg_0, true), func_3(1i, u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)))));
    var_0 = global1[_wgslsmith_index_u32(u_input.b, 16u)];
    return global1[_wgslsmith_index_u32(~reverseBits(reverseBits(~1u)), 16u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    global4 = array<Struct_1, 3>();
    let var_0 = func_2(true);
    global2 = ((15506i & reverseBits(u_input.a.x)) << (u_input.b % 32u)) ^ _wgslsmith_dot_vec3_i32(abs(u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -88752i), vec3<i32>(-8745i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), -1i), min(vec3<i32>(u_input.a.x, u_input.a.x, 1i) | u_input.a, u_input.a)));
    var var_1 = var_0.b.x;
    var var_2 = vec2<f32>(-367f, var_0.a.x);
    return global4[_wgslsmith_index_u32(arg_0, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 16>();
    let var_0 = -1040f;
    let var_1 = (true & select(true, false, true)) && false;
    let var_2 = Struct_2(func_1(_wgslsmith_mod_u32(~firstLeadingBit(u_input.b), ~27193u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-366f)) + _wgslsmith_div_f32(var_0, global3[_wgslsmith_index_u32(3890u, 21u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -999f) - _wgslsmith_f_op_f32(var_0 + var_0)), func_2(var_1).a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 138f, var_1))), global3[_wgslsmith_index_u32(1u, 21u)]))));
    let var_3 = !var_2.a.b.xz;
    global3 = array<f32, 21>();
    global2 = -1i;
    var var_4 = abs(-2147483647i);
    global4 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~abs(~0u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 25137u)), countOneBits(vec4<u32>(51110u, u_input.b, 30846u, u_input.b))), firstLeadingBit(~4294967295u))), ~(~u_input.b), var_2.b, _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(u_input.b, 1u), abs(56206u), u_input.b), vec3<u32>(1u, ~(0u << (u_input.b % 32u)), min(u_input.b, 4294967295u << (0u % 32u)))), _wgslsmith_div_f32(372f, -1964f));
}

