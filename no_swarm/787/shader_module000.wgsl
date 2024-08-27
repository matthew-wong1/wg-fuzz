struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(35771i, true, 1000f);

var<private> global1: array<vec2<bool>, 5>;

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<Struct_1, 31>;

var<private> global4: Struct_1 = Struct_1(1i, false, 564f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.c))), _wgslsmith_f_op_f32(sign(358f)));
    global2 = array<Struct_1, 4>();
    let var_1 = global0.b | true;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(global0.c - -1265f)))), global4.c) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.c, global0.c) - vec2<f32>(global0.c, -448f))))) - vec2<f32>(global4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global4.c)))));
    return global3[_wgslsmith_index_u32(~u_input.b, 31u)];
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(min(-max(global0.a, global0.a), ~12843i) | -global0.a, arg_0.a >= (-(98465i << (1u % 32u)) << ((u_input.e.x & ~31731u) % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global4.c, global0.c))));
    var var_1 = any(vec3<bool>(true, !(23807i == global0.a) != (_wgslsmith_div_f32(1000f, arg_0.c) >= _wgslsmith_f_op_f32(1000f + -1257f)), arg_0.b));
    let var_2 = var_0.b;
    var_0 = Struct_1(-38575i, true, _wgslsmith_f_op_f32(trunc(1712f)));
    var var_3 = Struct_1(44954i, 1u != _wgslsmith_dot_vec4_u32(u_input.e, max(vec4<u32>(u_input.e.x, 1u, u_input.b, u_input.b), u_input.e ^ vec4<u32>(12335u, 10003u, u_input.e.x, u_input.e.x))), -1816f);
    return 916f;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-805f * -577f) + _wgslsmith_f_op_f32(-1000f * 448f)), 112f)), global0.c)), 377f, -1325f);
    let var_1 = _wgslsmith_f_op_f32(func_3(func_2(global0.b, vec4<i32>(u_input.a, -19117i, 12416i, -2147483647i))));
    global3 = array<Struct_1, 31>();
    let var_2 = firstLeadingBit(u_input.c) ^ select(vec4<i32>(-select(global0.a, arg_0.x, global4.b), _wgslsmith_mult_i32(arg_0.x, reverseBits(global0.a)), -(arg_0.x | -19182i), func_2(true, firstLeadingBit(u_input.c)).a), vec4<i32>(max(~global4.a, _wgslsmith_mult_i32(2147483647i, global4.a)), 0i, global0.a, u_input.a), select(select(select(vec4<bool>(true, global4.b, global0.b, global0.b), vec4<bool>(false, true, global4.b, global4.b), vec4<bool>(global0.b, global0.b, true, false)), !vec4<bool>(global0.b, true, global0.b, global0.b), global4.b), !select(vec4<bool>(false, global4.b, true, global0.b), vec4<bool>(false, false, global0.b, global4.b), false), !vec4<bool>(global4.b, global4.b, global0.b, true)));
    global0 = global3[_wgslsmith_index_u32(u_input.b, 31u)];
    return ~(~u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-firstTrailingBit(69632i & u_input.d), any(select(!select(vec3<bool>(global0.b, global4.b, false), vec3<bool>(global0.b, false, global4.b), global4.b), vec3<bool>(true, global4.b, true), !(!vec3<bool>(true, global4.b, global4.b)))), -144f);
    global2 = array<Struct_1, 4>();
    let var_1 = vec2<bool>(all(global1[_wgslsmith_index_u32(u_input.e.x, 5u)]), all(!global1[_wgslsmith_index_u32(u_input.e.x, 5u)]));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(u_input.e.xxz, vec3<u32>(u_input.e.x, ~73095u, u_input.b)), u_input.b, func_1(vec3<i32>(global4.a, 57906i, 1667i))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(35687u, u_input.b), u_input.e.x) << (min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.b, u_input.b, 39044u), u_input.e), 1u) % 32u), u_input.b, u_input.e.x, ~11137u));
    let var_3 = select(select(!select(!vec3<bool>(var_0.b, global4.b, var_0.b), !vec3<bool>(var_1.x, true, true), !vec3<bool>(global0.b, var_1.x, false)), select(select(select(vec3<bool>(global0.b, false, global0.b), vec3<bool>(false, global4.b, global4.b), var_0.b), select(vec3<bool>(global0.b, global4.b, global4.b), vec3<bool>(true, true, var_0.b), vec3<bool>(false, true, false)), select(vec3<bool>(true, var_1.x, true), vec3<bool>(global0.b, var_1.x, false), true)), vec3<bool>(global0.b, global0.b, var_1.x), true), !(!vec3<bool>(false, var_1.x, false))), vec3<bool>(true || func_2(select(global0.b, false, true), reverseBits(vec4<i32>(-46533i, -1i, global0.a, -23355i))).b, -1191f == global4.c, select((var_1.x || true) || global0.b, all(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 11130u, u_input.e.x, var_2), u_input.e), 5u)]), var_1.x)), global0.a > _wgslsmith_mod_i32(countOneBits(4881i), _wgslsmith_div_i32(u_input.a, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, 44375u ^ firstTrailingBit(~u_input.b), abs(var_2) & _wgslsmith_div_u32(~40162u, 4294967295u ^ u_input.e.x)));
}

