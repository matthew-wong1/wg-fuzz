struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -46367i;

var<private> global1: array<u32, 9>;

var<private> global2: Struct_1 = Struct_1(1u);

var<private> global3: vec4<i32>;

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(~1u);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1357f, -335f) + vec2<f32>(722f, -797f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-236f, -1952f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(238f, 1894f, -2050f), _wgslsmith_f_op_vec3_f32(vec3<f32>(612f, 122f, -370f) - vec3<f32>(-2311f, -2291f, 2674f))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -827f), -1000f, -815f)), false);
    global2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(63u, 35097u), u_input.b));
    global4 = Struct_1(global2.a);
    return ~(~(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(29371u, 69329u, var_0.a)), global2.a) & 38009u));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(global1[_wgslsmith_index_u32(~(global2.a >> (~76915u % 32u)), 9u)]), _wgslsmith_div_u32(abs(_wgslsmith_mult_u32(global2.a, global1[_wgslsmith_index_u32(global2.a, 9u)])), _wgslsmith_dot_vec3_u32(u_input.c >> (vec3<u32>(78745u, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)]) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(18674u, 34462u, 0u)))) | 0u, 9316u);
    let var_1 = var_0.a;
    global4 = Struct_1(_wgslsmith_dot_vec3_u32(select(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(55018u, 7524u, 4294967295u)), ~66421u, func_3()), vec3<u32>(var_1.a ^ var_1.a, global4.a, 0u), true), abs(vec3<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global4.a, 9u)], u_input.c.x), var_0.c << (global2.a % 32u), 54502u))));
    var_0 = Struct_3(var_0.a, 0u, ~_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(global4.a, global4.a)), select(27694u, _wgslsmith_mult_u32(0u, global4.a), all(vec2<bool>(false, false)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-991f, arg_0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(665f, arg_0) * vec2<f32>(-1127f, arg_0)) - vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(-1675f, -636f)), vec2<bool>(false, false))))), vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-460f - arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -222f)))), select(any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), any(vec3<bool>(true, true, true))));
    return Struct_1(~abs(12816u));
}

fn func_1(arg_0: f32) -> i32 {
    global2 = func_2(_wgslsmith_f_op_f32(-754f + arg_0), abs(u_input.b.x) << (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, global4.a, 0u)) | ~vec4<u32>(global4.a, 1534u, 58857u, global1[_wgslsmith_index_u32(1u, 9u)]), select(vec4<u32>(11644u, u_input.b.x, 4294967295u, 1u), vec4<u32>(global4.a, 4294967295u, 49182u, 4294967295u), vec4<bool>(false, true, false, false)) | (vec4<u32>(34384u, global4.a, 1u, global2.a) | vec4<u32>(68231u, 4294967295u, global4.a, 27824u))) % 32u));
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(max(arg_0, arg_0)))), _wgslsmith_sub_u32(global2.a, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], 4294967295u))).a, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2.a, u_input.a, global1[_wgslsmith_index_u32(65393u, 9u)], 0u)), vec4<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), firstLeadingBit(global2.a), 1u, global4.a ^ global1[_wgslsmith_index_u32(global4.a, 9u)]))), global1[_wgslsmith_index_u32(1u, 9u)], reverseBits(reverseBits(abs(global1[_wgslsmith_index_u32(4294967295u, 9u)] | 12842u))), 17654u);
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(~u_input.a & max(~global2.a, ~1u)), global4.a, global1[_wgslsmith_index_u32(1u, 9u)]);
    var var_1 = vec4<i32>(_wgslsmith_add_i32(countOneBits(global3.x) >> ((max(global2.a, 13687u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 1u, global1[_wgslsmith_index_u32(56119u, 9u)]), vec3<u32>(var_0.a.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.a, 9u)], 9u)], 0u)) % 32u)) % 32u), _wgslsmith_add_i32(global3.x, 1i)), func_1(_wgslsmith_f_op_f32(231f + 586f)), global3.x, abs(max(_wgslsmith_add_i32(-2147483647i, 4020i), 1i)));
    let var_2 = u_input.a;
    let var_3 = -454f;
    global1 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-260f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3 * var_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-197f * var_3) - _wgslsmith_div_f32(var_3, var_3))), _wgslsmith_f_op_f32(-503f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3, var_3))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-var_3)))), 13953i, -2147483647i);
}

