struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    return _wgslsmith_f_op_f32(-1650f * arg_1);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = Struct_1(arg_0.a);
    global0 = array<bool, 20>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a));
    global0 = array<bool, 20>();
    var var_2 = vec4<i32>(select(u_input.a, ~u_input.a, true), _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 15355i), abs(vec3<i32>(u_input.a, -2147483647i, u_input.a)))), max(u_input.a, u_input.a), ~_wgslsmith_mod_i32(u_input.a | 0i, u_input.a) << (firstTrailingBit(~_wgslsmith_add_u32(1589u, 0u)) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(all(vec2<bool>(arg_2, false)), true), -1000f, Struct_1(-1000f), ~(~max(vec2<u32>(66242u, 138936u), vec2<u32>(44569u, 7964u))))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = ~(~(~11518i));
    let var_1 = ~countOneBits(~(~(~vec3<u32>(0u, 38815u, 69256u))));
    global0 = array<bool, 20>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(-686f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0)), -577f)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_1(Struct_1(-1000f), arg_1, global0[_wgslsmith_index_u32(var_1.x, 20u)])));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - var_3.a)), _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(202f + arg_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(631f, var_3.a, arg_0))))), !any(!vec3<bool>(true, global0[_wgslsmith_index_u32(15584u, 20u)], true)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_3, Struct_1(-2308f), global0[_wgslsmith_index_u32(var_1.x, 20u)])))), arg_2.a, _wgslsmith_f_op_f32(func_1(Struct_1(1320f), var_3, !global0[_wgslsmith_index_u32(reverseBits(1u), 20u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~_wgslsmith_mod_u32(4294967295u, 8963u), 1u), ~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(func_1(Struct_1(-944f), Struct_1(981f), global0[_wgslsmith_index_u32(49656u, 20u)])), Struct_1(511f), Struct_1(-350f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(877f, 663f, 658f) - vec3<f32>(1988f, 112f, -1259f)))))));
}

